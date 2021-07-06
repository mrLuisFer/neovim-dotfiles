## 📗 mrLuisFer's - Neovim Config

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

### Install Neovim Windows:
  Reference: https://github.com/neovim/neovim/wiki/Installing-Neovim
  ```
  scoop install neovim
  
  # Or

  choco install neovim -y
  ```
  
### 📘 Setup Windows:
  ```
  cd %APPDATA/Local/
  
  git clone https://github.com/mrLuisFer/neovim-dotfiles.git
  
  echo "Cloned the configuration :D"
  ```


### 🐧 Setup Linux:
  ```
  mkdir -p $HOME/.config/nvim
  
  cd $HOME/.config/nvim
  
  git clone https://github.com/mrLuisFer/neovim-dotfiles.git
  
  echo "Cloned the configuration :D"
  ```

### 🍎 Setup MacOs:
  ```
  mkdir -p $HOME/.config/nvim
  
  cd $HOME/.config/nvim
  
  git clone https://github.com/mrLuisFer/neovim-dotfiles.git
  
  echo "Cloned the configuration :D"
  ```

### 🌈 Colorschemes
If you do not like the color that comes by default, you can execute the command inside **neovim:** `colorscheme + TAB` and you will see a list of themes that you can select

When you find one you like, go to `init.vim` and search with *neovim* `/colorscheme` and write down the name of the **theme** you want to use.

