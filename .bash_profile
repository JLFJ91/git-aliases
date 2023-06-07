function git_current_branch() {
  git branch --show-current
}

# Add & Commit
alias g='git'

alias ga='git add'
alias gaa='git add -a'
alias gapa='git add --patch'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcan!='git commit -v -a --no-edit --amend'
alias gcans!='git commit -v -a -s --no-edit --amend'
alias gcam='git commit -a -m'
alias gcsm='git commit -s -m'
alias gcmsg='git commit -m'
alias gcs='git commit -S'

# Checkout & Branch
alias gco='git checkout'
alias gcm='git checkout main' # In Reference DOC is 'master'
alias gcd='git checkout develop'
alias gcb='git checkout -b'
alias gbnm='	git branch --no-merged'
alias gbr='git checkout develop'
function ggsup() {
  git branch --set-upstream-to=origin/$(git_current_branch)
}

# Logs
alias glg='git log --stat --max-count = 10'
alias glgg='git log --graph  --max-count = 10'
alias glgga='git log --graph --decorate --all'
alias glo='git log --oneline --decorate --color'
alias glog='git log --oneline --decorate --graph --color'
alias glgp='git log --stat --patch'
alias glp="git log --pretty=$1"

# Clone, Push, Fetch, Pull and Merge
alias gcl='git clone --recursive'
alias gp='git push'
function ggp() {
  git push origin $(git_current_branch)
}
alias ggpush=$(ggp)
function gpsup() {
  git push --set-upstream origin $(git_current_branch)
}
alias gpoat='git push origin -a && git push origin --tags'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'
function ggl() {
  git pull origin $(git_current_branch)
}
function ggpull() {
  git pull origin $(git_current_branch)
}
function ggpur() {
  git pull --rebase origin $(git_current_branch)
}
alias glum='git pull upstream main'
alias gup='git pull --rebase'
function ggpnp() {
  git pull origin $(git_current_branch) && git push origin $(git_current_branch)
}
alias gm='git merge'
alias gmom='git merge origin/$(git_main_branch)'
alias gmt='git mergetool --no-prompt'
alias gmtvim='git mergetool --no-prompt --tool=vimdiff'
alias gmum='git merge upstream/main'
alias gma='git merge --abort'

# Remotes
alias gr='git remote'
alias grv='git remote -v'
alias grmv='gir remote rename'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grup='git remote update'
alias gra='git remote add' # Not includes in in DOC

# Work in Progress
alias gst='git status'
alias gss='git status --short'
alias gsta='git status --short'
alias gstaa='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias grhh='git reset HEAD --hard'
alias gclean='git clean -fd'
alias gpristine='git reset --hard && git clean -dfx'
# gwip not included
# gunwip not included

# Rewriting History
alias grbi='git rebase -i'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbs='git rebase --skip'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'

# What changed?
alias gbl='git blame -b -w'
alias gbs='	git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'
alias gwch='git whatchanged -p --abbrev-commit --pretty = medium'

# UI Tools & SVN
alias gg='git gui citool'
alias gga='git gui citool --amend'
alias gk='gitk --all --branches'
alias gsd='git svn dcommit'
alias gsr='git svn rebase'
alias git-svn-dcommit-push='git svn dcommit && git push github main:svntrunk'

# Miscellaneous
alias gcf='git config --list'
alias gcount='git shortlog -sn'
alias gdct='git describe --tags `git rev-list --tags --max-count=1'
alias gignore='git update-index --assume-unchanged'
alias gunignore='git update-index --no-assume-unchanged'
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias gts='git tag -s'
alias gvt='git verify-tag'
alias gtv='git tag | sort -V'
alias gsps='git show --pretty = short --show-signature'
# grt not included
