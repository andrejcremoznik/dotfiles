---@module 'lazy'
---@type LazySpec
return {
  {
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup {}

      -- Move using square brackets
      -- [B/[b/]b/]B - buffer first/backward/forward/last
      -- c - comment
      -- x - conflict marker
      -- d - diagnostic
      -- f - file on disk
      -- i - indent change
      require('mini.bracketed').setup {}

      -- Commenting
      -- gc, gcc
      require('mini.comment').setup {}

      -- Show indent line
      require('mini.indentscope').setup { symbol = '│', options = { try_as_border = true } }

      -- Jumping
      -- f - forward
      -- F - backward
      -- t - forward till
      -- T - backward till
      require('mini.jump').setup {}

      -- Moving lines and blocks
      -- M-h/j/k/l
      require('mini.move').setup {}

      -- Splitting / joining
      -- gS - toggle
      require('mini.splitjoin').setup {}

      -- Edit files as buffers
      require('mini.files').setup { mappings = { go_in_plus = 'l', go_in = 'L' } }

      -- Git diff
      require('mini.diff').setup { view = { style = 'sign' } }

      -- Simple and easy statusline.
      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function() return '%2l:%-2v' end

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
    keys = {
      {
        '<leader>m',
        function()
          local minifiles = require 'mini.files'
          if not minifiles.close() then
            minifiles.open(vim.api.nvim_buf_get_name(0), true)
          end
        end,
        mode = 'n',
        desc = 'Open [m]ini.files (file dir)',
      },
      {
        '<leader>M',
        function() require('mini.files').open(vim.uv.cwd(), true) end,
        mode = 'n',
        desc = 'Open [M]ini.files (project dir)',
      },
    },
  },
}
