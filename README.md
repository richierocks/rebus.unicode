[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)
[![Is the package on CRAN?](http://www.r-pkg.org/badges/version/rebus.unicode)](http://www.r-pkg.org/pkg/rebus.unicode)
[![SemaphoreCI Build Status](https://semaphoreci.com/api/v1/projects/f23fef2e-9aef-4fd4-804d-0744b1d4cc36/636637/badge.svg)](https://semaphoreci.com/richierocks/rebus-unicode)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/yikkxy85jye6cq0f?svg=true)](https://ci.appveyor.com/project/richierocks/rebus-unicode)

# rebus.unicode: Regular Expression Builder, Um, Something (Unicode Functionality)

This package contains the Unicode functionality for the [*rebus*](https://github.com/richierocks/rebus) package.  It is primarily intended for other R package developers.  For interactive use, try *rebus* instead.

## Build regular expressions in a human readable way

Regular expressions are a very powerful tool, but the syntax is terse enough
to be difficult to read.  This makes bugs easy to introduce and hard to
find.  This package contains functions to make building regular expressions
easier.

## Installation

To install the stable version, type:

```{r}
install.packages("rebus.unicode")
```

To install the development version, you first need the *devtools* package.

```{r}
install.packages("devtools")
```

Then you can install the *rebus.unicode* package using

```{r}
library(devtools)
install_github("richierocks/rebus.unicode")
```

## Package contents

TODO
