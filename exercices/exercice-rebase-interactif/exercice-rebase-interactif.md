# Rebase interactif avancé
## Sujet

Vous avez travaillé sur une nouvelle fonctionnalité appelée "Hello World".
Cette fonctionnalité est complète avec la documentation et les tests unitaires, mais il y a quelques problèmes.
L’historique est très désordonné, avec de nombreuses étapes incomplètes, et certaines choses qui n’auraient jamais dû être incluses.

Vous devez corriger cela de manière à ce que votre `git log` soit clair et organisé !

Pour ce faire, nous allons utiliser notre bon ami `git rebase --interactive`.

Heureusement, nous avons un tag de version `v0.0` juste avant le début du développement de la fonctionnalité.

Comme il s'agit d'un exercice avancé, il n'y a pas de étapes spécifiques à suivre et pas de solution unique.

## Configuration :

1. Exécutez `setup.sh`

## Tâche

1. Explorez le dépôt et l’historique pour comprendre ce qui s’est passé.
2. Utilisez `git rebase --interactive v0.0` pour éditer la "recette" de tout le développement de la fonctionnalité.
3. Nettoyez l’historique de manière à ce qu’il ait du sens. Essayez d’utiliser autant que possible les options du rebase interactif (e.g. reword, squash, fixup, drop). Vous pouvez réécrire tout d’un seul coup ou appliquer quelques changements, puis exécuter un autre `git rebase --interactive v0.0` pour continuer le nettoyage.

### Commandes utiles

- `ls -l`                 # lister les fichiers
- `tail -n +1 *`          # afficher le contenu de tous les fichiers
- `git log --oneline`     # afficher l’historique
- `git log --stat`        # afficher les fichiers modifiés
- `git log --patch`       # afficher les différences
- `git rebase -i <ref>`   # exécuter le rebase interactif jusqu’à `<ref>`
