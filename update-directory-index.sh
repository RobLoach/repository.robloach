#!/bin/bash

# Update Directory Index
# Found from https://github.com/chkal/jsf-maven-util/blob/gh-pages/update-directory-index.sh

for DIR in $(find build -type d); do
  (
    echo "<html>\n<body>\n<h1>Directory listing</h1>\n<hr/>\n<pre>"
    ls -1pa "${DIR}" | grep -v "^\./$" | grep -v "index.html" | awk '{ printf "<a href=\"%s\">%s</a>\n",$1,$1 }'
    echo "</pre>\n</body>\n</html>"
  ) > "${DIR}/index.html"
done
