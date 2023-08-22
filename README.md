# test_wiki
Experimental wiki-like repo.

[Home](wiki/Home.md)


This repo is (should be) a copy of the Ultra Messaging wiki at
https://github.com/UltraMessaging/ultramessaging.github.io/wiki

The purpose of keeping a copy here is so that it can be crawled
by search engines, whereas GitHub wikis are generally not
("[Note: Search engines will only index wikis with 500 or more stars that you configure to prevent public editing.](https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis)").

The [actual wiki](https://github.com/UltraMessaging/ultramessaging.github.io/wiki)
is updated using the usual methods.
Then run the "wiki/bld.sh" script in this repo,
which updates the "UltraMessaging/ultramessaging.github.io.wiki" repo and copies its
content
(assuming you've already run "git clone git@github.com:UltraMessaging/ultramessaging.github.io.wiki.git").
You'll then have "git add", "git commit", and "git push" this repo.
