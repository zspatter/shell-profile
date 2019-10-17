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
# DISABLE_AUTO_UPDATE="true"

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

export AUTOSWITCH_DEFAULT_PYTHON="/usr/bin/python3"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="underline"

# User configuration
source ~/.profile.env       # sources all non-zsh specific configurations (shared between bash and zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
