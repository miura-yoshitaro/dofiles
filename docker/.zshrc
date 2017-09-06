# シンプルな zshrc
# License : MIT
# http://mollifier.mit-license.org/

# 環境変数
export LANG=ja_JP.UTF-8

# 補完機能を有効にする
autoload -Uz compinit
compinit

# プロンプト
PROMPT='%~ $ '

# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end


# vim 風キーバインドにする
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

# cd したら自動的にpushdする
setopt auto_pushd

# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# 過去に同じ履歴が存在する場合、古い履歴を削除する
setopt hist_ignore_all_dups

# 右プロンプトを現在のコマンドラインにのみ表示する
setopt transient_rprompt

# completion
zstyle ':completion:*:default' menu select
setopt list_packed

# エイリアス
alias -g RD='RAILS_ENV=development'
alias -g RT='RAILS_ENV=test'
alias -g RS='RAILS_ENV=staging'
alias -g RP='RAILS_ENV=production'
alias -g DS='DISABLE_SPRING=1'
alias dm='bin/rake db:migrate'
alias dmt='bin/rake db:migrate RAILS_ENV=test'
alias dr='bin/rake db:rollback STEP=1'
alias at='bundle exec annotate --exclude tests,fixtures,factories,serializers'
