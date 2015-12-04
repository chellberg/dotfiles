# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi


alias ga='git add --all && git status'
alias py='python'
alias gp='git push'
alias gl='git pull --rebase'
alias gls='git log --stat'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gcom='git checkout master'
alias gcb='git checkout -b'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gsp='git status | fpp'
alias grhh='git reset --hard HEAD'
alias grc="git rebase --continue"
alias gri="git rebase --interactive"
alias griom="git rebase --interactive origin/master"
alias grom="git rebase origin/master"
alias grs="git rebase --skip"
alias undocommit='noglob git reset --soft HEAD^'
alias glgg='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue) <%an>%Creset"'
alias gcb='git checkout -b'
alias grpo='git remote prune origin'

git-push-branch(){
  CURRENT=$(git branch | grep '\*' | awk '{print $2}')
  git push -u origin "$CURRENT"
}
alias gpu=git-push-branch
