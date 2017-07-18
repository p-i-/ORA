GitHub

Good tutorials [here](https://www.youtube.com/watch?v=0fKg7e37bQE&list=PLoYCgNOIyGAB_8_iq1cL8MVeun7cB6eNc&index=14)

Nice picture here:  http://www.tricksofthetrades.net/2016/04/26/github-flow/

3 uses for GitHub: on your own, collaborating, randomly contributing as a stranger:


## 1. Simplest use for GitHub -- remote storage for your own project

You're working alone on a project, you want it stored on the cloud, and every time you ***commit*** a change you want to be able to 'undo/revert' it if necessary.

So, create a GitHub repository for your project

Now you can actually edit and add files & folders from the website. Super easy.  Use `foo/bar` to add file `bar` in a new folder `foo`.

But much nicer to  clone -> {make your modifications} -> add -> commit -> push

    git clone http://github.com/p-i-/myDemoProj
    
    { make modifications }
    
    git add myFile1.txt
    git add myFile2.txt
    
(etc.,  or `git add +A` to add *all* modified files, but be careful you might end up adding OSX junk, harmless but messy)
    
    git commit -m "My commit, watch out -- dont use APOSTROPHES here!"
    
    git push
    
Imagine you do that a few times a day. You will be able to rewind your project to any commit, using the website!


## 2. Working in a team

If you are a ***collaborator*** on a project, you can do the same!

In this case there is an additional problem: there are other people working on the same project. So before you start work you should ***pull*** (download) the latest code onto your machine, because someone has probably changed it since you ***push***-ed (uploaded) last night.

    git pull
    
Now you make changes & `git push`  the same as above.

### Branches

You can create your own ***branch***.  You can work on this branch the same way you would work on the original project. As far as you're concerned it is the same thing. When you're happy with your work you submit a ***PULL REQUEST***, requesting that whoever is in charge of the repository merges *your* branch into the ***trunk***.

### Merge Conflicts

There is a potential problem if two different people try to modify the same file at the same time.  GitHub handles these problems. We didn't explore this in the course.


## Contributing to a project when you are not a collaborator

First you need to ***fork*** the project from its GitHub page.

Now you have your fork, it just appears as another repository on your GitHub page.

Now you can `clone` from your local machine.

Before doing anything, create a new branch using:

    git branch myBranch
    
Now `add`, `commit`, `push` just like you did before.

Now return to your fork on your GitHub account, and submit a PULL request, asking the project admin to PULL in and MERGE your branch.

