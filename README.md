# PyLogging.jl

[![Build Status](https://travis-ci.org/colinfang/PyLogging.jl.svg?branch=master)](https://travis-ci.org/colinfang/PyLogging.jl)

## Overview

This is a Julia wrapper for Python logging package.

## Example

```{julia}
using PyLogging

PyLogging.basicConfig(
	level=PyLogging.INFO,
	format="%(asctime)s - %(name)s - %(message)s"
)

root = getLogger()
loggerA = getLogger("a")

@debug loggerA "debug"
@info loggerA "info"

# Not trigger error().
@debug loggerA "$(error())"
# Trigger error().
@info loggerA "$(error())"
```
