return {
	'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  -- NOTE: Plugins can also be configured to run Lua code when they are loaded.
  --
  -- This is often very useful to both group configuration, as well as handle
  -- lazy loading plugins that don't need to be loaded immediately at startup.
  --
  -- For example, in the following configuration, we use:
  --  event = 'VimEnter'
  --
  -- which loads which-key before all the UI elements are loaded. Events can be
  -- normal autocommands events (`:help autocmd-events`).
  --
  -- Then, because we use the `config` key, the configuration only runs
  -- after the plugin has been loaded:
  --  config = function() ... end

{
  -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').register {
      { "<leader>c", group = "[C]ode" },  -- Defines a group for <leader>c
      { "<leader>c_", hidden = true },    -- Hides the rest of the <leader>c mappings

      { "<leader>d", group = "[D]ocument" },  -- Defines a group for <leader>d
      { "<leader>d_", hidden = true },    -- Hides the rest of the <leader>d mappings

      { "<leader>r", group = "[R]ename" },  -- Defines a group for <leader>r
      { "<leader>r_", hidden = true },    -- Hides the rest of the <leader>r mappings

      { "<leader>s", group = "[S]earch" },  -- Defines a group for <leader>s
      { "<leader>s_", hidden = true },    -- Hides the rest of the <leader>s mappings

      { "<leader>w", group = "[W]orkspace" },  -- Defines a group for <leader>w
      { "<leader>w_", hidden = true },    -- Hides the rest of the <leader>w mappings

      { "<leader>t", group = "[T]oggle" },  -- Defines a group for <leader>t
      { "<leader>t_", hidden = true },    -- Hides the rest of the <leader>t mappings

      { "<leader>h", group = "Git [H]unk" },  -- Defines a group for <leader>h
      { "<leader>h_", hidden = true },    -- Hides the rest of the <leader>h mappings
    }

    -- Visual mode
    require('which-key').register({
      { "<leader>h", desc = "Git [H]unk", mode = "v" },  -- Describes <leader>h in visual mode
    })
  end,
},
}
