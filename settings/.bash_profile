# ls
alias l='ls -Gh'
alias ll='ls -lGh'
alias la='ls -lGah'
alias p='pwd'

# git
alias gs='git status'
alias gadd='git add'
alias gcm='git commit -m'
alias gcamd='git commit --amend'
alias gb='git branch'
alias cherry='git cherry-pick'
alias gckt='git checkout'

# cd
alias cdhub='cd /Users/agrumbac/Documents/github'
alias cdvog='cd /Users/agrumbac/Documents/vog'
mc () {
	mkdir -p $1 && cd $1
}

# grep
alias ungrep='grep -v'

# brew
alias brew='$HOME/homebrew/bin/brew'

# atom
atom () { for i; do touch $i && open -a atom $i; done; }

# latex
alias pdflatex='/Library/TeX/Root/bin/x86_64-darwin/pdflatex'

# git config
git config --global user.email "agrumbac@student.42.fr"
git config --global user.name "grumbach"
git config --global core.excludesfile ~/.gitignore_global

# homebrew path
export PATH=~/homebrew/bin:$PATH

# free
alias free='rm -rf ~/Library/*42_cache* &&  df -h ~'
alias used='du -d1 -h'

# the fuck is that
fuck () {
    TF_PYTHONIOENCODING=$PYTHONIOENCODING;
    export TF_ALIAS=fuck;
    export TF_SHELL_ALIASES=$(alias);
    export TF_HISTORY="$(fc -ln -10)";
    export PYTHONIOENCODING=utf-8;
    TF_CMD=$(
    thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
    ) && eval $TF_CMD;
    unset TF_HISTORY;
    export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
    test -n "$TF_CMD" && print -s $TF_CMD
}

# Project init
alias init='/Users/agrumbac/Documents/github/project_init/project_init.bash'

# Linux
alias linux='ssh ubuntu@35.180.5.48 -i /Users/agrumbac/Documents/my_stuff/linux/agrum_key.pem'
