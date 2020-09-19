Jekyll::Hooks.register :site, :pre_render do |site, payload|
  site.pages.each do |page|
    page.data["rel_dir"] = File.dirname(page.path)
    page.data["basename"] = File.basename(page.path)
    page.data["filename"] = File.basename(page.path, ".*")
  end
  site.posts.docs.each do |post|
    post.data["rel_dir"] = File.dirname(post.path)
    post.data["basename"] = File.basename(post.path)
    post.data["filename"] = File.basename(post.path, ".*")
  end
end
