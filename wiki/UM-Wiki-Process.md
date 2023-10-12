<!-- mdtoc-start -->
&bull; [Process](#process)  
&nbsp;&nbsp;&nbsp;&nbsp;&bull; [Web-Based Maintenance](#web-based-maintenance)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&bull; [Create New File](#create-new-file)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&bull; [Edit Existing File](#edit-existing-file)  
&nbsp;&nbsp;&nbsp;&nbsp;&bull; [GitHub Desktop](#github-desktop)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&bull; [Doing Work](#doing-work)  
&nbsp;&nbsp;&nbsp;&nbsp;&bull; [Git Command-Line Tool](#git-command-line-tool)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&bull; [Doing Work](#doing-work)  
<!-- TOC created by '../mdtoc/mdtoc.pl wiki/UM-Wiki-Process.md' (see https://github.com/fordsfords/mdtoc) -->
<!-- mdtoc-end -->

# Process

One nice thing about using the web interface is that Grammarly can be used as a spelling checker.


Files (articles) can be created and/or modified using the web browser,
the [GitHub Desktop](https://desktop.github.com/) application,
or the [git command-line tool](https://git-scm.com/downloads).

## Web-Based Maintenance

* Go to https://github.com/UltraMessaging/wiki_test/
* Make sure you are logged into your GitHub account that is a member of the
["UM Engineers" team](https://github.com/orgs/UltraMessaging/teams/um-engineers).

Note that, when using the web-based editor,
it is annoying to maintain the table of contents at the top of the file.
The optimal method is to get the files local on your machine and use the
[mdtoc tool](https://github.com/fordsfords/mdtoc).

### Create New File

* Above the file list is an "Add file" dropdown button (to the left of the green "<> Code" button).
* Select "Create New File".
* In the "Name your file..." box, enter "wiki/blah.md" where "blah" is a short descriptive
name, WITHOUT spaces and only the special characters dash and underscore.
Note that as soon as you hit the "/", the box parses it.
Also, as soon as you type the ".md", it immediately moves you to the file content section.
* When ready, click the green "Commit Changes..." button.
* Feel free to add a description if you like (I often just say "updates"). Then "Commit changes".
* Although not necessary, if you think the article should have an entry in the "Home.md" page,
add it.

### Edit Existing File

* Go to the desired file.
For example, https://github.com/UltraMessaging/wiki_test/blob/main/wiki/Home.md
* On the far right, click the "pencil" button to open the file for editing.
* Make your changes.
* When ready, click the green "Commit Changes..." button.
* Feel free to add description if you like. Then "Commit changes".
* When the page displays, it might not have your updates. Wait a second and refresh.
* Although not necessary, if you think the article should have an entry in the "Home.md" page,
add it.

## GitHub Desktop

Note that the desktop app is not like an IDE with
an integrated editor and such.
It only does the "git" work for you with a user-friendly GUI.
For creating and editing files, you must use your usual tools.

* Download and install
[GitHub Desktop](https://desktop.github.com/).
* You'll need to associate it with your GitHub account that is a member of the
["UM Engineers" team](https://github.com/orgs/UltraMessaging/teams/um-engineers).
* Pull down "File" and select "Clone Repository"
* Enter "UltraMessaging/wiki_test" and click "Clone".
* Note the location of where the repository will be placed on your machine
(should be under "Documents").
* Click "Clone".

### Doing Work

Before you start work, you should always fetch/merge any work
that somebody else might have done.
* Pull down "Repository" and select "Fetch".
* If changes were fetched, you need to click "Pull origin".

Now your local repo is up-to-date with GitHub and you can use
the editor of your choice to create/modify files.
Then use GitHub Desktop to check in your changes.

Since user-friendly GUI apps are self-explanatory and intuitive,
I won't bother showing how to check in changes.

## Git Command-Line Tool

It is beyond the scope of this article to give a detailed tutorial on git.

* Download and install the [git command-line tool](https://git-scm.com/downloads).
* You'll need to associate it with your GitHub account that is a member of the
["UM Engineers" team](https://github.com/orgs/UltraMessaging/teams/um-engineers).

Here's the content of my ".gitconfig" file:
````
[user]
	name = Steve Ford
	email = sford@geeky-boy.com
[push]
	default = simple
````
(leading tabs)

* Enter: git clone git@github.com:UltraMessaging/wiki_test.git

### Doing Work

Before you start work, you should always fetch/merge any work
that somebody else might have done.
* git fetch
* git merge

After creating/editing files:

* git status # If you see extraneous files, delete them.
* git add .
* git status # Make sure only your desired files are being added.
* git commit -m "description"
* git push
