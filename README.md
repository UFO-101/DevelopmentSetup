# DevelopmentSetup
Terminal Config

First thing is to install yadm (https://yadm.io/)
Then clone this repository into home directory using yadm:

yadm clone ....

You need to install oh-my-zsh plugins:

(I don't know why some of the lines are striked through)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

You also need to install powerlevel10k fonts: https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k

If the colour aren't working that means you need to set the terminal to 256 color.
If the symbols aren't working you aren't using the font.

You need to install tmux plugins manager (https://github.com/tmux-plugins/tpm)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

The prefix key for tmux is bound to Control+a
So to refresh tmux plugin manager do Control+a, shift+i
