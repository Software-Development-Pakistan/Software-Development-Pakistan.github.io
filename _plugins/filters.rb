module Stackbit

  module Filters

    def if(input, if_true, if_false)
        return input ? if_true : if_false
    end

    def starts_with(input, str)
      return input.start_with?(str)
    end

    def ends_with(input, str)
      return input.end_with?(str)
    end

    def trim(input, charset)
      self.trim_start(input, charset)
      self.trim_end(input, charset)
    end

    def trim_start(input, charset)
      if !charset
        input.lstrip
      end
      input.each_char.with_index do |char, index|
        next if charset.chars.include?(char)
        break input[index..-1]
      end
    end

    def trim_end(input, charset)
      if !charset
        input.rstrip
      end
      input.reverse.each_char.with_index do |char, index|
        next if charset.chars.include?(char)
        break input[0, input.length - index]
      end
    end

    def trim_slash(input)
      return input.sub(/^\/+/, '').sub(/\/+$/, '')
    end

    def path_join(*path_parts)
      return File.join(*path_parts)
    end

    def link(input)
      relative_path = input.strip

      return relative_path if relative_path.start_with?("#")

      site = @context.registers[:site]

      site.each_site_file do |item|
        return item.url if item.relative_path == relative_path
        # This takes care of the case for static files that have a leading /
        return item.url if item.relative_path == "/#{relative_path}"
      end

      raise ArgumentError, <<~MSG
        Could not find document '#{relative_path}' in 'link' filter.

        Make sure the document exists and the path is correct.
      MSG
    end

    def is_empty(input)
      if input.respond_to?(:empty?)
        return input.empty?
      else
        return !input
      end
    end

    def is_not_empty(input)
      if input.respond_to?(:empty?)
        return !input.empty?
      else
        return !!input
      end
    end

    def replace_regexp(input, pattern, replacement)
      regexp = /#{pattern}/
      return input.gsub(regexp, replacement)
    end

    def sprintf(format, argument)
      return Object.send(:sprintf, format, argument)
    end

    def get_page(page_path)

      site = @context.registers[:site]
      relative_page_path = trim_slash(page_path)
      relative_page_parts = relative_page_path.split('/')

      if site.collections.key?(relative_page_parts[0])
        if relative_page_parts.length > 2
          raise ArgumentError, "get_page can not have sub-folders inside collection folder, received #{page_path}"
        end
        return site.collections[relative_page_parts[0]].docs.find do |doc|
          if doc.data.key?("slug") && doc.data.key?("ext")
            doc.data["slug"] + doc.data["ext"] == relative_page_parts[1]
          else
            doc.basename == relative_page_parts[1]
          end
        end
      else
        return site.pages.find do |page|
          page_url = trim_slash(page.url)
          page_url == relative_page_path
        end
      end

    end

    def get_pages(url_path)

      site = @context.registers[:site]

      url_path = trim_slash(url_path)
      url_path_parts = url_path.split('/')

      if url_path_parts.length > 0 && site.collections.key?(url_path_parts[0])
        if url_path_parts.length != 1
          raise ArgumentError, "get_pages can not have sub-folders inside collection folder, received #{url_path}"
        end
        return site.collections[url_path_parts[0]].docs
      else
        return site.pages.select do |page|
          page_url = trim_slash(page.url)
          page_url_parts = page_url.split('/')
          page_url_parts.length > url_path_parts.length && page_url.start_with?(url_path)
        end
      end

    end

    def get_data(data_path)

      site = @context.registers[:site]
      data = site.data

      data_path = data_path.sub(File.extname(data_path), '')
      path_parts = data_path.split('/').reject { |p| p.empty? }
      if path_parts.first === '_data'
        path_parts.shift
      end

      for part in path_parts
         if data.has_key? part
           data = data[part]
         else
           return nil
         end
      end

      return data

    end

    class Cycler < Liquid::Drop

      def initialize(values)
        @values = values
        @counter = 0
      end

      def next
        res = @values[@counter % @values.length]
        @counter += 1
        return res
      end

    end

    def cycler(input, delimiter = " ")
        return Cycler.new(input.split(delimiter, -1))
    end

  end

end

Liquid::Template.register_filter(Stackbit::Filters)
