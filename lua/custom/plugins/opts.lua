-- LSP Diagnostics Options Setup
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = '',
  })
end

sign { name = 'DiagnosticSignError', text = '' }
sign { name = 'DiagnosticSignWarn', text = '' }
sign { name = 'DiagnosticSignHint', text = '' }
sign { name = 'DiagnosticSignInfo', text = '' }

vim.diagnostic.config {
  virtual_text = true,
  signs = true,
  update_in_insert = true,
  underline = true,
  severity_sort = false,
  float = {
    border = 'rounded',
    source = true,
    header = '',
    prefix = '',
  },
}

vim.cmd [[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]]

-- Vimspector options
vim.cmd [[
let g:vimspector_sidebar_width = 85
let g:vimspector_bottombar_height = 15
let g:vimspector_terminal_maxwidth = 70
]]
