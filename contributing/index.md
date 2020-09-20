---
title: Contributing Guidelines
layout: page
---

## General guidelines.

Contributions are heavily appreciated. It's the community that makes the group the truly spirited and unique group that it is.

1. Go ahead and make some edit in a file where you think something additional can be added.
2. Make that into a Pull Request so that the maintainers can review and approve or reject accordingly.
3. Want to start a discussion about something that is missing? Make an issue! If the idea is helpful to everyone, we'll consider adding it into the main master repository.
4. Each section has its own contribute template that needs to be followed. So if you would like to add a field under `Learning Resources`, `Career Paths`, then go ahead the copy the format from their `README.md` and you can start writing
5. The MISC folder in `Learning Resouces` is for very niche topics, not exactly whole fields.

## Sending a Pull Request

To get started with sending a pull request, make sure you have `git` installed.

### Linux User

If you're a linux user, the most general way to install git is `sudo <package-manager> install git`.

### Windows User

Setup `git bash` on your machine. You can find the installation here on [Git SCM](https://git-scm.com/downloads).

### Clone the Repository

Run the below script,

```bash
git clone https://github.com/Software-Development-Pakistan/Software-Development-Pakistan.github.io.git
```

### Navigate to a new branch

Make sure to NOT commit directly to the master, and remember that you are trying to open up a `pull request` ( PR ). 

For that, move to a separate, new branch, using the below syntax.

```bash
git checkout -b your-branch-name`
```

The better you name your branch, the more easier it for us to quickly understand what you attempted to change.
Good naming conventions for branches in this repository can be,
1. Start with a verb ( add, change, made, create etc)
2. Follow the next word with the name of the file where the change was made
3. Or if a file/folder was created, you can use something like this `create file/dir new-career-paths`, respectively

### Make Changes

Change and commit the content as you think will be helpful for the community. Make sure you use meaningful commit messages.
The process goes as following after you make changes and save files.

- Check what you changed, `git status` shows the files you changed and `git diff` shows the difference.
- Add and commit `git commit -am "Add a career path for SQA`
- Push changes: `git push`

### Send a pull request

Navigate to your branch and Click `Pull Request`.

## Sending content directly.

If this seem like a lot of work, then you can also contribute by just sending the content to one of the repository maintainers. The list of maintainers is [here]({{site.url}}/#Maintainers)

## FAQ

_Q:_ What's the difference between `Career Paths` and `Learning Resources`?
_A:_ Just that `Learning Resources` is supposed to have quick references and links to other places for information and learning, and `Career Paths` is supposed to serve as a guide for something completely new to break into the field.
