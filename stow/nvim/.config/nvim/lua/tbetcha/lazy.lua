-- This  file can be loaded by calling `lua require('plugins')` from your init.vimlazy

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
require("lazy").setup({
  -- tmux nav
  "christoomey/vim-tmux-navigator",

  ---------------------------------------
  --------------- THEMES  ---------------
  ---------------------------------------

  {
    "EdenEast/nightfox.nvim",
    priority = 1000, -- Ensure it loads first
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000, -- Ensure it loads first
  },
  {
    "sainnhe/sonokai",
    priority = 1000, -- Ensure it loads first
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Ensure it loads first
  },
  -- "navarasu/onedark.nvim",
  -- LSP STUFF
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" }, -- Required
      { "williamboman/mason.nvim" }, -- Optional
      { "williamboman/mason-lspconfig.nvim" }, -- Optional

      -- Autocompletion
      { "hrsh7th/nvim-cmp" }, -- Required
      { "hrsh7th/cmp-nvim-lsp" }, -- Required
      { "L3MON4D3/LuaSnip" }, -- Required
      -- source for text in buffer
      { "hrsh7th/cmp-buffer" },
      -- source for file system paths
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-cmdline" },
    },
  },
  -- copilot that doesn't suck
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
  -- copilot completions sources
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  -- tabnine completion source
  { "tzachar/cmp-tabnine", build = "./install.sh" },
  --  tree sitter nodes for completionspack
  { "ray-x/cmp-treesitter" },
  -- snippet engine
  "L3MON4D3/LuaSnip",
  -- for autocompletion
  "saadparwaiz1/cmp_luasnip",
  -- useful snippets
  "rafamadriz/friendly-snippets",
  -- managing & installing lsp servers, linters & formatters
  "williamboman/mason.nvim",
  -- bridges gap b/w mason & lspconfig
  "williamboman/mason-lspconfig.nvim",
  -- formatting
  "jose-elias-alvarez/null-ls.nvim",
  -- bridges gap b/w mason & null-ls
  "jayp0521/mason-null-ls.nvim",
  "jose-elias-alvarez/typescript.nvim",
  --icons in lsp menu
  { "onsails/lspkind.nvim" },
  --enhanced lsp stuff that uses treesitter and not regex
  { "glepnir/lspsaga.nvim", version = "5dc14c9fd4230549da532c51ad555a4f64aa80d5" },

  --END OF LSP STUFF

  -- line at bottom of nvim window
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
  },
  -- reload that other plugins rely on
  { "nvim-lua/plenary.nvim" },
  -- telescope
  { "nvim-telescope/telescope.nvim", version = "0.1.4" },
  -- fzf searching for telescope
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  -- zoxide telescope extension
  "jvgrootveld/telescope-zoxide",
  -- required for zoxide ext
  "nvim-lua/popup.nvim",
  --commenting
  { "numToStr/Comment.nvim" },
  -- language parser
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  -- show parsing of language elements live
  "nvim-treesitter/playground",
  -- keep context while scrolling
  "nvim-treesitter/nvim-treesitter-context",
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  --fast switching of buffers
  "theprimeagen/harpoon",
  -- long lived undos
  "mbbill/undotree",
  -- git integration
  "tpope/vim-fugitive",
  -- surround motions
  "tpope/vim-surround",
  -- icons
  "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  -- git icons
  "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
  -- bar to show buffers
  "romgrk/barbar.nvim",
  -- --------------------------
  -- file explorer
  "nvim-tree/nvim-tree.lua",
  -- auto close parens and brackets
  "windwp/nvim-autopairs",
  -- maximize window and restore to orig size
  "szw/vim-maximizer",
  -- show indent guide
  "lukas-reineke/indent-blankline.nvim",
  -- highlight todos
  "folke/todo-comments.nvim",
  -- markdown preview
  {
    "folke/noice.nvim",
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      { "MunifTanjim/nui.nvim" },
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to  the notification view.
      --   If not available, we  `mini` as the fallback
      { "rcarriga/nvim-notify" },
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  "chentoast/marks.nvim",
  "kristijanhusak/vim-dadbod-ui",
  "tpope/vim-dadbod",
  "kristijanhusak/vim-dadbod-completion",
  "kdheepak/lazygit.nvim",
  "windwp/nvim-ts-autotag",
  "MunifTanjim/prettier.nvim",
  "kevinhwang91/nvim-bqf",
  "RRethy/vim-illuminate",
  "b0o/incline.nvim",
  {
    "pwntester/octo.nvim",
    config = function()
      require("octo").setup()
    end,
  },
  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup(require("noice").setup({
        presets = { inc_rename = true },
      }))
    end,
    vim.keymap.set("n", "<leader>ra", ":IncRename "),
  },
  ---------------------------------------
  --------------- EASE OF USE  ----------
  ---------------------------------------

  {
    "abecodes/tabout.nvim",
    lazy = false,
    config = function()
      require("tabout").setup({
        tabkey = "<Tab>", -- key to trigger tabout, set to an empty string to disable
        backwards_tabkey = "<S-Tab>", -- key to trigger backwards tabout, set to an empty string to disable
        act_as_tab = true, -- shift content if tab out is not possible
        act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
        default_tab = "<C-t>", -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
        default_shift_tab = "<C-d>", -- reverse shift default action,
        enable_backwards = true, -- well ...
        completion = false, -- if the tabkey is used in a completion pum
        tabouts = {
          { open = "'", close = "'" },
          { open = '"', close = '"' },
          { open = "`", close = "`" },
          { open = "(", close = ")" },
          { open = "[", close = "]" },
          { open = "{", close = "}" },
        },
        ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
        exclude = {}, -- tabout will ignore these filetypes
      })
    end,
    dependencies = { -- These are optional
      "nvim-treesitter/nvim-treesitter",
      "L3MON4D3/LuaSnip",
      "hrsh7th/nvim-cmp",
    },
    opt = true, -- Set this to true if the plugin is optional
    event = "InsertCharPre", -- Set the event to 'InsertCharPre' for better compatibility
    priority = 1000,
  },

  ---------------------------------------
  --------------- DEV FEATURES ----------
  ---------------------------------------

  {
    "mfussenegger/nvim-dap",
    enabled = vim.fn.has("win32") == 0,
    event = "User BaseFile",
    config = function()
      local dap = require("dap")
      -- C#
      dap.adapters.coreclr = {
        type = "executable",
        command = vim.fn.stdpath("data") .. "/mason/bin/netcoredbg",
        args = { "--interpreter=vscode" },
      }
      dap.configurations.cs = {
        {
          type = "coreclr",
          name = "launch - netcoredbg",
          request = "launch",
          program = function() -- Ask the user what executable wants to debug
            return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug", "file")
          end,
        },
      }

      -- F#
      dap.configurations.fsharp = dap.configurations.cs
    end, -- of dap config
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "rcarriga/cmp-dap",
      "jay-babu/mason-nvim-dap.nvim",
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    opts = { floating = { border = "rounded" } },
    config = function(_, opts)
      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
      dapui.setup(opts)
    end,
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  },
  {
    "rcarriga/cmp-dap",
    dependencies = { "nvim-cmp" },
    config = function()
      require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
        sources = {
          { name = "dap" },
        },
      })
    end,
  },
  { -- This plugin
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
    opts = {},
  },
  { -- The task runner we use
    "stevearc/overseer.nvim",
    commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1,
      },
    },
  },

  -------------------------------------
  --------------- UI RELATED ----------
  -------------------------------------
  -- show diagnostics and location list
  {
    "folke/trouble.nvim",
    opts = {
      modes = {
        mode = "diagnostics",
        preview = {
          type = "split",
          relative = "win",
          position = "right",
          size = 0.3,
        },
      },
    }, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xe",
        "<cmd>Trouble diagnostics toggle filter.severity=vim.diagnostic.severity.ERROR<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xE",
        "<cmd>Trouble diagnostics toggle filter.buf=0 filter.severity=vim.diagnostic.severity.ERROR<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>xs",
        "<cmd>Trouble symbols toggle focus=false type=split results.win.relative=win results.win.position=right<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>xr",
        "<cmd>Trouble lsp_references toggle focus=false type=split results.win.relative=win results.win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xl",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xq",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
      {
        "<leader>xt",
        "<cmd>TodoTrouble toggle focus=false type=split results.win.relative=win results.win.position=right<cr>",
        desc = "List of todos",
      },
    },
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      require("lsp_signature").setup(
        opts,
        vim.api.nvim_create_autocmd("LspAttach", {
          callback = function(args)
            local bufnr = args.buf
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if vim.tbl_contains({ "null-ls" }, client.name) then -- blacklist lsp
              return
            end
            require("lsp_signature").on_attach({
              -- ... setup options here ...
            }, bufnr)
          end,
        })
      )
      vim.keymap.set({ "n" }, "<C-x>", function()
        require("lsp_signature").toggle_float_win()
      end, { silent = true, noremap = true, desc = "toggle signature" })

      vim.keymap.set({ "n" }, "<Leader>k", function()
        require("lsp_signature").toggle_float_win()
      end, { silent = true, noremap = true, desc = "toggle signature" })
    end,
  },
})
require("lazy").setup(plugins, {})
