# General Setup
1. Install Rectangle (https://rectangleapp.com/)

    Import config using UI from RectangleConfig.json

2. Intall JetBrains toolbox

    Install Vim plugin
    Install Github CoPilot

3. Install VSCode.

    Add Vim plugin. Enable vimrc and set location to ~/.ideavimrc
    
    
Another program to consider: Smooze

# Terminal Config

0. Install Homebrew (https://brew.sh/)

1. install yadm (https://yadm.io/)

2. Clone this repository into home directory using yadm:
    `yadm clone ....`

3. `brew install zsh`

4. Install oh-my-zsh: https://ohmyz.sh/

5. `brew install tmux`

6. `brew install --cask alacritty`

    Copy alacritty.info from https://github.com/alacritty/alacritty/tree/master/extra:
    ```
    sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
    ```
    Check it worked with:
    ```
    infocmp alacritty
    ```

    This is so you can set `env: TERM: alacritty` in `.alacritty.yml` (which should already be done)

7. Install powerlevel10k fonts: https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k

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
