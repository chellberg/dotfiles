# HealthPro specific

alias rmbjs='rm ~/rms/app/assets/javascripts/bundle.js'
alias rmorig='rm **/*.orig'
alias prodc='source /Users/Corin/rms/bin/catalyze.sh -E healthproprod console app01 "bundle exec rails console"'
alias stagingc='source /Users/Corin/rms/bin/catalyze.sh -E healthprostaging console app01 "bundle exec rails console"'
alias dw='mux start rms'
alias dwo='mux start onboarding'
alias rl='bundle exec rake db:restore_prod_backup && rake db:migrate'
alias cdr='cd ~/rms'

# -------------------------------------------------------------------
# OTHER aliases
# -------------------------------------------------------------------
 
alias reload="source ~/.zshrc"
alias cl='clear'
alias vim='mvim -v'
alias vi='mvim -v'
alias -g G='|grep '
alias -s html=vim
alias -s erb=vim
alias -s rb=vim

alias tks='tmux kill-server'
