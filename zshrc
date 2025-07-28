source /etc/profile

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell" # Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git wd)

source $ZSH/oh-my-zsh.sh

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

alias n="nvim"
alias v="nvim"
alias ez="nvim ~/.zshrc"
alias ezl="nvim ~/.zshrc.local"
alias az="source ~/.zshrc"
alias tm="tmux attach -d"
alias dka='docker kill $(docker ps -q)'

# git alias
alias gca="git commit --amend"
alias gr="git rebase --interactive master"
alias gc="git rebase --continue"
alias ga="git add ."

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export HOMEBREW_PATH=/home/linuxbrew/.linuxbrew
else
  export HOMEBREW_PATH=/opt/homebrew
fi

# If homebrew is installed, shellenv
if [[ -d $HOMEBREW_PATH ]]; then
  eval "$($HOMEBREW_PATH/bin/brew shellenv)"
  export PATH="$HOMEBREW_PATH/opt/llvm@14/bin:$PATH"
fi

export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin:$HOME/.cargo/bin:/opt/bin/nvim-linux64/bin:$HOME/.local/bin

# start_tmux name num_windows
function start_tmux() {
  sn=$1
  num_windows=$2

  cd $HOME
  tmux new-session -s "$sn" -d
  for i in {2..$num_windows}; do
    tmux new-window -t "$sn:$i"
  done
  tmux select-window -t "$sn:1"
  tmux -2 attach-session -t "$sn"
}

# kill tmux
function kill_tmux() {
  sn=$1
  tmux kill-session -t "$sn"
}

alias aladark="ln -fs ~/.config/alacritty/themes/themes/one_dark.toml ~/.config/alacritty/_active.toml"
alias alalight="ln -fs ~/.config/alacritty/themes/themes/pencil_light.toml ~/.config/alacritty/_active.toml"

# Differnt aliases for different OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  func alatheme() {
    ln -fs ~/.config/alacritty/themes/themes/$1.toml ~/.config/alacritty/themes/themes/_active.toml
  }

  func kde_light() {
    lookandfeeltool -a hieu.light.desktop
    alalight
  }

  func kde_dark() {
    lookandfeeltool -a hieu.dark.desktop
    aladark
  }
elif [[ "$OSTYPE" == "darwin"* ]]; then
  alias w="open $1 -a /Applications/Windsurf.app"
  alias c="open $1 -a /Applications/Cursor.app"
fi

# Rebase a branch by deleting it and recreating it with the latest commit
# Usage: rebase_branch <branch_name>
function rebase_branch {
  branch_name=$1
  commit=$(git rev-parse --verify $branch_name)
  git branch -D $branch_name
  git checkout -b $branch_name
  git cherry-pick $commit
}

# If this is MacOS, then do something
if [[ "$OSTYPE" == "darwin"* ]]; then
  alias v="open $1 -a /Applications/Visual\ Studio\ Code.app"
  alias c="open $1 -a /Applications/Cursor.app"
  alias w="open $1 -a /Applications/Windsurf.app"
  alias nv="open $1 -a /Applications/Neovide.app/"
fi

# If this is Linux
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  func reboot_win() {
    sudo grub-reboot 2 && sudo reboot
  }

  func reboot_linux() {
    sudo grub-reboot 0 && sudo reboot
  }
fi

precmd() {
  title "$(pwd)"
}

func rsync_cwd() {
  current_dir=$(basename "$PWD")
  rsync -azP --delete --filter=':- .gitignore' --exclude='.git/' ./ hieu@dev:/mnt/data/rsync/"$current_dir"
}

func gcm() {
  if git show-ref --verify --quiet refs/heads/master; then
    git checkout master
  else
    git checkout main
  fi
}

# bun completions
[ -s "/Users/hpham/.bun/_bun" ] && source "/Users/hpham/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export EDITOR="nvim"

if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

if [ -f ~/.zshrc.local.env ]; then
  source ~/.zshrc.local.env
fi

if [ -f ~/.zshrc.ai.env ]; then
  source ~/.zshrc.ai.env
fi
