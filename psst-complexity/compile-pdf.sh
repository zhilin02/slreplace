#!/bin/bash

# requires R bookdown package.
#
#    $ R
#    > install.packages("bookdown")

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_document2')"
