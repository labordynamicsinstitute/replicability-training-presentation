#!/bin/bash
docker exec -it -w /home/rstudio/project -u rstudio rstudio /bin/bash $@