##Collection of unreleated commands related to `hugo`, `git`, ...##
- Posts start with a lowercase heading
- to start a new post:from inside the site dir (unsignedpixel) `hugo new post/name_of_the_post.md`
- link to other posts via `{{<ref "page/about.md" >}}`and embed that in markdown links `[text](link)` or in this case `[text]({{<ref "page/about.md" >}}`. For Ulysses, use `~` to escape the links

- add `<!--more-->`to posts to keep any formatting in the summary view (lists) 
- add pictures with `![alt title](/images/imagename.jpg)`
- prime a new repo with git init
- add to github: `git remote add origin https://github.com/unsignedpixel/Hugo.git`and `git push -u origin master`
- to commit use: `git commit -m "commit msg"`
- to update remote: `git push orgin`
- to revert an uncommited file: `git checkout HEAD filename`

