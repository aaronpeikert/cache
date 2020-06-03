all: cache.html
cache.html: cache.Rmd data/iris.csv
	Rscript -e "rmarkdown::render('$<')"
data/iris.csv:
	Rscript -e "source('R/long.R')"
clean:
	Rscript -e "fs::dir_delete('data')"
