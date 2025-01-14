#
#
#
#
#
#
#
#
#
#
#
#
#
mtcars |> 
    ggplot(aes(x = wt, y = mpg, color = cyl)) +
    geom_point() +
    theme_minimal()
#
#
#
