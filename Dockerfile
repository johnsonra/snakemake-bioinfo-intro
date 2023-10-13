# Docker file for snakemake-biofino-intro
# https://carpentries-incubator.github.io/snakemake-novice-bioinformatics/

# start with snakemake
FROM snakemake/snakemake

# install dependencies
RUN apt-get update && apt-get install -y \
  nano \
  wget

# set up conda environment
RUN wget https://carpentries-incubator.github.io/snakemake-novice-bioinformatics/files/conda_env.yaml

RUN conda config --set channel_priority strict
RUN conda env update --file conda_env.yaml
RUN conda activate snakemake_carpentry

# download data
RUN wget --content-disposition https://figshare.com/ndownloader/files/42467370
RUN tar -xaf data-for-snakemake-novice-bioinformatics.tar.xz
# mv to ~?
# rm tar file?

# set nano defaults
RUN IFS="" && echo   "set nowrap" \
                   "\nset autoindent" \
                   "\nset tabstospaces" \
                   "\nset tabsize 4" \
                   "\nset smooth" \
                   "\nset morespace" > ~/.nanorc

# run bash
CMD ["/bin/sh", "-c", "exec bash"]
