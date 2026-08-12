# Rutas del SDK de Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Configuración de FZF
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob \"!.git\""
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Historial optimizado
HISTFILE=~/.zsh_history
