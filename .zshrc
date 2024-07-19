#
# ~/.zshrc
#
# shellcheck shell=zsh

##########################
### zsh plugin-manager ###
##########################
#eval "$(sheldon source)"

#####################################
### Source arch-zsh-configuration ###
#####################################
if [[ -e "$HOME/.config/zsh/arch-zsh-config.zsh" ]]; then
    source "$HOME/.config/zsh/arch-zsh-config.zsh"
fi

#######################################
#### Source arch zsh prompt (BLING) ###
#######################################
if [[ -e "$HOME/.config/zsh/arch-zsh-prompt.zsh" ]]; then
    source "$HOME/.config/zsh/arch-zsh-prompt.zsh"
fi

######################################################################################
### Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc. ###
### Initialization code that may require console input (password prompts, [y/n]    ###
### confirmations, etc.) must go above this block; everything else may go below.   ###
######################################################################################
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
