# Software Prerequiste

## Xcode

``` bash
xcode-select --install
```

## Homebrew

[Brew](http://brew.sh/)



## Git

``` bash
brew install git
```

# Usage

## Apply Basic System Settings

``` bash
sh bin/apply_basic_settings
```

## Apply System Defaults

``` bash
sh bin/apply_default_settings
```

## Install Desktop Applications

``` bash
sh bin/install_homebrew_casks
```

## Install Brew base packages

``` bash
brew bundle --file=~/dev/dotfiles/homebrew/Brewfile
```

# Software Configuration

## Apply Software Symlink

``` bash
sh bin/apply_symlinks
```

## ZSH Setup

### Set Default Shell

``` bash
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
chsh -s $(which zsh)
```

### Prezto

[Prezto](https://github.com/sorin-ionescu/prezto.git)

``` bash
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
git clone --recursive https://github.com/belak/prezto-contrib  "${ZDOTDIR:-$HOME}/.zprezto/contrib"
git clone https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
cd && curl -fsSLO https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.purepower
```

### Custom configurations

edit `~/.zshenv` and set your own `$DEV_DIR` and `$DOTFILE_DIR`

### Spacemacs Github Integration

Grant access to repo and gist [Set Access
Tokens](https://github.com/settings/tokens)

``` bash
git config --global github.oauth-token <token>
```

### Setup Symlinks

``` bash
stow -v --target=$HOME --dir=$DOTFILE_DIR zsh
```

## Programming Dev setup

### asdf

``` shell
brew install asdf
```

Restart Shell

``` shell
sh bin/install_dev_env
```

### Alfred Integration

``` shell
ln -s $(which node) /usr/local/bin/node
```

## Install CLI Software

``` bash
export DOTFILE_DIR=<~/path/to/dotfile>
brew bundle --file=$DOTFILE_DIR/homebrew/Brewfile
```

## Vim

### Install

Might want to use SpaceVim instead

``` shell
mkdir -p ~/.vim/autoload
stow -v --target=$HOME --dir=$DOTFILE_DIR vim
stow -v --target=$HOME --dir=$DOTFILE_DIR ctags
```

### Plugin Installs

Run `vim`

`:PlugInstall`

## SpaceMacs

``` bash
mkdir -p ~/.spacemacs.d
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
stow -v --target=$HOME/.spacemacs.d --dir=$DOTFILE_DIR spacemacs
stow -v --target=$HOME --dir=$DOTFILE_DIR gtags
```

User develop branch

``` bash
cd ~/.emacs.d
git fetch
git checkout develop
git pull
```

### Gtag

[Download Global](https://www.gnu.org/software/global/download.html)

``` bash
tar xvzf <filenamee>
cd <global_dir>
./configure --with-universal-ctags=/usr/local/bin/ctags --with-sqlite3
./make install
```

### Markdown Support

``` bash
npm install -g vmd
```

## Tmux

    mkdir -p ~/.tmux/plugins
    stow -v --target=$HOME --dir=$DOTFILE_DIR tmux
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

### Install Plugins

run tmux ctrl-s shift-i

## FZF

    /usr/local/opt/fzf/install

## Tig

    stow -v --target=$HOME --dir=$DOTFILE_DIR tig

## Silver Searcher

    stow -v --target=$HOME --dir=$DOTFILE_DIR silver_searcher

## Ripgrep

    stow -v --target=$HOME --dir=$DOTFILE_DIR ripgrep

## Youtube-dl

    mkdir -p ~/.config/youtube-dl
    stow -v --target=$HOME --dir=$DOTFILE_DIR youtube-dl

## Alacritty

    stow -v --target=$HOME --dir=$DOTFILE_DIR alacritty

## Livestream

Configure Twitch Oauth

``` bash
livestreamer --twitch-oauth-authenticate
```

Copy the access<sub>token</sub> in URL to \~/.livestreamerrc

## KWM / KHD (Tilling Window Manager)

This is experimental.

[Chunkwmrc Window Manager](https://github.com/koekeishiya/chunkwm)

[Simple Keyboard Hot Keys](https://github.com/koekeishiya/skhd)

``` bash
stow -v --target=$HOME --dir=$DOTFILE_DIR chunkwmrc
```

# Post Install Settings

## OS X Options

### Fonts

[Powerline Fonts Repo](https://github.com/powerline/fonts)

[Input Mono](http://input.fontbureau.com/download/)

``` bash
sh bin/install_fonts
```

### Mouse

Set mouse to a faster track speed

Uncheck "Scroll direction: Natural"

## iTerm 2

Font: Fira Mono 12pt / Iosevka Term Slab [Night Owl
Theme](https://github.com/jsit/night-owl-iterm2-theme)