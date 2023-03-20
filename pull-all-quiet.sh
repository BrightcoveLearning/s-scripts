cd ..
git submodule --quiet update --remote
git submodule --quiet foreach git checkout main --quiet
git submodule --quiet foreach git pull origin main --quiet
# git commit -a -m "Commit in pull all"
git pull --quiet