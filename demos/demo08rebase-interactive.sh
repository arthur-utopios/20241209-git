git init
echo "first file" >> first.txt
git add .
git commit -m "first"

echo "second file" >> second.txt 
git add .
git commit -m "second"

# Erreur dans le message du commit
echo "third file" >> third.txt 
git add .
git commit -m "thrid"

# Pas de clé api dans le code
echo "api.key" >> api.txt 
git add .
git commit -m "api key"

# Inversement entre le 4 et le 5
echo "fifth file" >> fifth.txt
git add .
git commit -m "fifth"

echo "fourth file" >> fourth.txt 
git add .
git commit -m "fourth"

echo "last commit" >> last.txt 
git add .
git commit -m "last"

git rebase -i HEAD~6

# 1. Editer le fichier et ajouter 'reword' ou 'r' à la place de pick sur le commit n°3
# 2. Editer le message du commit

git rebase -i <hash commit avant apikey>
# 1. editer le fichier et ajouter 'drop' ou 'd' à la place de pick sur le commit api key
# 2. Inverser le commit n°4 et n°5
# 3. editer le fichier et ajouter 'squash' ou 's' pour le fusionner avec le dernier commit

# La différence entre fixup et squash est que fixup prend le message du commit précédent