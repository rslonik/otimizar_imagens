#!/bin/bash
find /var/www/*/htdocs/wp-content/uploads/$(date +%Y/%m) -type f -name '*.jpg' -exec jpegoptim --strip-all -m75 -o {} \;
find /var/www/*/htdocs/wp-content/uploads/$(date +%Y/%m) -type f -name '*.png' -exec zopflipng -y {} {} \;
