gallup_pal <- function(...) {
function(n) {
  rep(gallup_palette, ceiling(n / length(gallup_palette) ))[1:n]
  }
}

scale_color_gallup <- function(...) {
  discrete_scale("colour", "scale_color_gallup", gallup_pal(), ...)
}

scale_fill_gallup <- function(...) {
  discrete_scale("fill", "scale_fill_gallup", gallup_pal(), ...)
}
