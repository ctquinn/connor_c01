# Search path
VPATH = data data-raw eda reports scripts

# Processed data files
DATA = games.rds

# EDA studies
EDA = games.md

# Reports
REPORTS =

# All targets
all : $(DATA) $(EDA) $(REPORTS)

# Data dependencies
games.rds : games.json

# EDA study and report dependencies
games.md : games.rds

# Pattern rules
%.rds : %.R
	Rscript $<
%.md : %.Rmd
	Rscript -e 'rmarkdown::render(input = "$<", output_options = list(html_preview = FALSE))'
