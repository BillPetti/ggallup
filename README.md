# ggallup
This package loads custom ggplot themes and palettes that make creating graphs in R consistent with Gallup brand standards easier.

It includes three objects that are loaded when the package is loaded:

* `theme_gallup`: A custom ggplot2 theme
* `theme_gallup_md`: The same custom theme as `theme_gallup`, but it has been tweaked to work better when producing `rmarkdown` documents
* `gallup_palette`: A custom palette that has the current Gallup brand colors included

The package can be loaded using the `devtools` package:

```
install_github("BillPetti/ggallup")
require(ggallup)
```
