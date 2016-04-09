alias slt='open -a "Sublime Text"'
alias zshconfig="slt ~/.zshrc"
alias envconfig="slt ~/.env.sh"

#Virtual machines
alias homestead='function __homestead() { (cd ~/homestead && vagrant $*); unset -f __homestead; }; __homestead'
alias homestead56='function __homestead56() { (cd ~/Projets/homestead56 && vagrant $*); unset -f __homestead56; }; __homestead56'
alias elastic='function __elastic() { (cd ~/elasticsearch && vagrant $*); unset -f __elastic; }; __elastic'
alias vmup='homestead up && homestead56 up && elastic up'
alias vmdown='homestead halt && homestead56 halt && elastic halt'

#Laravel
alias artisan="php artisan"

# Directories
alias dotfiles="cd $DOTFILES"
alias projets="cd $HOME/Projets"