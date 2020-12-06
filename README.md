# DevelopmentSetup
Terminal Config

First thing is to install yadm (https://yadm.io/)
Then clone this repository into home directory using yadm:

yadm clone ....

You need to install oh-my-zsh plugins:

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

You also need to install powerlevel10k fonts.
