git init

echo "mon premier fichier" > fichier1.txt

git add .fichier1.txt
git commit -m "ajout du premier fichier"
git log --oneline

echo "second fichier" > fichier2.txt
git add .fichier2.txt
git commit -m "ajout second fichier"
git log --oneline

echo "ajout second fichier" >> fichier2.txt
cat .fichier2.txt
git commit -am "modification second fichier"
git log --oneline

git reset --hard HEAD~1
git log --oneline

git checkout -b new-branch 58ba8c7
git log --oneline
echo "nouveau fichier" > new-file.txt
git add .
git commit -m "ajout du nouveau fichier"

git log --oneline
git reflog
git branch
git tag v0.0.1

git switch main
git tag
git branch -d new-branch # ne fonctionne pas
git branch -D new-branch

git branch
git tag
git checkout v0.0.1
cat .new-file.txt
git switch -