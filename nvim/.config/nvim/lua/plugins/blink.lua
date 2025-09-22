---@module 'lazy'
---@type LazySpec
return {
  'saghen/blink.cmp',
  event = 'VimEnter',
  version = '1.*',
  dependencies = {
    'L3MON4D3/LuaSnip',
    'folke/lazydev.nvim',
  },
  opts = {
    keymap = {
      preset = 'default',
    },
    appearance = {
      nerd_font_variant = 'mono',
    },
    completion = {
      documentation = { auto_show = true, auto_show_delay_ms = 500 },
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'lazydev' },
      providers = {
        lsp = {
          name = 'LSP',
          module = 'blink.cmp.sources.lsp',
          transform_items = function(_, items)
            -- Exclude lsp keywords from autocomplete (if, else, while, ...)
            return vim.tbl_filter(function(item) return item.kind ~= require('blink.cmp.types').CompletionItemKind.Keyword end, items)
          end,
        },
        lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
      },
    },
    snippets = { preset = 'luasnip' },
    fuzzy = { implementation = 'lua' },
    signature = { enabled = true },
  },
}
