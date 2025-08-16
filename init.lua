vim.o.mouse	= 'a'
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.relativenumber 	= true
vim.o.number 			= true
vim.o.smartindent 		= true
vim.o.wildmenu 			= true
vim.o.hidden 			= false
vim.o.ignorecase 		= true
vim.o.smartcase			= true
vim.o.wrap				= false
vim.o.cursorline		= false
vim.o.hlsearch			= true
vim.api.nvim_set_option("clipboard","unnamedplus") 

-- tabs are a disaster
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.g.indent = 2
-- apply indent to buffer
vim.api.nvim_create_autocmd({ "BufEnter" }, { pattern = "*.*" , command = "let &shiftwidth=g:indent | let &tabstop=g:indent | set expandtab" })

vim.cmd("au BufNewFile,BufFilePre,BufRead *.v setfiletype verilog")

-- treesitter stuff
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
  sync_install = false,
  auto_install = false,
  ignore_install = { "javascript" },

  highlight = {
    enable = true,
    disable = { "c", "rust", "python" },

    additional_vim_regex_highlighting = false,
  },
}


require('username')
