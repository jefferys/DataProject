
<!-- ROADMAP.md is generated from ROADMAP.Rmd. Please edit that file -->

# Version goals

## 0.0 - First boilerplate

- Basic R project with:
  - DESCRIPTION
  - LICENSE + LICENSE.md
  - README.Rmd + README.md
  - R directory - Hello

## 0.1 - First minimally functional version

- Should be installable from GitHub as a version-tagged release
- Should be usable for basic project workflow. Guessing this means:
  - Project:
    - Init
    - Save/Load
    - Defaults
      - Directories
      - Overwrite files
      - Logging
  - Conda environment
    - Initial Setup
    - Update/maintenance
  - Analysis
    - New
    - Run
      - Directories
      - Parameter sourcing
      - Dependencies
      - Resume/overwrite/protect prior results
    - Input files
      - Raw data (Manually provided/pre-existing)
      - Reference data (Manually provided/pre-existing)
      - Parameter files
    - Output files
      - Reported results and figures
      - Unreported results and figures
      - Intermediate and cached results
      - Raw data (Retrieved by project scripts)
      - Reference data (Retrieved by project scripts)
    - Caching of long-running results
  - Other project elements:
    - Scripts
      - Conda setup
      - All project run
      - Analysis-called scripts
      - Templates for sbatch
    - Documentation
      - Plan
      - Methods
      - Templates

# Unassigned:

## DataProject::DataProject()

Initialize the data project and return a DataProject object. This has
multiple side effects!

It will create the following files and directories:

- `Working/`
- `Analysis/`
- `Analysis/0.Setup.Rmd` - A file that when run customizes the
  DataProject and sets up defaults.
- `Scripts/`
- `Scripts/condaEnv.yaml` - A file for Conda describing the environment
- `Scripts/condaSetup.sbatch` - A bash executable file to set up the
  Conda environment for the project. It can be rerun at any time,
  updating the environment to match the (current) `condaEnv.yaml`. It is
  also suitable for submitting to a SLURM cluster with
  `sbatchScripts condaSetup.sbatch`
- `Scripts/<myProject>.sbatch` - A bash executable file to run the
  entire project. It is also suitable for submitting to a SLURM cluster
  with `sbatchScripts <myProject>.sbatch`
- `README.Rmd`- A default README.
- `<MyProj>.DataProject` - A default yaml file with project settings.
  \`\`\`
