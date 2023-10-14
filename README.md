## Intro to Snakemake for Bioinformatics

The information in this repository supports a video series titled [Intro to Snakemake for Bioinformatics](), which is based primarily on an [incubator lesson](https://carpentries-incubator.github.io/snakemake-novice-bioinformatics) from the [Software Carpentry](https://software-carpentry.org/) community.

Intro to Snakemake for Bioinformatics consists of the following modules. Video links will be added as they become available.

* Setup
* Running commands with Snakemake ([challenges](challenges/01Running-commands.html))
* Placeholders and wildcards ([challenges](challenges/02Placeholders-wildcards.html))
* Chaining rules ([challenges](challenges/03Chaining-rules.html))
* How Snakemake plans what jobs to run ([challenges](challenges/04Snakemake-job-planning.html))
* Processing lists of inputs ([challenges](challenges/05Processing-lists-of-inputs.html))
* Handling awkward programs
* Finishing the basic workflow
* Configuring workflows
* Optimizing workflow performance
* Conda integration
* Constructing a whole new workflow
* Cleaning up
* Robust quoting in Snakemake files

### Getting Started

Before jumping in, you will need some software and the data we will be using. If you have Docker installed, you can load a container with everything ready to go with the following command:

```
docker run -it --rm --mount type=bind,source="$(pwd)",target=/root/loc johnsonra/snakemake
```

This will mount your current working directory at `/root/loc` inside of the Docker container and activate the `snakemake_carpentry` Conda environment. In the videos I will be using RStudio to edit files on my laptop while running them inside of the Docker container.

If you prefer running things locally (i.e. not in a container), check over [these setup instructions](https://carpentries-incubator.github.io/snakemake-novice-bioinformatics/setup.html) for the software and data we will be using.
