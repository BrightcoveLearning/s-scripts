cd ..
echo 'Check for updates'
git submodule --quiet update --remote
echo 'Checkout main
git submodule --quiet foreach git checkout main --quiet
echo 'pull all submodules'
git submodule --quiet foreach git pull origin main --quiet
# git commit -a -m "Commit in pull all"
echo 'Pull parent repo'
git pull --quiet