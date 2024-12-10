### Signer les commits avec GPG dans Git

Signer vos commits permet d'ajouter une couche supplémentaire de sécurité en prouvant que les commits proviennent de vous, et non de quelqu'un d'autre. Git supporte la signature des commits via GPG (GNU Privacy Guard), un outil qui permet de chiffrer et de signer des informations.

Voici les étapes pour configurer et signer vos commits dans Git :

---

### 1. **Générer une clé GPG**

Si vous n'avez pas déjà une clé GPG, vous devez en générer une. Vous pouvez utiliser `gpg` pour cela :

#### a. Installez GPG (si ce n'est pas déjà fait)

- **Sur macOS** : `brew install gnupg`
- **Sur Ubuntu** : `sudo apt-get install gnupg`
- **Sur Windows** : Téléchargez GPG4Win depuis [https://gpg4win.org/](https://gpg4win.org/).

#### b. Générez une clé GPG

```bash
gpg --full-generate-key
```

1. **Choisissez le type de clé** : Sélectionnez `RSA and RSA`.
2. **Choisissez la taille de la clé** : Choisissez 4096 bits pour une bonne sécurité.
3. **Définir une durée de validité** : Vous pouvez laisser la durée vide (par défaut, cela crée une clé sans expiration).
4. **Entrez vos informations** : Fournissez votre nom et votre adresse e-mail (utilisez la même adresse e-mail que celle associée à votre compte GitHub ou autre plateforme).
5. **Protégez votre clé par une phrase de passe** (facultatif mais recommandé).

Cela créera une clé GPG, et vous pourrez la voir dans la liste avec la commande :

```bash
gpg --list-secret-keys --keyid-format LONG
```

Vous verrez quelque chose comme ceci :

```
/home/user/.gnupg/secring.gpg
------------------------------
sec   4096R/<Your Key ID> 2017-01-01 [expires: 2020-01-01]
uid                          Your Name <youremail@example.com>
ssb   4096R/<Some Key ID> 2017-01-01
```

### 2. **Configurer Git pour utiliser votre clé GPG**

#### a. Récupérer l'ID de votre clé

Vous avez besoin de l'ID de votre clé pour configurer Git. Vous pouvez obtenir l'ID avec la commande :

```bash
gpg --list-secret-keys --keyid-format LONG
```

Exemple d'ID de clé : `0123456789ABCDEF`.

#### b. Configurer Git pour utiliser la clé GPG

Configurez Git pour utiliser cette clé GPG :

```bash
git config --global user.signingkey <Your Key ID>
```

Remplacez `<Your Key ID>` par l'ID que vous avez récupéré à l'étape précédente.

#### c. Vérifiez que Git utilise bien la clé GPG

Vous pouvez vérifier que Git utilise la clé GPG avec cette commande :

```bash
git config --global user.signingkey
```

Cela doit renvoyer l'ID de la clé GPG que vous avez configurée.

### 3. **Signer un commit**

Maintenant que Git est configuré pour signer vos commits, vous pouvez signer chaque commit de deux façons :

#### a. Signer un commit automatiquement

Vous pouvez configurer Git pour signer tous vos commits par défaut en ajoutant l'option suivante à votre configuration Git :

```bash
git config --global commit.gpgSign true
```

Cela signera automatiquement tous vos commits.

#### b. Signer un commit manuellement

Si vous ne souhaitez pas signer chaque commit automatiquement, vous pouvez signer un commit manuellement avec l'option `--gpg-sign` lors de la commande `git commit` :

```bash
git commit --gpg-sign -m "Votre message de commit"
```

### 4. **Vérifier la signature d'un commit**

Une fois que vous avez signé vos commits, vous pouvez vérifier qu'ils ont bien été signés avec la commande :

```bash
git log --show-signature
```

Cela affichera des informations sur la signature, comme ceci :

```
commit <commit-hash>
gpg: Signature made <date> using RSA key ID <Your Key ID>
gpg: Good signature from "<Your Name> <youremail@example.com>"
```

### 5. **Utiliser la signature sur GitHub**

Si vous utilisez GitHub, vous pouvez associer votre clé GPG à votre compte GitHub pour vérifier vos commits signés. Pour cela, exportez votre clé publique avec la commande suivante :

```bash
gpg --armor --export <Your Key ID>
```

Cela exportera votre clé publique au format ASCII que vous pourrez copier et coller dans la section "SSH and GPG keys" de votre compte GitHub.

---

### Résumé des commandes

1. **Générer une clé GPG** :

```bash
gpg --full-generate-key
```

2. **Lister vos clés GPG** :

```bash
gpg --list-secret-keys --keyid-format LONG
```

3. **Configurer Git pour utiliser la clé GPG** :

```bash
git config --global user.signingkey <Your Key ID>
```

4. **Signer tous les commits par défaut** :

```bash
git config --global commit.gpgSign true
```

5. **Signer un commit manuellement** :

```bash
git commit --gpg-sign -m "Votre message de commit"
```

6. **Vérifier un commit signé** :

```bash
git log --show-signature
```

7. **Exporter la clé publique GPG pour GitHub** :

```bash
gpg --armor --export <Your Key ID>
```

En suivant ces étapes, vous pourrez signer vos commits Git pour prouver leur authenticité, ce qui est particulièrement utile lorsque vous contribuez à des projets open source ou travaillez dans des équipes qui nécessitent une vérification de l'origine des commits.
