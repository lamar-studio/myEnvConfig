## the private config for alias
## autor:lamar

## unalias [name]                  #del the alias

alias reloadalias='source ~/.bashrc'  
alias editalias='vim ~/.bash_aliases && source ~/.bashrc'



# some aliases for grep SourceCode
alias fhgrep='find ./ -type f -name "*.h" | sort | xargs grep --color=auto'
alias fcgrep='find ./ -type f -name "*.c" -o -name "*.cpp" | sort | xargs grep --color=auto'
alias fsgrep='find ./ -type f -name "*.h" -o -name "*.cpp" -o -name "*.c"| sort | xargs grep --color=auto'





alias dfind='find -type d -name'  # find the folder/directory
alias ffind='find -type f -name'  # find the file




# tools
alias now='date +"%Y-%m-%d %T"'



#######@@=============@@
# Functions for alias.
 
# according the type to extract the file.
extract(){
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)   tar xjf $1        ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xf $1        ;;
            *.tbz2)      tar xjvf $1      ;;
            *.tgz)       tar xzvf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# compress
mktar(){ tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz(){ tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz(){ tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }

# make a dir and cd into it
mcd(){
    mkdir -pv "$@"
    cd "$@"
}

# if dir,cd into it. if file ,cd into where the file is
goto(){ [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }







