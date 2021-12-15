git checkout build
git merge drafts
bundle exec jekyll build
Xcopy .\site\category \.category
git add .
git commit -m "Build category pages"
git push
git checkout main
