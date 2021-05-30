wget "https://www.eclipse.org/projects/efsp/content/efsp_v1.2.html" -O - \
> /tmp/old.html
node /gitroot/temp/htmldiff.js/htmldiff-cli.js /tmp/old.html target/generated-docs/efsp.html /gitroot/www.eclipse.org/projects/efsp/content/diff_v1.3.html
