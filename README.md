This script takes a folder with pdf's and one by one, parses them into html sites, creates a github repo, pushes the site, publishes to gh-pages, and keeps a running list.js of the repo names since they must be truncated down to 100 characters.

You'll need to have git installed, of course. Also, install *pdf2htmlEX* and *Hub* to make it happen.

To run, clone this repo, drop in your pdf's, and $: `sh pdf2html.sh`
