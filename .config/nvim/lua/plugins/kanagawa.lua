return {
  "rebelot/kanagawa.nvim", 
  lazy = false,
  priority = 1000,
  opts = {
    -- Remove the background of LineNr, {Sign,Fold}Column and friends
    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = "none"
          }
        }
      }
    },
    overrides = function(colors)
      local theme = colors.theme
      return {
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        FloatTitle  = { bg = "none" },
        LazyNormal  = { bg = "none", fg = theme.ui.fg_dim },
        MasonNormal = { bg = "none", fg = theme.ui.fg_dim },
      }
    end,
  } 
}
