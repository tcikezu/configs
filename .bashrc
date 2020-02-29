# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias python=python3
alias pip=pip3
alias ls='ls --color=auto'
# alias pushdrive='drive push -force -destination /sharedDocuments/ ~/gdrive/*'
alias mlphy='conda activate mlphy'
alias ptx='pdflatex *.tex'
alias twomonitors='xrandr --output HDMI1 --mode --right-of eDP1'
alias eclipse='~/Apps/eclipse/java-latest-released/eclipse/eclipse'

# Export Path variables
export GOPATH="$HOME/gopath"
export PATH="${PATH}:$GOPATH:$GOPATH/bin"
export PATH="${PATH}:$HOME/.local/bin"
export PATH="${PATH}:/opt/miniconda3/bin/"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/clark/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/clark/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/clark/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/clark/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate 



