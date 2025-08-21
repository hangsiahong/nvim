return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- claude code integration
  {
    "greggh/claude-code.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    lazy = false, -- Load immediately
    priority = 100,
    config = function()
      require("claude-code").setup({
        -- Terminal window settings
        window = {
          split_ratio = 0.4,      -- 40% of screen height
          position = "botright",  -- Bottom right position
          enter_insert = true,    -- Auto enter insert mode
          hide_numbers = true,    -- Clean terminal look
          hide_signcolumn = true, -- Clean terminal look
          
          -- Floating window config (alternative setup)
          float = {
            width = "85%",
            height = "85%",
            row = "center",
            col = "center",
            relative = "editor",
            border = "rounded",
          },
        },
        -- File refresh settings
        refresh = {
          enable = true,
          updatetime = 100,
          timer_interval = 1000,
          show_notifications = true,
        },
        -- Git integration
        git = {
          use_git_root = true,
        },
        -- Shell settings
        shell = {
          separator = '&&',
          pushd_cmd = 'pushd',
          popd_cmd = 'popd',
        },
        -- Claude command
        command = "claude",
        command_variants = {
          continue = "--continue",
          resume = "--resume",
          verbose = "--verbose",
        },
        -- Key mappings
        keymaps = {
          toggle = {
            normal = "<leader>cc",     -- Main toggle (bottom split)
            terminal = "<C-x>",       -- Quick toggle in terminal
            variants = {
              continue = "<leader>cC", -- Continue conversation
              verbose = "<leader>cV",  -- Verbose mode
            },
          },
          window_navigation = true,   -- Enable <C-h/j/k/l>
          scrolling = true,          -- Enable <C-f/b>
        },
      })
    end,
  },

  -- telescope configuration for faster search
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          "target",
          "%.git/",
          "dist",
          "build",
          "%.lock",
        },
      },
    },
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
