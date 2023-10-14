# Docker file for snakemake-biofino-intro
# https://carpentries-incubator.github.io/snakemake-novice-bioinformatics/

# start with snakemake
FROM ubuntu

# install dependencies
RUN apt-get update && apt-get install -y \
  nano \
  wget \
  xz-utils \
  less
  
# create miniconda folder
RUN mkdir ~/miniconda3

# set up conda environment
RUN wget https://carpentries-incubator.github.io/snakemake-novice-bioinformatics/files/conda_env.yaml
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN mv Miniconda3-latest-Linux-x86_64.sh ~/miniconda3/miniconda.sh

RUN bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
RUN rm ~/miniconda3/miniconda.sh
RUN ~/miniconda3/bin/conda init bash

RUN ~/miniconda3/bin/conda config --set channel_priority strict
RUN ~/miniconda3/bin/conda env update --file conda_env.yaml

# download data
RUN wget --content-disposition https://figshare.com/ndownloader/files/42467370
RUN tar -xvaf data-for-snakemake-novice-bioinformatics.tar.xz
RUN mv snakemake_data ~/
RUN rm data-for-snakemake-novice-bioinformatics.tar.xz

# start up conda on load
RUN echo "conda activate snakemake_carpentry" >> ~/.bashrc

# set nano defaults
RUN IFS="" && echo   "set nowrap" \
                   "\nset autoindent" \
                   "\nset tabstospaces" \
                   "\nset tabsize 4" \
                   "\nset smooth" \
                   "\nset morespace" > ~/.nanorc

# run bash
CMD ["/bin/sh", "-c", "exec bash"]
