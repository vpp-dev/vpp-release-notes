== How it works ?

There are two github actions, one which generates the RELEASE-GENERATED.md, and is run on a daily basis.
It builds the release notes based on the commits in the repository.

The second action, which is run after the first one or on demand, applies vXX.YY sed command script to
the RELEASE-GENERATED.md, and puts it into README.md, which is really a chunk for a RELEASE.md in VPP.

== How to edit ?

Clone this repo, edit the vXX.YY.sed file, submit a pull request.
Yes, you need to know sed, but it's probably just search-replace,
which are "s/what-to-search/what-to-replace-with/", so should not
be too hard hopefully.

== Who do I give the feedback to ?

Andrew Yourtchenko ayourtch@gmail.com or @ayourtch on twitter

