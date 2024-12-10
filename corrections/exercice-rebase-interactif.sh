#!/bin/bash

# Exploration initiale pour comprendre l'état actuel
git log --oneline --graph
git log --stat

# Lancer le rebase interactif depuis le tag v0.0
git rebase -i v0.0

# Pendant le rebase interactif (manuellement dans l'éditeur) :
# 1. Reword "Helo Volrd feature" pour corriger le message de commit.
# 2. Squash ou fixup les commits "Finished HW feature", "Really made the thingy done" et "debugging" en un seul commit propre.
# 3. Drop le commit "important secret" pour retirer le fichier sensible.
# 4. Combinez les étapes de documentation ("Add doc - step 1", "Add doc - step 2", "Add doc - step 3") en un seul commit clair.
# 5. Squash "Test for feature hello world" et "I forgot a semicolon" en un seul commit.

# Vérification finale de l'historique nettoyé
git log --oneline --graph
