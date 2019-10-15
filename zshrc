# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/zspatter/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="fletcherm"
ZSH_THEME=powerlevel10k/powerlevel10k
# ZSH_THEME="powerlevel9k/powerlevel9k"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    # built-in plugins
        autopep8
        bgnotify
        colored-man-pages
        colorize
        # command-not-found
        copydir
        copyfile
        dircycle
        extract
        fzf
        git
        git-auto-fetch
        github
        gitignore
        history
        navi
        pep8
        pip
        pipenv
        safe-paste
        sublime
        taskwarrior
        thefuck

    # custom plugins
        auto-color-ls
        autoswitch_virtualenv
        autoupdate
        # careful_rm
        evalcache
        fast-syntax-highlighting
        fzf
        hacker-quotes
        k
        oh-my-matrix
        send
        zsh-256color
        zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $(dirname $(gem which colorls))/tab_complete.sh
source $ZSH/custom/plugins/calc/calc.plugin.zsh                                 # cli calculator in zsh
source $ZSH/custom/plugins/shell-plugins/explain-shell/zsh-explain-shell.zsh    # explain shell plugin
source $ZSH/custom/plugins/forgit/forgit.plugin.zsh                             # forgit plugin
source $ZSH/custom/plugins/emoji-cli/emoji-cli.plugin.zsh                       # emoji-cli plugin

export AUTOSWITCH_DEFAULT_PYTHON='/usr/bin/python3'
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='underline'
export THEFUCK_ALTER_HISTORY=true

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

    export PATH=‘.:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}’
    export PYTHONPATH="/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7:${PYTHONPATH}"
    export CLICOLOR=1
    export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

    alias please='sudo'                         # Canadian sudo
    alias python='python3'                      # Avoid accidental clash with system Python version
    alias pip='pip3'                            # Avoid accidental clash with system pip version

#   -----------------------------
#   MAKE TERMINAL BETTER
#   -----------------------------
#
    export GREP_OPTIONS='--color=auto'
    export GREP_COLOR='1;32;40'
    export HISTCONTROL=erasedups:ignorespace    # ignore duplicates and entires starting with space
    alias zrc='edit ~/.zshrc'                   # opens .zshrc in sublime
    # alias source='source ~/.zshrc'              # Updates zshrc for current session
    alias cp='cp -iv'                           # Preferred 'cp' implementation
    alias mv='mv -iv'                           # Preferred 'mv' implementation
    alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation

    alias ls='colorls --sd --gs'                # Minimally improved 'ls' (sorts dirs/files, git status)
    alias ls.='colorls -A --sd --gs'            # Minimally improved 'ls' (hidden files, git status, sorts dirs/files)
    alias ll='colorls -l --sd --gs'             # Preferred 'ls' implementation excluding hidden files
    alias la='colorls -lA --sd'                 # Preferred 'ls' implementation including hidden files
    alias l.='\ls -Fd .*'                       # Display hidden files only

    alias dirs='colorls -d'                     # Display dirs only
    alias .dirs='colorls -A -d'                 # Display dirs only (including hidden dirs)
    alias files='colorls -f'                    # Display files only
    alias .files='colorls -A -f'                # Display files only (including hidden files)
    alias wc='ls -l | wc -l'                    # Number of files in directory

    alias tree='colorls --sd --tree'            # Replaces 'tree' with colorls's tree implementation
    alias tree.='colorls -A --sd --tree'        # Displays colorls's tree (including hidden files)
    alias tree1='colorls -sd --tree=1'          # Colors output of tree and limits results to 1 level
    alias tree2='colorls -sd --tree=2'          # Colors output of tree and limits results to 2 levels
    alias tree3='colorls -sd --tree=3'          # Colors output of tree and limits results to 3 levels
    alias tree4='colorls -sd --tree=4'          # Colors output of tree and limits results to 4 levels
    alias tree5='colorls -sd --tree=5'                  # Colors output of tree and limits results to 5 levels

    # chpwd() {ls}                                # Always list directory contents upon 'cd'    [removed in favor of auto-color-ls]
    alias ~='cd ~'                              # Go home
    alias ..='cd ../'                           # Go back 1 directory level
    alias ...='cd ../../'                       # Go back 2 directory levels
    alias .3='cd ../../../'                     # Go back 3 directory levels
    alias .4='cd ../../../../'                  # Go back 4 directory levels
    alias .5='cd ../../../../../'               # Go back 5 directory levels
    alias .6='cd ../../../../../../'            # Go back 6 directory levels

    alias edit='subl -w'                        # Opens any file in Atom editor
    alias less='less -FSRXNc'                   # Preferred 'less' implementation
    alias f='open -a Finder ./'                 # Opens current directory in MacOS Finder
    alias which='type -all'                     # Find executables

    alias c='clear'                             # Clear terminal display
    alias h='history'                           # Shortcut for history
    alias cw='history -cw'                      # Clear terminal buffer
    alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"  # Nice, compact tabular output about processes

    alias bc='bc -l -q'                         # Prefered 'bc' implementation
    alias mount='mount | column -t'             # Pretty prints mount
    alias j='jobs -l'                           # Prefered implementions of 'jobs'
    alias now='date +"%T"'                      # Print current time
    alias nowdate='date +"%F"'                  # Print current date (YYYY-mm-dd)
    eval $(thefuck --alias)                     # Magnificent app which corrects your previous console command.

    alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
    alias show_options='shopt'                  # Show_options: display bash options settings
    alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
    alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
    mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
    trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
    alias empty_trash='rm -rf ~/.Trash/*'       # empty_trash   Empties trash
    ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
    alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

