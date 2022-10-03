library(hexSticker)


sysfonts::font_add_google(name = "Chivo", family = "chivo")

sticker(subplot = "man/figures/bballer 2.png",
        package="nblR",
        p_family = "chivo", p_size=12, p_color = "#fefefe", p_y = 1.4,
        s_x=1, s_y=.66, s_width=0.4, s_height=0.55,
        dpi = 1000,
        h_fill = "#157b7d", h_color = "#0d2b74",
        spotlight = TRUE, l_alpha = 0.25, l_x = 0.3, l_y = 0.55,
        url = "https://jaseziv.github.io/nblR/", u_y = 0.07, u_x = 1.0, u_size = 1.5, u_color = "#fefefe", u_family = "chivo",
        filename="man/figures/logo.png")





# smaller size hex logo:
sticker(subplot = "man/figures/bballer 2.png",
        package="nblR",
        p_family = "chivo", p_size=12, p_color = "#fefefe", p_y = 1.4,
        s_x=1, s_y=.66, s_width=0.4, s_height=0.55,
        dpi = 1000,
        h_fill = "#157b7d", h_color = "#0d2b74",
        spotlight = TRUE, l_alpha = 0.25, l_x = 0.3, l_y = 0.55,
        url = "https://jaseziv.github.io/nblR/", u_y = 0.07, u_x = 1.0, u_size = 1.5, u_color = "#fefefe", u_family = "chivo",
        filename="man/figures/logo_small_size.png") # modify size in viewer to dimensions 181x209 as a png