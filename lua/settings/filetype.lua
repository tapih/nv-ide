vim.api.nvim_exec([[
autocmd BufNewFile,BufRead /tmp/mutt-* set filetype=mail
autocmd BufNewFile,BufRead /*.rasi setf css
]], true)
