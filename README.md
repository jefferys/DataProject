
<!-- README.md is generated from README.Rmd. Please edit that file -->

# DataProject

<!-- badges: start -->
<!-- badges: end -->

My opinionated data analysis project framework. Uses Rmd scripts for
analysis, Conda for tools and environment, Bash and Slurm for batch
submission.

## Installation

You can install *`DataProject`* from
[GitHub](https://github.com/jefferys/DataProject) in any of the normal
ways. The newest easy way to install stuff is with the `pak` package. To
check if you have the “pak” package and install it if you don\`t:

``` r
# Quietly check if you have pak installed. If you don't, then
# try to (noisily) install it from CRAN.
if( ! require( "pak", quietly = TRUE )) {
    install.packages( "pak" )
    
    # If install was needed but failed, exit with error.
    if( ! require( "pak", )) {
        stop( "Install of package failed for: `pak`." )
    }
}
```

To install the latest version of *`DataProject`* from GitHub:

``` r
# Last commit from the default branch
pak::pkg_install("jefferys/DataProject")
```

To install the latest development version of *`DataProject`* from
GitHub, along with all development dependencies:

``` r
# Last commit from the dev branch. Automatically installs optional dependencies
pak::pkg("jefferys/DataProject@dev")
```

To install a specific (tagged) release of *`DataProject`* or the most
recent from any branch, specify the desired `<tag_or_branch_name>`
instead of this placeholder and install with one of:

``` r
# Without optional dependencies
pak::pkg_install("jefferys/DataProject@<tag_or_branch_name>")

# With optional dependencies
pak::pkg("jefferys/DataProject@<tag_or_branch_name>")
```

# Create a boilerplate data analysis project

## TLDR:

1.  Create `<MyProj>`, a plain Rstudio project (not a package)
2.  In the project directory run `initProject()` from an R console

``` r
DataProject::initProject()
```
