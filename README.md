# kiss.nvim
A minimal, bare-bones Neovim configuration based on the [KISS principle](https://en.wikipedia.org/wiki/KISS_principle).

# Installation
```bash
$ git clone https://github.com/sh7ven/kiss.nvim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

This should work across most Linux flavors. Just in case, verify if the value of:
```bash
$ echo "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
```

matches with (run from within Neovim):
```lua
:echo stdpath("config")
```
  
# Plugins
- [Lazy](https://lazy.folke.io/)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP](https://github.com/neovim/nvim-lspconfig)
- [Gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
  

# Python
In most modern Linux distributions, `pip` can no longer manage system-wide libraries, and it is advised to either use a virtual environment or download 
distro-specific packages.

You can pass the path to a Python binary in a virtual environment, to the `pythonPath` variable under `pyright` setup in `lua/username/lazy/lsp.lua`.
```lua
python = {
    pythonPath = "/home/user/Venv/bin/python"
}
```
This is just an example for Pyright. If you opt to choose a different LSP for Python,
please read through plugin settings for that LSP.

# Extending / Customizing
`username` is just a placeholder directory for one specific configuration. If you want to 
experiment with your own config without having to re-clone again and again, just make a new directory like `custom`.
Be creative! I have a config of my own name, and one called 'Caravan' (Whiplash reference).

To use a particular configuration, edit `config/nvim/init.lua`:
```lua
require('custom_config')
```

# License
[GNU GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html). Simply put, do whatever you want with this code, there are no restrictions.
