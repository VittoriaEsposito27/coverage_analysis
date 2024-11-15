FROM rocker/verse:4.2.2

# Install BiocManager
RUN R -e "install.packages('BiocManager')"

# Install CRAN packages
RUN R -e "install.packages(c('rmarkdown','knitr','DT'))

# Install Bioconductor packages
RUN R -e "BiocManager::install('rtracklayer')

# Expose the RStudio port
EXPOSE 8787

# Start RStudio server
CMD ["/usr/bin/render-demo"]
