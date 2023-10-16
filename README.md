## Intro to Snakemake for Bioinformatics

The information in this repository supports a video series titled [Intro to Snakemake for Bioinformatics](), which is based primarily on an [incubator lesson](https://carpentries-incubator.github.io/snakemake-novice-bioinformatics) from the [Software Carpentry](https://software-carpentry.org/) community.

Intro to Snakemake for Bioinformatics consists of the following modules. Video links will be added as they become available.

0. Setup
1. Running commands with Snakemake ([challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/01Running-commands.html))
2. Placeholders and wildcards ([challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/02Placeholders-wildcards.html))
3. Chaining rules ([challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/03Chaining-rules.html))
4. How Snakemake plans what jobs to run ([challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/04Snakemake-job-planning.html))
5. Processing lists of inputs ([challenges](https://johnsonra.github.io/snakemake-bioinfo-intro/challenges/05Processing-lists-of-inputs.html))
6. Handling awkward programs
7. Finishing the basic workflow
8. Configuring workflows
9. Optimizing workflow performance
10. Conda integration
11. Constructing a whole new workflow
12. Cleaning up
13. Robust quoting in Snakemake files

### Getting Started

Before jumping in, you will need some software and the data we will be using. After [installing Docker](https://www.docker.com/products/docker-desktop/), you can load a container with everything ready to go with the following command:

```
docker run -it --rm --mount type=bind,source="$(pwd)",target=/root/loc johnsonra/snakemake
```

This will mount your current working directory at `/root/loc` inside of the Docker container and activate the `snakemake_carpentry` Conda environment. In the videos I will be using RStudio to edit files on my laptop while running them inside of the Docker container.

If you prefer running things locally (i.e. not in a container), check over [these setup instructions](https://carpentries-incubator.github.io/snakemake-novice-bioinformatics/setup.html) for the software and data we will be using.
