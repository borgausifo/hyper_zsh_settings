
# Set the tab title to the current working directory before each prompt
function tabTitle () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"
}

# Enable tab completion
#source ~/git-completion.bash

#------------------
# Aliases (for a full list of aliases, run `alias`)
#------------------

# Note: the following aliases overwrite any aliases specified in the Oh My Zsh plugins

# Git Aliases
# alias gcm="git commit -m"
# alias gcam='git commit -a -m'
# alias gca="git commit --amend --no-edit"
# alias gcae="git commit --amend"
# alias gcaa="git add --all && git commit --amend --no-edit"
# alias gcaae="git add --all && git commit --amend"
# alias gap="git add -p"
# alias gnope="git checkout ."
# alias gwait="git reset HEAD"
# alias gundo="git reset --soft HEAD^"
# alias greset="git clean -f && git reset --hard HEAD" # Removes all changes, even untracked files
# alias gl="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# alias glb='git log --oneline --decorate --graph --all'
# alias gst='git status -s'
# alias gpl="git pull --rebase"
# alias gps="git push"
# alias gpsf="git push --force-with-lease"
# alias grb="git rebase"
# alias grbi='git rebase -i'
# alias grba='git rebase --abort'
# alias grbc='git rebase --continue'
# # Remove local branches that have already been merged in the remote repository
# alias gcmb="git branch --merged | grep -Ev '(^\*|master)' | xargs git branch -d"
# # Sets the upstream branch to be the same branch as the locally named branch
# alias gset='git branch --set-upstream-to=origin/`git symbolic-ref --short HEAD`'
# # Do an interactive rebase back N number of commits (e.g. grn 3)
# grn() { git rebase -i HEAD~"$1"; }
# # Do an interactive rebase to a supplied commit hash (e.g. grbc 80e1625)
# grbic() { git rebase -i "$1"; }

# ------------------ # 


# General Aliases

# View files/folder alias using colorsls (https://github.com/athityakumar/colorls)
alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long'
# Clear terminal
alias c='clear'
# Quick Lunch for Sublime Text Editor
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"


 # ------------------ #

# added by Anaconda3 4.4.0 installer
 export PATH="/Users/borgausifo/anaconda/bin:$PATH"
#!! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/borgausifo/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
   \eval "$__conda_setup"
else
   if [ -f "/Users/borgausifo/opt/anaconda3/etc/profile.d/conda.sh" ]; then
       . "/Users/borgausifo/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/borgausifo/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
#<<< conda init <<<

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH


# Autocomplete Time
#[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


# Set Spaceship ZSH as a prompt
autoload -U promptinit
promptinit
prompt spaceship

source $(dirname $(gem which colorls))/tab_complete.sh

# Add colors to terminal commands (green command means that the command is valid)
source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh