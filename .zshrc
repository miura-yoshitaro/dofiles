# シンプルな zshrc
# License : MIT
# http://mollifier.mit-license.org/

# 環境変数
export LANG=ja_JP.UTF-8
export PATH=/usr/local/bin:$PATH
export SHELL=/bin/zsh

# Enable item2 shell integration
source ~/.iterm2_shell_integration.`basename $SHELL`

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

alias dco='docker-compose'
alias dcr='docker-compose run --rm'
alias do='docker'
alias gco='git checkout'
alias grm='git rebase master'
alias gcp='gco  master && git pull origin master'
alias gpo='git push origin'
