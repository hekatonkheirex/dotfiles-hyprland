# Hyprland Rice
## My personal Hyprland config
___
> ### <div align="center">*-- Disclaimer --*   </div>
> *I am not a developer/programmer, just a Linux enthusiast. All this configurations are just what I learned along the way by myself. You may encounter some redundant lines of code.*
___
<img src="https://i.imgur.com/aNzYtcH.jpg">

* **Distro** • [Arch Linux](https://archlinux.org/) 🐧
* **Window Manager** • [Hyprland](https://hyprland.org/) 💧
* **Colorscheme** • [Gruvbox](https://github.com/sainnhe/gruvbox-material) 🟫
  * **Backup Colorscheme** • [Catppuccin](https://github.com/catppuccin) 🐈
  * **Backup Colorscheme** • [Rosé Pine](https://rosepinetheme.com/) 🌹
* **Shell** • [Zsh](https://www.zsh.org) 🐚 with
  * [OhMyZsh](https://ohmyz.sh/) 🧑‍🤝‍🧑 with
    * [zsh-autosuggestion](https://github.com/zsh-users/zsh-autosuggestions)
    * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
    * [zsh-completions](https://github.com/zsh-users/zsh-completions)
  * [Starship](https://github.com/starship/starship) 🚀
* **Terminal** • [WezTerm](https://github.com/wez/wezterm) 💻
  * **Backup Terminal** • [Kitty](https://sw.kovidgoyal.net/kitty/) 🐱
* **Panel** • [Waybar](https://github.com/Alexays/Waybar) 🍫 but the [patched version for Hyprland](https://aur.archlinux.org/packages/waybar-hyprland-git)
* **Notication Daemon** • [Dunst](https://github.com/dunst-project/dunst) 🔔
* **Launcher** • [Rofi](https://github.com/davatorium/rofi) ⚓ with [rofimoji](https://github.com/fdw/rofimoji) 😐
* **File Manager** • [Thunar](https://archlinux.org/packages/extra/x86_64/thunar/) 🗄️
* **Music player** • [Spotify](https://open.spotify.com/) 🪕 with [spicetify-cli](https://spicetify.app/) and [Catppuccin spicetify theme](https://github.com/catppuccin/spicetify)
* **Editor** • [Neovim](https://neovim.io/) 📝  
  <details>
  <summary>Installed plugins</summary>

    * [Packer](https://github.com/wbthomason/packer.nvim)
    * [lualine](https://github.com/nvim-lualine/lualine.nvim)
    * [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
    * [bufferline](https://github.com/akinsho/bufferline.nvim)
    * [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
    * [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
    * [nvim-ts-rainbow](https://github.com/HiPhish/nvim-ts-rainbow2)
    * [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
    * [which-key](https://github.com/folke/which-key.nvim)
    * [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    * [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
    * [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
    * [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
    * [cmp-path](https://github.com/hrsh7th/cmp-path)
    * [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
    * [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
    * [cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip)
    * [vim-vsnip](https://github.com/hrsh7th/vim-vsnip)
    * [lspkind-nvim](https://github.com/onsails/lspkind.nvim)
    * [mason.nvim](https://github.com/williamboman/mason.nvim)
    * [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
    * [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
    * [twilight.nvim](https://github.com/folke/twilight.nvim)
    * [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
    * [nvim-comment](https://github.com/terrortylor/nvim-comment)
    * [alpha-nvim](https://github.com/goolord/alpha-nvim)
    * [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
    * There's some other colorschemes inside `lua/plugins.lua` that I used in the past, but I will leave it there just in case.
  </details>  

* **Backup Editor** • [Visual Studio Code](https://code.visualstudio.com/) 📝
  <details>
  <summary>Installed plugins</summary>

     * [Catppuccin for VSCode](https://marketplace.visualstudio.com/items?itemName=Catppuccin.catppuccin-vsc)
     * [Gruvbox Material](https://marketplace.visualstudio.com/items?itemName=sainnhe.gruvbox-material)
     * [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
     * [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
     * [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
     * [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
     * [Rasi](https://marketplace.visualstudio.com/items?itemName=dlasagno.rasi)
     * [Rosé Pine](https://marketplace.visualstudio.com/items?itemName=mvllow.rose-pine) 
     * [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
  </summary>

## Before installation note
*You can review the `pkglist.txt` file to remove the packages you don't want and replace the ones you like, but I cannot guarantee if don't work as expected. Please, read the disclaimer*

## Installation
1. Do a fresh Arch Linux installation. *Remember to install `git` package during installation*. *You can also install on your existing installation, just skip to section 5*.
2. Install `paru`. *You can install whatever version you like, I prefer the binary version*. *You can also use whatever AUR helper you want, but remeber to uninstall `paru` at the end of the installation or remove the `paru-bin` line inside the `pkglist.txt` file*  
```
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg -si
```  
3. Fork this repository or download it.  
4. If you forked it, use [yadm](https://yadm.io/) to download your forked repo.
  ```
  yadm clone https://github.com/youruser/yourforkedrepo.git
  ```  
5. If you downloaded it or cloned it, copy everything to your home directory (all the .config and .local directory, and all the *" . "* files as well).
6. Use `paru` (or the AUR helper of choice) to install everything in the `pkglist.txt` file. *You can use `pacman` too, but it won't install the AUR packages*.
```
paru -S --needed - < pkglist.txt
```  