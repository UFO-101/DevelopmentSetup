# General Setup
1. Install Rectangle (https://rectangleapp.com/)

    Import config using UI from RectangleConfig.json
    
2. Install AltTab (https://alt-tab-macos.netlify.app/)

2. Intall JetBrains toolbox

    Install Vim plugin
    Install Github CoPilot

3. Install VSCode.

    Add Vim plugin. Enable vimrc and set location to ~/.ideavimrc
    
    If holding keys down doesn't work try:
    ```
    defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
    ```
    Source: https://stackoverflow.com/questions/39972335/how-do-i-press-and-hold-a-key-and-have-it-repeat-in-vscode
    
4. Install Insomnia (for API dev) - https://insomnia.rest/
    
    
Another program to consider: Smooze

# Terminal Config

0. Install Homebrew (https://brew.sh/)

Run the suggested commands to add to path.

1. install yadm (https://yadm.io/)

2. Clone this repository into home directory using yadm:
    `yadm clone ....`

3. `brew install zsh`

4. Install oh-my-zsh: https://ohmyz.sh/

This seems to overwrite my `.zshrc` by default. You can check if there's any new configs worth having but overwise just use `yadm restore .zshrc`.

5. `brew install tmux`

6. `brew install --cask alacritty`
    ```
    infocmp alacritty
    ```
    Should return text without any errors. If it doesn't, download alacritty.info from https://github.com/alacritty/alacritty/tree/master/extra and run:
    ```
    sudo tic -xe alacritty,alacritty-direct ~/Downloads/alacritty.info
    ```
    This is so you can set `env: TERM: alacritty` in `.alacritty.yml` (which should already be done). Source: https://github.com/alacritty/alacritty/blob/master/INSTALL.md#post-build.

7. Install powerlevel10k fonts: https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k

The first step is:
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Then download and install the fonts at the link above.

8. Install oh-my-zsh plugins:
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
9. install tmux plugin manager

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Refresh tmux plugin manager (see below) and it should automatically install the plugins.

# Troubleshooting and Tips

yadm is basically a wrapper of git. It has the same commands so you can do `yadm status` etc.

If the symbols aren't working in `p10k configure` you aren't using the powerline font.

The oh-my-zsh plugins require some config in ~/.zshrc. It should already be done.

The prefix key for tmux is bound to Control+b (which is the default)
So to refresh tmux plugin manager do Control+b, shift+i

I had issues with launching Alacritty from spotlight/launchpad on M1 mac. Solution detailed here: https://github.com/alacritty/alacritty/issues/5419#issuecomment-1185836951

Vim-like input is enabled on command line with default oh-my-zsh plugin, `vi-mode`.
