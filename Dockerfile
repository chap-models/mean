FROM ghcr.io/dhis2-chap/docker_r_inla:master@sha256:adfc916416f7cd56d6d0368cfdf22d5a24844cafe626259ca9dc48a695142feb

RUN apt-get update
RUN apt-get install -y libharfbuzz-dev libfribidi-dev
RUN R -e 'r = getOption("repos"); r["CRAN"] = "http://cran.us.r-project.org"; options(repos = r); install.packages(c("tidyverse", "fable", "tsibble", "fabletools", "fpp3"), repos=c(getOption("repos"), dep=TRUE))'