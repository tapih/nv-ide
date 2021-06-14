-- Basic
vim.cmd[[function! OpenBufferNumber()
    let count = 0
    for i in range(0, bufnr("$"))
        if buflisted(i)
            let count += 1
        endif
    endfor
    return count
endfunction
]]
vim.cmd[[
function! CloseOnLast()
    if OpenBufferNumber() <= 1
        q
    else
        bd
    endif
endfunction
]]

vim.api.nvim_set_keymap('n', '<CR>', ':<C-u>w<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-p>', '<Up>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-n>', '<Down>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'q', ':<C-u>call CloseOnLast()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'Q', 'q', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'U', '<C-r>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-r>', '<Nop>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-y>', '<C-v>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'vy', 'ggVG', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'H', '^', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'L', '$', {noremap = true, silent = false})
vim.api.nvim_set_keymap('v', 'H', '^', {noremap = true, silent = false})
vim.api.nvim_set_keymap('v', 'L', '$', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'n', 'nzz', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'N', 'Nzz', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '*', 'nzz', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '#', '#zz', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'g*', 'g*zz', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'g#', 'g#zz', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', ';', ':', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', ':', 'm', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'm', ';', {noremap = true, silent = false})
vim.api.nvim_set_keymap('v', ';', ':', {noremap = true, silent = false})
vim.api.nvim_set_keymap('v', ':', 'm', {noremap = true, silent = false})
vim.api.nvim_set_keymap('v', 'm', ';', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'tp', ':<C-u>bprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tn', ':<C-u>bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tz', ':<C-u>noh<CR>', { noremap = true, silent = true })
-- Layout
vim.api.nvim_set_keymap('n', '<F3>', ':set number! relativenumber!<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<F7>', ':NvimTreeToggle<CR>', {noremap = false, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gd', ':DiffviewOpen<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<leader>gc', ':DiffviewClose<CR>', {noremap = false, silent = false})
-- Ctrlsf
vim.api.nvim_set_keymap('n', '<C-F>f', '<Plug>CtrlSFPrompt', {noremap = false, silent = false})
vim.api.nvim_set_keymap('v', '<C-F>f', '<Plug>CtrlSFVwordExec', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<C-F>n', '<Plug>CtrlSFCwordExec', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '<C-F>t', ':CtrlSFToggle<CR>', {noremap = true, silent = false})
-- Easy-align
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = false})
-- Vim-sneak
vim.api.nvim_set_keymap('n', 'f', '<Plug>Sneak_f', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'F', '<Plug>Sneak_F', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 't', '<Plug>Sneak_t', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'T', '<Plug>Sneak_T', {noremap = false, silent = false})
-- EasyMotion
vim.api.nvim_set_keymap('n', ',', '<Plug>(easymotion-s)', {noremap = false, silent = false})
-- LSP
vim.api.nvim_set_keymap('n', '<space>,', ':lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>;', ':lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>a', ':lua vim.lsp.diagnostic.code_action()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>d', ':lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>f', ':lua vim.lsp.buf.formatting()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>h', ':lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>m', ':lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>r', ':lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>s', ':lua vim.lsp.buf.document_symbol()<CR>', {noremap = true, silent = true})
-- Spectre
vim.api.nvim_set_keymap('n', '<leader>S', ":lua require('spectre').open()<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap('v', '<leader>S', ":lua require('spectre').open_visual()<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>Sw', "viw:lua require('spectre').open_visual()<CR>", {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>sp', "viw:lua require('spectre').open_file_search()<CR>", {noremap = true, silent = false})
-- Telescope
vim.api.nvim_set_keymap('n', '<leader>r', ":lua require('telescope.builtin').live_grep()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>bb', ":lua require('telescope.builtin').buffers()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>m', ":lua require('telescope.builtin').marks()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>t', ":lua require('telescope.builtin').treesitter()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>l', ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', ":lua require('plugins.telescope').project_files()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>p', ":lua require('telescope').extensions.project.project{}<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>c', ":lua require('plugins.telescope').my_git_commits()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>g', ":lua require('plugins.telescope').my_git_status()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>b', ":lua require('plugins.telescope').my_git_bcommits()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>n', ":lua require('plugins.telescope').my_note()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gc', ':Octo issue create<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>i', ':Octo issue list<CR>', {noremap = true, silent = false})
-- HlsLens
vim.api.nvim_set_keymap('n', 'n', "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '*', "*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '#', "#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'g*', "g*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'g#', "g#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
-- Todo-comments
vim.api.nvim_set_keymap('n', '<leader>to', ':TodoTelescope<CR>', {noremap = true, silent = false})
-- Fterm
vim.api.nvim_set_keymap('n', '<F5>', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<F5>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
-- Browser
vim.api.nvim_set_keymap('n', 'tb', '<Plug>(openbrowser-smart-search)', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', 'tm', '<Plug>(openbrowser-smart-search)', { noremap = false, silent = true })
-- Markdown
vim.api.nvim_set_keymap('n', 'tm', ':<C-u>MarkdownPreview<CR><CR>', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', 'tx', ':<C-u>TableFormat<CR>', { noremap = false, silent = true })