################################################################
#
#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
   alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'


#   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
#           displays paginated result with colored search terms and two lines surrounding each hit.            Example: mans mplayer codec
#   --------------------------------------------------------------------
    # mans () { man $1 | grep -iC2 --color=always $2 | less }


#   showa: to remind yourself of an alias (given some part of it)
#   ------------------------------------------------------------
    showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }


#   -------------------------------
#   FILE AND FOLDER MANAGEMENT
#   -------------------------------

#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
    alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

#   finderShowHidden:   Show hidden files in Finder
#   finderHideHidden:   Hide hidden files in Finder
#   -------------------------------------------------------------------
    alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
    alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'


zipf () { zip -r "$1".zip "$1" ; }              # zipf:         To create a ZIP archive of a folder
    alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir
    alias make1mb='mkfile 1m ./1MB.dat'         # make1mb:      Creates a file of 1mb size (all zeros)
    alias make5mb='mkfile 5m ./5MB.dat'         # make5mb:      Creates a file of 5mb size (all zeros)
    alias make10mb='mkfile 10m ./10MB.dat'      # make10mb:     Creates a file of 10mb size (all zeros)


#   cdf:  'Cd's to frontmost window of MacOS Finder
#   ------------------------------------------------------
    cdf () {
        currFolderPath=$( /usr/bin/osascript <<EOT
            tell application "Finder"
                try
            set currFolder to (folder of the front window as alias)
                on error
            set currFolder to (path to desktop folder as alias)
                end try
                POSIX path of currFolder
            end tell
EOT
        )
        echo "cd to \"$currFolderPath\""
        cd "$currFolderPath"
    }


#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }



#   ---------------------------
#   SEARCHING
#   ---------------------------

    alias qfind="find . -name "                 # qfind:    Quickly search for file
    ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
    ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
    ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string


#   spotlight: Search for a file using MacOS Spotlight's metadata
#   -----------------------------------------------------------
    spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }


#   ---------------------------
#   PROCESS MANAGEMENT
#   ---------------------------

#   findPid: find out the pid of a specified process
#   -----------------------------------------------------
#       Note that the command name can be specified via a regex
#       E.g. findPid '/d$/' finds pids of all processes with names ending in 'd'
#       Without the 'sudo' it will only find processes of the current user
#   -----------------------------------------------------
    findPid () { lsof -t -c "$@" ; }


#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
    alias memHogsTop='top -l 1 -o rsize | head -20'
    alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'


#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
    alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'


#   topForever:  Continual 'top' listing (every 10 seconds)
#   -----------------------------------------------------
    alias topForever='top -l 9999999 -s 10 -o cpu'


#   ttop:  Recommended 'top' invocation to minimize resources
#   ------------------------------------------------------------
#       Taken from this macosxhints article
#       http://www.macosxhints.com/article.php?story=20060816123853639
#   ------------------------------------------------------------
    alias ttop="top -R -F -s 10 -o rsize"


#   my_ps: List processes owned by my user:
#   ------------------------------------------------------------
    my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
