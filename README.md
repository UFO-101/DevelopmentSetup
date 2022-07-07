# General Setup
1. Install Rectangle (https://rectangleapp.com/)

    Import config using UI from RectangleConfig.json

2. Intall JetBrains toolbox

    Install Vim plugin
    Install Github CoPilot

3. Install VSCode.

    Add Vim plugin. Set vimrc to ~/.ideavimrc
    
    
Other program to consider: Smooze

# Terminal Config

0. Install Homebrew (https://brew.sh/)

1. install yadm (https://yadm.io/)

2. Clone this repository into home directory using yadm:
    yadm clone ....

3. brew install zsh

4. Install oh-my-zsh: https://ohmyz.sh/

5. ** brew install tmux

6. brew install --cask alacritty

    Copy alacritty.info from https://github.com/alacritty/alacritty/tree/master/extra.
    Run:
    sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
    Check it worked with:
    infocmp alacritty

    This is so you can set
    env: TERM: alacritty
    in .alacritty.yml 

7. Install powerlevel10k fonts: https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k

8. Install oh-my-zsh plugins:

(I don't know why some of the lines are striked through)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting



If the symbols aren't working you aren't using the font.

** I think the tmux plugin manager might install itself. But if it doesn't:
You need to install tmux plugins manager (https://github.com/tmux-plugins/tpm)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

The prefix key for tmux is bound to Control+b (which is the default)
So to refresh tmux plugin manager do Control+b, shift+i
