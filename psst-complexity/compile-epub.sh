#!/bin/bash

# requires R bookdown package.
#
#    $ R
#    > install.packages("bookdown")

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"
