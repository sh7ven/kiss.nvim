# kiss.nvim
A minimal, bare-bones Neovim configuration based on the [KISS principle.](https://en.wikipedia.org/wiki/KISS_principle) 
To read more about the reason this repository exists, read [here](#why).

# Installation
```bash
$ git clone https://github.com/shivenkashyapp/kiss.nvim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

This should work across most Linux flavors. Just in case, verify if the value of:
```bash
$ echo "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
```

matches with (run from within Neovim):
```lua
:echo stdpath("config")
```

# Directory structure
```
├── init.lua  
└── lua  
   └── custom  
       ├── init.lua  
       ├── lazy  
       │   ├── gruvbox.lua  
       │   ├── init.lua  
       │   ├── lsp.lua  
       │   └── telescope.lua  
       └── lazy_init.lua  
```

  
# Pre-installed plugins
- [Lazy](https://lazy.folke.io/) (package manager)
- [Gruvbox](https://github.com/ellisonleao/gruvbox.nvim) (colorscheme)
- [cmp](https://github.com/hrsh7th/nvim-cmp) (LSP)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) (fuzzy finder)
  

# Python
In most modern Linux distributions, `pip` can no longer manage system-wide libraries, and it is advised to either use a virtual environment or download 
distro-specific packages.

You can pass the path to a Python binary in a virtual environment, to the `pythonPath` variable under `pyright` setup in `lua/custom/lazy/lsp.lua`.
```lua
python = {
    pythonPath = "/home/user/Venv/bin/python"
}
```

This is just an example for Pyright. If you opt to choose a different LSP for Python,
please read through plugin settings for that LSP.
  
  
# Keybinds
- `<Ctrl-e>` to open the fuzzy finder.  
That's it, lol.


# Extending / Customizing
`custom` is just a placeholder directory for one specific configuration. If you want to 
experiment with your own config without having to re-clone again and again, just make a new directory like `custom`.
Be creative! I have a config of my own name, and one called 'Caravan'.

To use a particular configuration, edit `config/nvim/init.lua`:
```lua
require('custom_config')
```

The same `init.lua` contains editor specific settings, which are independent of plugins.
For instance, `mouse` mode.


# Why?
I spent a lot of time trying to find a minimal configuration that setup basic utilities - a modern,
stable plugin manager, a legible colorscheme, and an LSP for autcompletion.

Most pre-existing configurations I looked at online were packed with a plethora of packages,
most of which no one would consider using. This configuration is aimed at being minimal, whilst being usable 
immediately after installation, while also having a super-fast startup.

This repo is *also* for people who don't want to spend massively unreasonable amounts of time creating a configuration from
scratch, like I did here. 

I'll probably write a short [guide](https://shivenkashyapp.github.io) on creating this from scratch.
But, on a second thought, that would defeat the purpose of this configuration existing. Meh.


# License
[GNU GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html). Simply put, do whatever you want with this code, there are no restrictions.
