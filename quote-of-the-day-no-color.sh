#!/bin/sh

curl -s https://www.brainyquote.com/link/quotebr.js \
    | sed -n 3,4p \
    | sed -e '1s/.*("\(.*\)<br>.*/"\1"/g' \
          -e '2s/.*>\(.*\)<.*/\t\t--\1/g'
