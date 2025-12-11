-- add theme and add change between them when you want
-- probably has a more modular way to do this

local theme = ""

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

-- Melange
elseif theme == "melange" then
  output = {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme kanagawa-wave") -- or kanagawa-dragon for a warmer tone
    end,
  }

-- Vague
elseif theme == "vague" then
  output = {
    "vague-theme/vague.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
      -- NOTE: you do not need to call setup if you don't want to.
      require("vague").setup({
        -- optional configuration here
      })
      vim.cmd("colorscheme vague")
    end,
  }

-- Tokyonight with Gruvbox Mood
elseif theme == "kanagwa" then
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
