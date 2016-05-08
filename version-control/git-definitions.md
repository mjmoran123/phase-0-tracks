# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    - Version control is kind of like a time machine for your projects. It allows you to make changes to a project while always being able to revert to earlier versions.  It also facilitates working on a project with a team. Using Git manages version control and allows different users to make changes to a project and Git helps merge all of the changes.

* What is a branch and why would you use one?
    - A branch is a way to make changes to a project without changing the master. It is like a copy of the project at a particular point in time. Upon completing desired changes, you can merge the branch with the master branch. You would use one to avoid making undesired changes to the original/master project. Using a branch also allows you to revert changes as desired.

* What is a commit? What makes a good commit message?
    - A commit creates a point in the project that can be reverted to. It is like a save point. A good commit message is specific about what was changed. The tense (past or present) of the message does not seem to be universally agreed upon, but I think Git recommends present tense so that readers understand what the change does, rather than showing a record of what was done to the project.

* What is a merge conflict?
    - A merge conflict occurs when you merge a branch to the master branch (or another branch) that have an inconsistency. This could be something like the same part of a file was changed by two different branches, and that needs to be resolved, or it could be that you are trying to update a file that was deleted by another branch.