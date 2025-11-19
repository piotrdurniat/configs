export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Alias nvim to vim
alias vim=/snap/nvim/current/usr/bin/nvim

# cargo
. "$HOME/.cargo/env"

# Android SDK
export ANDROID_HOME=/home/piotr/Android/Sdk

# VI mode
set -o vi
export EDITOR=nvim

# pnpm
export PNPM_HOME="/home/piotr/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Java 17 for Cytoscape
export INSTALL4J_JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/bin/java

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/piotr/.lmstudio/bin"

# Aliast for Google Gemini installed as PWA from Firefox
alias gemini="gio launch /home/piotr/.local/share/applications/FFPWA-01K9SY8ANM3GMRXJTJCQRN750R.desktop"

