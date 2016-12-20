# ggallup
This package loads custom ggplot themes and palettes that make creating graphs in R consistent with Gallup brand standards easier.

It includes three objects and two functions that are loaded when the package is loaded:

* `ggallup`: A function to format `ggplot2` objects
* `ggallup_md`: A function to format `ggplot2` objects for use in `rmarkdown` documents
* `theme_gallup`: A custom ggplot2 theme
* `theme_gallup_md`: The same custom theme as `theme_gallup`, but it has been tweaked to work better when producing `rmarkdown` documents
* `gallup_palette`: A custom palette that has the current Gallup brand colors included

The package can be loaded using the `devtools` package:

```
require(devtools)
install_github("BillPetti/ggallup", force = TRUE)
require(ggallup)
```

See the [vignette](https://github.com/BillPetti/ggallup/blob/master/vignette/ggallupVignette.md) for some usage examples
