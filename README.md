## Intro to Snakemake for Bioinformatics

The information in this repository supports a video series titled [Intro to Snakemake for Bioinformatics](), which is based primarily on an [incubator lesson](https://carpentries-incubator.github.io/snakemake-novice-bioinformatics) from the [Software Carpentry](https://software-carpentry.org/) community.

Intro to Snakemake for Bioinformatics consists of the following modules. Video links will be added as they become available.

0. Setup ([video](https://youtu.be/pKUFky2te40))
1. Running commands with Snakemake ([video](https://youtu.be/JnoDIv-sxQs), [challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/01Running-commands.html))
2. Placeholders and wildcards ([video](https://youtu.be/tKP9qriQtSQ), [challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/02Placeholders-wildcards.html))
3. Chaining rules ([challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/03Chaining-rules.html))
4. How Snakemake plans what jobs to run ([challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/04Snakemake-job-planning.html))
5. Processing lists of inputs ([challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/05Processing-lists-of-inputs.html))
6. Handling awkward programs ([challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/06Handling-awkward-programs.html))
7. Finishing the basic workflow ([challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/07Finishing-the-basic-workflow.html))
8. Configuring workflows ([challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/08Configuring-workflows.html))
9. Optimizing workflow performance
10. Conda integration
11. Constructing a whole new workflow
12. Cleaning up
13. Robust quoting in Snakemake files


### Getting Started

Before jumping in, you will need some software and the data we will be using. After [installing Docker](https://www.docker.com/products/docker-desktop/), you can load a container with everything ready to go with the following command (i.e. this the first time only):

```
docker run -it --mount type=bind,source="/path/to/working/dir",target=/root/loc johnsonra/snakemake
```

where `/path/to/working/dir` is the path to the working directory on your computer that you want to be able to access both inside the container and outside the container. This will mount the desired working directory at `/root/loc` inside of the Docker container and activate the `snakemake_carpentry` Conda environment. (Normally, your Docker container is not able to access any files on your computer.) In the videos I will be using RStudio to edit files on my laptop while running them inside of the Docker container.

When you finish a session, you can exit the container by typing `exit` at the command line. Next time you want to work with the container, make sure it is running in Docker Desktop under the Containers tab. Find the name of the container and enter this command in your terminal or PowerShell window:

```
docker exec -it container-name bash
```

where `container-name` is the name of your container.

If you prefer running things locally (i.e. not in a container), check over [these setup instructions](https://carpentries-incubator.github.io/snakemake-novice-bioinformatics/setup.html) for the software and data we will be using.
