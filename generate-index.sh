#!/bin/bash

echo "<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>Recipe Site</title>
</head>
<body>
  <h1>Recipe Table of Contents</h1>
  <ul>" > index.html

for file in *.html; do
  if [[ "$file" != "index.html" ]]; then
    echo "    <li><a href=\"$file\">$file</a></li>" >> index.html
  fi
done

echo "  </ul>
</body>
</html>" >> index.html
