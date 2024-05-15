--
local onedark_status, onedark = pcall(require, "onedarkpro")
if not onedark_status then

  return
end

-- Lua
local harpoon_status, harpoon = pcall(require, "harpoon")
if not harpoon_status then
    return
end

require("onedarkpro").setup({
    styles = {
        types = "NONE",
        methods = "NONE",
        numbers = "NONE",
        strings = "NONE",
        comments = "italic",
        keywords = "bold,italic",
        constants = "NONE",
        functions = "italic",
        operators = "NONE",
        variables = "NONE",
        parameters = "NONE",
        conditionals = "italic",
        virtual_text = "NONE",
    },
    options = {
        cursorline = false,             -- Use cursorline highlighting?
        transparency = true,            -- Use a transparent background?
        terminal_colors = true,         -- Use the theme's colors for Neovim's :terminal?
        highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
    },
})

local group = vim.api.nvim_create_augroup("marks-fix-hl", {})
vim.api.nvim_create_autocmd({ "VimEnter" }, {
    group = group,
    callback = function()
        vim.api.nvim_set_hl(0, "MarkSignNumHL", {})
    end,
})

-- setup must be called before loading
-- vim.cmd("colorscheme onedark")

-- function ColorMyPencils(color)
--     color = color or "cattpuccin"
--     -- vim.cmd.colorscheme(color)
--
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end

-- function LineNumberColors()
--     vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#ABB2BF", bold = false })
--     vim.api.nvim_set_hl(0, "LineNr", { fg = "#61AFEF", bold = true })
--     vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ABB2BF", bold = false })
-- end

-- function HarpoonColors()
--     vim.cmd("highlight! HarpoonInactive guibg=NONE guifg=#ABB2BF")
--     vim.cmd("highlight! HarpoonActive guibg=NONE guifg=#E06C75")
--     vim.cmd("highlight! HarpoonNumberActive guibg=NONE guifg=#61AFEF")
--     vim.cmd("highlight! HarpoonNumberInactive guibg=NONE guifg=#E5C07B")
--     vim.cmd("highlight! TabLineFill guibg=NONE guifg=NONE")
-- end

-- ColorMyPencils("onedark")
-- LineNumberColors()
-- HarpoonColors()
