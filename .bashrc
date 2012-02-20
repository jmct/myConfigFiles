#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='{\d \t}\n[\u@\h \W]-> '
PS1='[\u@\h \W] > '

EDITOR=vim
