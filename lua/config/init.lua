require('config.plugins')
require('mason').setup()
local completion = require('config.completion')

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.numberwidth = 4

local TAB_WIDTH = 2
vim.opt.tabstop = TAB_WIDTH
vim.opt.shiftwidth = TAB_WIDTH
vim.opt.expandtab = true
vim.opt.scrolloff = 5

local opts = { remap = false, silent = true }
local opts_remap = { remap = true, silent = true }

-- vim.g.mapleader = ' '
vim.keymap.set('n', '<space>', '<plug>(easymotion-prefix)', opts_remap)
vim.keymap.set('v', '<space>', '<plug>(easymotion-prefix)', opts_remap)
vim.keymap.set('n', 'go', 'g%', opts_remap)
vim.keymap.set('i', '<c-c>', '<c-[>', opts_remap)

-- pane navigation
vim.keymap.set('n', '<c-h>', ':wincmd h<cr>', opts)
vim.keymap.set('n', '<c-j>', ':wincmd j<cr>', opts)
vim.keymap.set('n', '<c-k>', ':wincmd k<cr>', opts)
vim.keymap.set('n', '<c-l>', ':wincmd l<cr>', opts)

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<c-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('i', '<c-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local server_list = { 'sumneko_lua', 'tsserver' }
completion.setup(server_list, on_attach)
