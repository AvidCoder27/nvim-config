return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate', -- Ensures treesitter parsers are updated
  event = { 'BufReadPost', 'BufNewFile' }, -- Load on opening files
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'lua', 'rust', 'toml' }, -- Auto-install parsers for these languages
      auto_install = true, -- Automatically install missing parsers
      sync_install = false,
      ignore_install = {},
      modules = {},
      highlight = {
        enable = true, -- Enable syntax highlighting
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true }, -- Fixes indentation issues
      rainbow = {
        enable = true, -- Enable rainbow parentheses
        extended_mode = true, -- Highlight more than just parentheses
        max_file_lines = nil, -- No file size limit
      },
    }
  end,
}
