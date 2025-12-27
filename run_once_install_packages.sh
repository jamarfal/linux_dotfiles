#!/bin/sh

# 1. Instalar Homebrew (si no está instalado)
if ! command -v brew >/dev/null 2>&1; then
    echo "🍺 Instalando Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# 2. Instalar Herramientas CLI (Rust & Modern Unix)
echo "🚀 Instalando herramientas de terminal..."
brew install starship
brew install zoxide
brew install eza
brew install bat
brew install fzf
brew install lazygit
brew install gh

# 3. Instalar Fuentes y Ghostty (Casks)
echo "🎨 Instalando fuentes y Ghostty..."
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask ghostty

# 4. Instalar SDKMAN (Java)
if [ ! -d "$HOME/.sdkman" ]; then
    echo "☕ Instalando SDKMAN..."
    curl -s "https://get.sdkman.io" | bash
fi

echo "✅ ¡Instalación completada! Reinicia la terminal."
