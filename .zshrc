source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found


antigen bundle zsh-users/zsh-syntax-highlighting

case $(tty) in
(/dev/tty[1-9]) antigen theme AffanIndo/sunaku-zen;;
(*)             antigen theme agnoster;;
esac
#antigen theme robbyrussell

antigen apply

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

alias c=clear
