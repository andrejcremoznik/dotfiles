vim.filetype.add {
  extension = {
    gotmpl = 'gotmpl',
  },
  pattern = {
    ['.*/helm/.*%.tpl'] = 'helm',
    ['.*/helm/.*%.ya?ml'] = 'helm',
  },
}
