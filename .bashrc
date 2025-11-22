#------------------------------------------------------------------------
#                          Bash Prompt
#------------------------------------------------------------------------
# Get current git branch name
git_branch() {
    git rev-parse --abbrev-ref HEAD 2>/dev/null
}

# Check git status: return 0 if clean, 1 if dirty
git_dirty() {
    git diff --quiet 2>/dev/null && git diff --cached --quiet 2>/dev/null
}

# Build colored git segment
git_prompt() {
    local branch=$(git_branch)
    if [ -n "$branch" ]; then
        if git_dirty; then
            # Clean: green
            echo -e " \e[1;32m($branch)\e[0m"
        else
            # Dirty: red
            echo -e " \e[1;31m($branch)\e[0m"
        fi
    fi
}

# PS1: user@host <space> directory <space> git branch if exists
PS1='\[\e[1;32m\]\u@\h\[\e[0m\] \[\e[1;34m\]\w\[\e[0m\]$(git_prompt)\$ '
# to get it back to folder only path (very short) change '\w' to '\W' and vice versa




#-----------------------------------------------------------------
#                      Aliases
#-----------------------------------------------------------------
alias ug="sudo nixos-rebuild switch --flake /etc/nixos/#default-i3"
alias hm="home-manager switch --flake /etc/nixos/#phate"


