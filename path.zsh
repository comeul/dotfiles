# Load Spark Installer
export PATH="$HOME/projets/spark-installer:$PATH"

# Load composer bin
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Make sure PHP 7 is loaded
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"

# Load custom commands
export PATH="$DOTFILES/bin:$PATH"

# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Local bin directories before anything else
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"