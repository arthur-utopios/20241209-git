git init exercice02
cd exercice02

echo "<!DOCTYPE html><html></html>" > index.html
git add .
git commit -m "creation de la première page du site web"

code .index.html
git commit -am "ajout de contenu sur la page"
git log --oneline --graph --all

git checkout -b feature/content HEAD~1
git log --oneline --graph --all
git commit -am "ajout du footer"
git log --oneline --graph --all

git rebase main
# editer le fichier dans vscode

git add .
git rebase --continue

git log --oneline --graph --all
git switch -
git merge feature/content

git log --oneline --graph --all
git branch -d feature/content

git log --oneline --graph --all
cat .index.html
git checkout HEAD~1
cat .index.html
git checkout -