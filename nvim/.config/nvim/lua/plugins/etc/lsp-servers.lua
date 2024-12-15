-- Enable the following language servers
--
--  Add any additional override configuration in the following tables. Available keys are:
--  - cmd (table): Override the default command used to start the server
--  - filetypes (table): Override the default list of associated filetypes for the server
--  - capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
--  - settings (table): Override the default settings passed when initializing the server.
return {
  lua_ls = { -- Lua
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
        diagnostics = {
          globals = { 'vim' },
          -- disable = { 'missing-fields' },
        },
      },
    },
  },
  taplo = {}, -- TOML
  bashls = {}, -- Shell script
  somesass_ls = {}, -- Sass CSS
  denols = {}, -- JavaScript / TS
  intelephense = {}, -- PHP
}
