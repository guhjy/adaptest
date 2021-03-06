
<!-- README.md is generated from README.Rmd. Please edit that file -->

# R/`adaptest`

[![Travis-CI Build
Status](https://travis-ci.org/wilsoncai1992/adaptest.svg?branch=master)](https://travis-ci.org/wilsoncai1992/adaptest?branch=master)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/wilsoncai1992/adaptest?branch=master&svg=true)](https://ci.appveyor.com/project/wilsoncai1992/adaptest/)
[![Coverage
Status](https://img.shields.io/codecov/c/github/wilsoncai1992/adaptest/master.svg)](https://codecov.io/github/wilsoncai1992/adaptest?branch=master)
[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)
[![GPL-2
License](http://img.shields.io/:license-gpl2-blue.svg)](http://www.gnu.org/licenses/gpl-2.0.html)
[![JOSS
status](http://joss.theoj.org/papers/7618d7d14ac77f6f502df3f9eac5917d/status.svg)](http://joss.theoj.org/papers/7618d7d14ac77f6f502df3f9eac5917d)

> Data-adaptive statistics for multiple testing in high-dimensional
> problems

**Authors:** Wilson Cai and [Nima Hejazi](http://nimahejazi.org)

-----

## What’s `adaptest`?

The `adaptest` R package is a tool for performing multiple testing on
effect sizes under high-dimensional settings, using the approach of
data-adaptive statistical target parameters and inference. For technical
details on the data-adaptive multiple testing procedure, consult Cai,
Hejazi, and Hubbard. For an introduction to statistical inference
procedures using data-adaptive target parameters, the interested reader
is directed to Hubbard, Kherad-Pajouh, and van der Laan (2016).

-----

## Installation

<!--
For standard use, install from [Bioconductor](https://bioconductor.org):

```r
source("https://bioconductor.org/biocLite.R")
biocLite("adaptest")
```
-->

Install the most recent *stable release* from GitHub via
[`devtools`](https://www.rstudio.com/products/rpackages/devtools/):

``` r
devtools::install_github("wilsoncai1992/adaptest")
```

-----

<!--
## Example

This is a basic example which shows you how to solve a common problem:


```r
## basic example code
```
-->

## Issues

If you encounter any bugs or have any specific feature requests, please
[file an issue](https://github.com/wilsoncai1992/adaptest/issues).

-----

## Contributions

It is our hope that `adaptest` will grow to be widely adopted as a tool
for employing data-adaptive multiple hypothesis testing procedures in
high-dimensional and complex problem settings. To that end,
contributions are very welcome, though we ask that interested
contributors consult our [`contribution
guidelines`](https://github.com/wilsoncai1992/adaptest/blob/master/CONTRIBUTING.md)
prior to submitting a pull request.

-----

## Citation

After using the `adaptest` R package, please cite it:

``` 
  @article{cai2017adaptest,
    doi = {},
    url = {},
    year  = {2017},
    month = {},
    publisher = {The Open Journal},
    volume = {submitted},
    number = {},
    author = {Cai, Weixin and Hubbard, Alan E and Hejazi, Nima S},
    title = {adaptest: Data-Adaptive Statistics for High-Dimensional Testing
      in R},
    journal = {The Journal of Open Source Software}
  }
```

-----

## License

The software contents of this repository are distributed under the GPL-2
license. See file `LICENSE` for details.

-----

## References

Cai, Weixin, Nima S Hejazi, and Alan E Hubbard. “Data-Adaptive
Statistics for Multiple Hypothesis Testing in High-Dimensional
Settings.” <https://arxiv.org/abs/1704.07008>.

Hubbard, Alan E, Sara Kherad-Pajouh, and Mark J van der Laan. 2016.
“Statistical Inference for Data Adaptive Target Parameters.” *The
International Journal of Biostatistics* 12 (1): 3–19.
