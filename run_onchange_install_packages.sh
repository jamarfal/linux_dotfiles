#!/bin/sh

# 1. Instalar Homebrew (si no está instalado)
if ! command -v brew >/dev/null 2>&1; then
  echo "🍺 Instalando Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# 2. Core y Navegación (Lo básico para moverte)
echo "🚀 Instalando herramientas de navegación y Core..."
brew install starship
brew install zoxide
brew install fzf
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install zsh-completions
brew install atuin  # Historial con esteroides
brew install direnv # Variables de entorno por carpeta

# 3. Editores y Terminal
echo "💻 Instalando Editores y Multiplexores..."
brew install neovim # ¡Faltaba este! Vital para tu setup
brew install tmux   # Multiplexador de terminal

# 4. Yazi y sus dependencias (Previsualización multimedia)
echo "🦆 Instalando Yazi y herramientas de previsualización..."
brew install yazi
brew install ffmpegthumbnailer # Miniaturas de video
brew install sevenzip          # Archivos comprimidos
brew install jq                # JSON
brew install poppler           # Previsualización PDF
brew install fd                # Búsqueda rápida (necesario para Yazi)
brew install ripgrep           # Grep rápido (necesario para Yazi/Nvim)
brew install imagemagick       # Imágenes

# 5. Herramientas Modern Unix (Reemplazos de ls, cat, etc.)
echo "🦀 Instalando herramientas Rust/Modern Unix..."
brew install eza # Reemplazo de ls
brew install bat # Reemplazo de cat

# 6. Git y DevOps
echo "🐙 Instalando herramientas de Git y Docker..."
brew install lazygit
brew install gh        # GitHub CLI
brew install git-delta # Mejor visualización de diffs

# 7. Instalar Fuentes y Ghostty (Casks)
echo "🎨 Instalando fuentes y Ghostty..."
# Nota: La Nerd Font es necesaria para los iconos de Yazi, Starship y Nvim
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask ghostty

# 8. Instalar SDKMAN (Java)
if [ ! -d "$HOME/.sdkman" ]; then
  echo "☕ Instalando SDKMAN..."
  curl -s "https://get.sdkman.io" | bash
fi

# 9. ARREGLO FINAL: Corregir permisos inseguros de Zsh (compaudit)
# Esto evita el error "zsh compinit: insecure directories"
echo "🔧 Corrigiendo permisos de directorios Zsh..."
if command -v zsh >/dev/null 2>&1; then
    # Invocamos zsh para que busque los directorios inseguros y les quite el permiso de escritura 'group'
    zsh -c "autoload -Uz compaudit && compaudit | xargs chmod g-w" >/dev/null 2>&1 || true
fi

echo "✅ ¡Instalación completada! Reinicia la terminal."
