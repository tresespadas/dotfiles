# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# Mis aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Mis scripts
if [ -f ~/.bash_scripts ]; then
  . ~/.bash_scripts
fi

# Si tienes starship instalado
# evail "$(startship init bash)"
