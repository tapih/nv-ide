require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {"haskell"},
  highlight = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
  }
}
require'nvim-treesitter'.install = {'gcc'}
