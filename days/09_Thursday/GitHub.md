GitHub

Good tutorials [here](https://www.youtube.com/watch?v=0fKg7e37bQE&list=PLoYCgNOIyGAB_8_iq1cL8MVeun7cB6eNc&index=14)

Nice picture here:  http://www.tricksofthetrades.net/2016/04/26/github-flow/


## Simplest use for GitHub -- remote storage for your own project

You're working alone on a project, you want it stored on the cloud, and every time you submit change you want to be able to 'undo' it if necessary.

So, create a GitHub repository for your project

Now you can actually edit and add files & folders from the website. Super easy.

But much nicer to  clone -> {make your modifications} -> add -> commit -> push

    git clone http://github.com/p-i-/myDemoProj
    
    { make modifications }
    
    git add myFile1.txt  <-- Or: git add +A to add all modified files, but be careful you might end up adding OSX junk, harmless but messy
    
    git commit -m "My commit, dont use APOSTROPHES here!"
    
    git push
    
Imagine you do that a few times a day. You will be able to rewind your project to any commit, using the website!


## Working in a team

If you are a collaborator on a project, you can do the same thing on this project.

In this case you need one additional git command:

    git pull
    
This will pull the latest code on to your system.

Now you make changes the same as above.


### Branches

You can create your own branch.  You can work on this branch the same way you would work on the original project. As far as you're concerned it is the same thing. When you're happy with your work you submit a PULL REQUEST, requesting that whoever is in charge of the repository merges your branch into the trunk.

### Merge Conflicts

There is a potential problem if two different people try to modify the same file at the same time.  GitHub handles these problems.


## Contributing to a project when you are not a collaborator

First you need to FORK the project.

Now you have your fork, it just appears as another repository on your GitHub page.

Now you clone -> ... -> push just like you did before

Then you submit a PULL request, asking the original project people to PULL in and MERGE your branch.

