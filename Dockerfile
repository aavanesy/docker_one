FROM rocker/shiny-verse:latest

# setup nginx
RUN apt-get update && \
    apt-get install -y libsodium-dev && \
    apt-get install -y libpq-dev

RUN install2.r --error shiny
RUN install2.r --error dplyr
RUN install2.r --error leaflet
RUN install2.r --error RColorBrewer
RUN install2.r --error scales
RUN install2.r --error lattice
RUN install2.r --error tidyr
RUN install2.r --error shinyWidgets

RUN sudo rstudio-server stop
