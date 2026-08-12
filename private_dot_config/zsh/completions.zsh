# Autocompletados de Homebrew
if type brew &>/dev/null; then
  fpath=($(brew --prefix)/share/zsh-completions $fpath)
  
  autoload -U compinit
  compinit -u
fi

# Integración con FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
