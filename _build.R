
# for testing on Mac
sysinf <- Sys.info()

if ( sysinf['sysname'] == 'Darwin' ) {
   Sys.setenv(RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/MacOS/pandoc")
}

# setup a few things, if needed

source("libraries.R")

#run render

rmarkdown::render("index.Rmd")
rmarkdown::render("part1a.Rmd")
rmarkdown::render("part1b.Rmd")
rmarkdown::render("part2.Rmd")
rmarkdown::render("part4.Rmd")
