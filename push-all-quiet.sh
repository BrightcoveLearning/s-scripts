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
echo '13'
git commit -m $COMMITMESSAGE --quiet
echo '15'
git push --quiet
echo '17'
git submodule --quiet foreach "git fetch origin main --quiet"
echo '19'
git submodule --quiet foreach "git checkout --quiet main  ; echo 'a' ; git pull --quiet; echo 'b' ;  git add . > /dev/null; echo 'c' ;  git commit -m '$COMMITMESSAGE' --quiet; echo 'd' ;  git push --quiet"
echo '21'
git add . > /dev/null
echo '23'
git commit -m '$COMMITMESSAGE' --quiet
echo '25'
git push --quiet
