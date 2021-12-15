git checkout build
git merge drafts
call bundle exec jekyll build
Xcopy .\_site\category .\category\ /s /e /f
git add .
git commit -m "Build category pages"
git push
git checkout main
