# 環境変数
export LANG=ja_JP.UTF-8
export PATH=$HOME/.go/bin:/usr/local/go/bin:/usr/local/bin:$PATH
export SHELL=/bin/zsh
export GOPATH=$HOME/.go

# Enable item2 shell integration
source ~/.iterm2_shell_integration.`basename $SHELL`

# zsh-syntax-highlighting 
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# dircolor
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
eval `dircolors ~/dircolors/ansi-light`

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# 補完機能を有効にする
autoload -Uz compinit
compinit -u

# cdコマンドを省略して、ディレクトリ名のみの入力で移動
setopt auto_cd

# cd したら自動的にpushdする
setopt auto_pushd
# 重複したディレクトリを追加しない
setopt pushd_ignore_dups


# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

PROMPT='%~ $ '

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# emacs 風キーバインドにする
bindkey -v

# 日本語ファイル名を表示可能にする
setopt print_eight_bit
 
# beep を無効にする
setopt no_beep
 
# フローコントロールを無効にする
setopt no_flow_control
 
# Ctrl+Dでzshを終了しない
setopt ignore_eof
 
# '#' 以降をコメントとして扱う
setopt interactive_comments

alias ls='ls --color=auto'
alias dco='docker-compose'
alias dcr='docker-compose run --rm'
alias dce='docker-compose exec'
alias do='docker'
alias gco='git checkout'
alias grm='git rebase master'
alias grd='git rebase develop'
alias gcm='gco master && git pull upstream master'
alias gcd='gco develop && git pull upstream develop'
alias gpo='git push origin'
alias ree='rbenv exec'

# === cool-peco init ===
FPATH="$FPATH:/Users/miura_yoshitaro/cool-peco"
autoload -Uz cool-peco
cool-peco
# ======================
bindkey '^r' cool-peco-history # ctrl+r
bindkey '^p' cool-peco-ps

alias ff=cool-peco-filename-search
alias gbb=cool-peco-git-checkout
alias gll=cool-peco-git-log
alias cg=cool-peco-ghq
