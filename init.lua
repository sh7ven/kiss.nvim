vim.o.mouse	 			= 'a'
vim.o.autoindent 		= true
vim.o.expandtab			= false			-- set noexpandtab
-- yeah. tabs.
vim.o.shiftwidth		= 4
vim.o.tabstop			= 4
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

-- needs the GVim package, which is compiled with X support,
-- for clipboard functionality
vim.o.clipboard 		= 'unnamedplus'

-- for some reason, files with the .v extension weren't being recognized
-- as Verilog/SystemVerilog sources.
vim.cmd("au BufNewFile,BufFilePre,BufRead *.v setfiletype verilog")

require('username')
