# test_wiki
Experimental wiki-like repo. Provides a place to supply information that is easy to produce and consume knowledge.

This repo contains a copy of the Linux executable for the
[pmarkdown](https://metacpan.org/pod/App::pmarkdown) application,
version 1.06, which is used to build this wiki.
See [its license](https://metacpan.org/dist/Markdown-Perl/view/script/pmarkdown#LICENCE).


# The Wiki

Go to the Wiki [Home](wiki/Home.md).


# Why a Wiki?

Q: Why put stuff in a wiki and not in the product doc?

A: Some stuff just doesn't belong in the product doc.
For example, a work-in-progress can be in the wiki and provide some benefit
to customers even though it is incomplete.
Also, it is MUCH MUCH quicker to throw something up on the wiki than to
incorporate it into the product doc.
It is quite possible that some wiki articles will grow in content and
maturity and graduate into being doc sections.

I see the INFA KB another alternative to a wiki.
It has the advantage of being integrated into the ticketing system,
which can sometimes prevent a ticket from being opened.
But even the KB has a high cost of entry and is not quick.


# The Process

In the future, I would like to implement GitHub actions to build
the wiki automatically on checkin of .md files.
For now, the build will have to be a manual step.

1. Clone the `um_wiki` repo on your Linux host.
1. Update existing files and/or create new ones.
1. Run the appropriate build. Linux has a "bld.sh" script.
1. Git add, commit, and push.

See [UM Wiki Process](wiki/UM-Wiki-Process.md) for details.


# The Alternatives

Why not just use the Wiki feature that GitHub provides?

1. GitHub prevents search engines (Google, etc.) from crawling wikis except under certain circumstances ("[Note: Search engines will only index wikis with 500 or more stars that you configure to prevent public editing.](https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis)").
2. The web-based editor has limited capabilities. If you are creating a significant article, it is very useful to use a proper text editor (vi, emacs, etc.). It is possible but more difficult to access the Wiki files - requires command-line Git; can't use the desktop app. It presents an obstacle.
3. Closely related, it is sometimes nice to make the same edits across a large number of files (sed, perl, etc.). Again, it's possible but more difficult to access the Wiki files.
