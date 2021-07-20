# 📗 mrLuisFer's - Neovim Config
![](./doc/screenshot-init-vim.PNG)

An explanation of how to use this config in Windows is in [this video - Youtube.com](https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A)

## ⚡ About

This is my personal config and adapted to my needs, but it can be easily adapted to any config, as well as separate vim files

This will be adapted for **Windows** and **Linux** systems
And they will correct things in the future

### 🌱 Contribute

You can contribute by making a **pull request** with any _fix_ or _feature_ that you want to add: D

If you don't have an idea, you can follow these steps:

- Fork the project (optional in case you have a permission error)
  Or clone it on your local machine

- Create a new branch with:

  ```bash
  git checkout -b <new branch>
  ```

- When you have all the changes you have:

  ```bash
  git add.
  ```

  ```bash
  git commit -m "a description"
  ```

  ```bash
  git push origin <new branch>
  ```

And do a **pull request** to the **main** branch

### 📦 Requirements

- **Vim-Plug**

- **Git**

- **RipGrep**

- **nvim** C:

## 🦄 Usage
When you clone the repository, please rename the file neovim-dotfiles to nvim so that it is recognized by Neovim

### 📚 Install Neovim:
  For **Windows** run one of the two commands within **powershell**, you can use **choco** or **scoop**
  ```
  scoop install neovim
  
  # Or

  choco install neovim -y
  ```
  
  And for **Linux** and **MacOs** : [neovim/wiki/Installing-Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
  
### 🌙 Install Manager:
  In this config use vim plug to handle and install plugins

  To install **Vim Plug** you can run any of these commands

  Linux, Unix
  ```bash
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  ```
  
  Linux (Flatpak)
  ```bash
  curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```
  
  Windows (Powershell)
  ```bash
  iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
  ```
  
  More information about vim plug:
  - [Documentation](https://github.com/junegunn/vim-plug)
  - [Tutorial](https://github.com/junegunn/vim-plug/wiki/tutorial)
  - [Requirements](https://github.com/junegunn/vim-plug/wiki/requirements)
  
### 📘 Setup Windows:
  ```
  cd %APPDATA/Local/
  
  git clone -b main https://github.com/mrLuisFer/neovim-dotfiles.git .
  
  echo "Cloned the configuration :D"
  ```


### 🐧 Setup Linux:
  ```
  mkdir -p $HOME/.config/nvim
  
  cd $HOME/.config/nvim
  
  git clone -b main https://github.com/mrLuisFer/neovim-dotfiles.git .
  
  echo "Cloned the configuration :D"
  ```

### 🍎 Setup MacOs:
  ```
  mkdir -p $HOME/.config/nvim
  
  cd $HOME/.config/nvim
  
  git clone -b main https://github.com/mrLuisFer/neovim-dotfiles.git .
  
  echo "Cloned the configuration :D"
  ```

### 🌈 Colorschemes
If you do not like the color that comes by default, you can execute the command inside **neovim:** `:colorscheme + TAB` and you will see a list of themes that you can select

When you find one you like, go to `init.vim` and search with *neovim* `/colorscheme` and write down the name of the **theme** you want to use.

## 🐊 CoC Extensions
[Whats Coc?](https://github.com/neoclide/coc.nvim)

If you want to **install** or **add** an extension for **Coc** you can check the following page and without modifying anything unless necessary, just **run the command** and it will be ready to use

Install extensions like:

```
:CocInstall coc-json coc-tsserver
```

## ⚠ Warning

It may be that when you enter the cloned configuration in nvim for the first time, you will get multiple errors

But don't worry just run **:PlugInstall**
Several plugins will be downloaded, then **exit and enter neovim again**

[You can find more extensions here](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)

## 🐙 Change Repository

In maintaining...
