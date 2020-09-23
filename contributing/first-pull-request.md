---
title: First Contributions
layout: page
---

It's hard. It's always hard the first time you do something. Especially when you are collaborating, making mistakes isn't a comfortable thing. Everyone wants to simplify the way new open-source contributors learn & contribute for the first time.

Reading articles & watching tutorials can help, but what's better than actually doing the stuff in a practice environment? This guide aims at providing guidance & simplifying the way beginners make their first contribution. If you are looking to make your first contribution, follow the steps below.

![fork this repository](../assets/img/fork.png)

If you don't have git on your machine, [install it](https://help.github.com/articles/set-up-git/).

## Fork this repository

Fork the [First Contributions](https://github.com/Software-Development-Pakistan/Software-Development-Pakistan.github.io) repository by clicking on the fork button on the top of the page.
This will create a copy of this repository in your account.

## Clone the repository

![Clone this repository](../assets/img/clone.png)

Now clone the forked repository to your machine. Go to your GitHub account, open the forked repository, click on the code button and then click the _copy to clipboard_ icon.

Open a terminal and run the following git command:

```
git clone "url you just copied"
```

where "url you just copied" (without the quotation marks) is the url to this repository (your fork of this project). See the previous steps to obtain the url.

![Copy URL to Clipboard](../assets/img/copy-to-clipboard.png)

For example:

```
git clone https://github.com/this-is-you/Software-Development-Pakistan.github.io.git
```

where `this-is-you` is your GitHub username. Here you're copying the contents of the first-contributions repository on GitHub to your computer.

## Create a branch

Change to the repository directory on your computer (if you are not already there):

```
cd first-contributions
```

The below is to make sure to NOT commit directly to the master.
Remember that you are trying to open up a `pull request` ( PR ).
Now create a branch using the `git checkout` command:

```
git checkout -b <add-your-new-branch-name>
```

For example:

```
git checkout -b add-alonzo-church
```

(The name of the branch does not need to have the word _add_ in it, but it's a reasonable thing to include because the purpose of this branch is to add your name to a list.)

The better you name your branch, the more easier it for us to quickly understand what you attempted to change.
Good naming conventions for branches in this repository can be,

1. Start with a verb ( add, change, made, create etc)
2. Follow the next word with the name of the file where the change was made
3. Or if a file/folder was created, you can use something like this `create file/dir new-career-paths`, respectively

## Make necessary changes and commit those changes

Now open `Contributors.md` file in a text editor, add your name to it. Don't add it at the beginning or end of the file. Put it anywhere in between. Now, save the file.

![git status](../assets/img/git-status.png)

If you go to the project directory and execute the command `git status`, you'll see there are changes.

Add those changes to the branch you just created using the `git add` command:

```
git add Contributors.md
```

Now commit those changes using the `git commit` command:

```
git commit -m "Add <your-name> to Contributors list"
```

replacing `<your-name>` with your name.

## Push changes to GitHub

Push your changes using the command `git push`:

```
git push origin <add-your-branch-name>
```

replacing `<add-your-branch-name>` with the name of the branch you created earlier.

## Submit your changes for review

If you go to your repository on GitHub, you'll see a `Compare & pull request` button. Click on that button.

![create a pull request](../assets/img/compare-and-pull.png)

Now submit the pull request.

![submit pull request](../assets/img/submit-pull-request.png)

Soon we'll be merging all your changes into the master branch of this project. You will get a notification email once the changes have been merged.

## Where to go from here?

Congrats! You just completed the standard _fork -> clone -> edit -> PR_ workflow that you'll encounter often as a contributor. Now go ahead, make changes in the repository and help make this repository and even better place for learning and guidance.

# Note

The below content above is courtesy of the [First Contributions Repository](https://github.com/firstcontributions/first-contributions), with a MIT License.
Please check out the repository, for a complete guide to eery single aspect of first time contributions.

Cheers!
