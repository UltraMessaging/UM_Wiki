# test_wiki
Experimental wiki-like repo. Provides a place to supply information that is easy to produce and consume knowledge.


# The Wiki

Go to the Wiki [Home](wiki/Home.md).


# The Process

Files (articles) can be created and/or modified using the web browser,
the [GitHub Desktop](https://desktop.github.com/) application,
or the [git command-line tool](https://git-scm.com/downloads).

## Web-Based Maintenance

* Go to https://github.com/UltraMessaging/wiki_test/
* Make sure you are logged into your GitHub account that is a member of the
["UM Engineers" team](https://github.com/orgs/UltraMessaging/teams/um-engineers).

### Create New File

* Above the file list is an "Add file" dropdown button (to the left of the green "<> Code" button).
* Select "Create New File".
* In the "Name your file..." box, enter "wiki/blah.md" where "blah" is a short descriptive
name, WITHOUT spaces and only the special characters dash and underscore.
Note that as soon as you hit the "/", the box parses it.
Also, as soon as you type the ".md", it immediately moves you to the file content section.
* When ready, click the green "Commit Changes..." button.
* Feel free to add description if you like. Then "Commit changes".
* Although not necessary, if you think the article should have an entry in the "Home.md" page,
add it.

### Edit Existing File

* Go to the desired file.
For example, https://github.com/UltraMessaging/wiki_test/blob/main/wiki/Home.md
* On the far right, click the "pencil" button to open the file for editing.
* Make your changes.
* When ready, click the green "Commit Changes..." button.
* Feel free to add description if you like. Then "Commit changes".
* Although not necessary, if you think the article should have an entry in the "Home.md" page,

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

You are now ready to work on the files.

Before you start work, you should always fetch/merge any work
that somebody else might have done.

Since user-friendly GUI apps are self-explanatory and intuitive,
I won't bother showing how to check in changes.

## Git Command-Line Tool

(This is the method I use most often.)

* Download and install the [git command-line tool](https://git-scm.com/downloads).


# The Alternatives

Why not just use the Wiki feature that GitHub provides?

1. GitHub prevents search engines (Google, etc.) from crawling wikis except under certain circumstances ("[Note: Search engines will only index wikis with 500 or more stars that you configure to prevent public editing.](https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis)").
2. The web-based editor has limited capabilities. If you are creating a significant article, it is very useful to use a proper text editor (vi, emacs, etc.). It is possible but more difficult to access the Wiki files - requires command-line Git; can't use the desktop app. It presents an obstacle.
3. Closely related, it is sometimes nice to make the same edits across a large number of files (sed, perl, etc.). Again, it's possible but more difficult to access the Wiki files.
