local active_border_color = "#82aaff"
local inactive_border_color = "rgba(575656aa)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    active_opacity = 0.98,
    inactive_opacity = 0.9,
    fullscreen_opacity = 1.0,

    blur = {
      enabled = true,
      size = 6,
      passes = 3,
      contrast = 1.5,
      brightness = 0.8,
      vibrancy = 0.2,
      vibrancy_darkness = 0.2,
      noise = 0.07,
      ignore_opacity = true,
      new_optimizations = true,
    },
  },
})

hl.layer_rule({
  name = "night-owl-shell-blur",
  match = {
    namespace = "^(omarchy-bar|omarchy-menu|omarchy-notifications|omarchy-osd)$",
  },
  blur = true,
  ignore_alpha = 0.1,
})
