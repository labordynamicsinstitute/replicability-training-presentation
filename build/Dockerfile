FROM rocker/verse:4.4.2

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
         locales \
         libcurl4-openssl-dev \
         libssl-dev \
        imagemagick \
        libmagick++-dev \
        gsfonts \
        pandoc \
        libicu-dev \
        libtcl8.6 \
        libtk8.6 \
        libxml2-dev \
        libudunits2-dev\
        libgdal-dev\
        gdal-bin\
        libgeos-dev\
        libproj-dev \
        bzip2 \
    && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

# Get quarto
RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.6.40/quarto-1.6.40-linux-amd64.deb && \
    dpkg -i quarto-1.6.40-linux-amd64.deb && \
    rm quarto-1.6.40-linux-amd64.deb

WORKDIR /home/rstudio

COPY .Rprofile .Rprofile
COPY renv.lock renv.lock
COPY renv/ renv/
COPY build/_initrenv.R _initrenv.R
RUN Rscript _initrenv.R 
