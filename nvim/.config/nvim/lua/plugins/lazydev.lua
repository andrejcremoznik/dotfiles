---@module 'lazy'
---@type LazySpec
return {
  'folke/lazydev.nvim',
  ft = 'lua',
  ---@module 'lazydev'
  ---@type lazydev.Config
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    library = {
      { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
    },
  },
}
