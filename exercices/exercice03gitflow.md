# Exercice : Découverte du Git Flow en Équipe

## Objectif

Cet exercice collaboratif vous permettra de comprendre et de pratiquer le workflow Git Flow tout en travaillant en équipe. Chaque participant jouera un rôle spécifique pour simuler un cycle de développement réaliste.

## Sujet

### Rôles dans l’équipe

1. **Chef de projet**

   - Responsable de la création initiale du projet Git Flow et de la gestion des branches principales (`main` et `develop`).
   - Valide les intégrations de nouvelles fonctionnalités et la préparation des versions stables.

2. **Développeurs** (1 à 3 participants)

   - Responsable de la création et du développement de branches `feature` pour ajouter des fonctionnalités spécifiques.
   - S’assurent que les fonctionnalités sont terminées et prêtes à être intégrées dans la branche `develop`.

3. **Mainteneur en production**
   - Responsable de la gestion des bugs critiques en production.
   - Crée et termine les branches `hotfix`, puis veille à leur intégration dans les branches `main` et `develop`.

### Étapes

1. **Initialisation du projet (Chef de projet)**

   - Configurez un dépôt Git Flow partagé.
   - Définissez les branches principales et partagez le dépôt avec l’équipe.

2. **Développement d’une fonctionnalité (Développeurs)**

   - Chaque développeur crée une branche `feature` pour ajouter une fonctionnalité spécifique (par exemple, `feature/authentication` ou `feature/dashboard`).
   - Effectuez des modifications dans la branche, puis demandez au chef de projet de valider l’intégration dans `develop`.

3. **Gestion d’un bug urgent (Mainteneur en production)**

   - Identifiez un bug critique nécessitant une correction rapide en production.
   - Créez une branche `hotfix` pour résoudre le problème.
   - Une fois corrigé, intégrez les modifications dans `main` et `develop` après validation par le chef de projet.

4. **Préparation d’une version stable (Chef de projet + Développeurs)**

   - Le chef de projet crée une branche `release` pour préparer une nouvelle version.
   - Les développeurs effectuent des ajustements finaux (par exemple, mises à jour de documentation).
   - Une fois prête, intégrez la branche dans `main` et `develop`.

5. **Synchronisation et validation finale (Tous)**
   - Assurez-vous que la branche `main` est prête pour le déploiement.
   - Confirmez que `develop` contient toutes les modifications pour les développements futurs.

### Collaboration et Livrables

- Travaillez en binômes ou en groupes pour chaque tâche.
- Documentez les étapes dans un fichier partagé (par exemple, un fichier `NOTES.md`).
- À la fin de l’exercice, présentez le résultat : une branche `main` propre et une branche `develop` prête à accueillir de nouvelles fonctionnalités.

Cet exercice met en avant la communication et la coordination nécessaires dans une équipe utilisant Git Flow.
