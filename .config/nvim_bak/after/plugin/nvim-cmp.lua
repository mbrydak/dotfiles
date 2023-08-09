local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'copilot'},
    {name = 'nvim_lsp'},
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({

      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    })
  }
})
