# Configuration de l'utilisateur
git config --global user.name = "John Doe"
git config --global user.email = "john@doe.com"

# Version installée
git --version

# Informations sur les différentes commandes git
git help

git config --list

# Permet de définir la branche par défaut comme étant 'main' et non 'master'
git config --global init.defaultBranch main

# Configurer l'éditeur par défaut : VSCode
git config --global core.editor "code --wait"

# Créer des alias
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm commit

# Consulter l'aide
git help config
git config --help
config config -h
