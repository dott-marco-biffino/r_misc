library(magick)

li<- list.files("F:\\LAVORO\\PERSONAL_BRANDING\\PB_2024\\IG\\IG_Lezioni_private_statistica", full.names = TRUE)
li_read<- lapply(li, image_read)
li_joined<- image_join(li_read)
li_animated<- image_animate(li_joined, fps = .5)
image_write(li_animated, "test.gif")

# without loading {magick} package ####
list.files("F:\\LAVORO\\PERSONAL_BRANDING\\PB_2024\\IG\\IG_Lezioni_private_statistica", 
           full.names = TRUE) |> 
  lapply(magick::image_read) |>
  magick::image_join() |>
  magick::image_animate(fps = .5) |>
  magick::image_write("test2.gif")
  

