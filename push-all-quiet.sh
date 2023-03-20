echo "Enter your ${bold}COMMIT MESSAGE${normal}:"
read COMMITMESSAGE 
cd ..
git pull --quiet
bundle update > /dev/null
bundle exec jekyll build --trace --incremental > /dev/null
setopt localoptions rmstarsilent
rm -f _site/feed.xml
bold=`tput bold`
normal=`tput sgr0`
git pull --quiet
git add . > /dev/null
git commit --quiet -m $COMMITMESSAGE
git push --quiet
git submodule --quiet foreach "git fetch origin main --quiet"
git submodule --quiet foreach "git checkout main --quiet ; git pull --quiet; git add . > /dev/null; git commit --quiet -m '$COMMITMESSAGE'; git push --quiet"
git add . > /dev/null
git commit --quiet -m '$COMMITMESSAGE'
git push --quiet
