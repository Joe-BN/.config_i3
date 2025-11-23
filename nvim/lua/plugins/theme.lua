-- add theme and add change between them when you want
-- probably has a more modular way to do this

local theme = "tokyogruv"

local output = {}


-- Tokyonight
if theme == "tokyonight" then
  output = {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("tokyonight")
    end,
  }

-- Gruvbox
elseif theme == "gruvbox" then
  output = {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("gruvbox")
    end,
  }

-- Tokyonight with Gruvbox Mood
elseif theme == "tokyogruv" then
  output = {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  }    

-- Catppuccin
elseif theme == "catppuccin" then
  output = {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  }

end



return output
