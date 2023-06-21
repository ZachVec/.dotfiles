# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vector/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/.pl10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#####################################
##          Path Variables         ##
#####################################
export PATH="$PATH:/home/vector/.local/bin"
export PATH="$PATH:/opt/clangd/bin"


#####################################
##          Proxy Commands         ##
#####################################
export hostip=$(cat /etc/resolv.conf | grep "nameserver" | cut -f 2 -d " ")
alias proxy='export https_proxy="http://${hostip}:7890";export http_proxy="http://${hostip}:7890";export all_proxy="socks5://${hostip}:7890";'
alias unproxy='unset all_proxy'
alias vim='nvim'
alias vi='nvim'


#####################################
##          Alias Commands         ##
#####################################
alias ll='ls -lah'

PATH="/home/vector/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/vector/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/vector/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/vector/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/vector/perl5"; export PERL_MM_OPT;

