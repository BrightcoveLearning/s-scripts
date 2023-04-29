bold=`tput bold`
normal=`tput sgr0`
if [ $NB -eq 'true' ]
then
COMMITMESSAGE=$NBMessage
else
echo "Enter your ${bold}COMMIT MESSAGE${normal}:"
read COMMITMESSAGE
fi 
cd ..
git pull
bundle update
bundle exec jekyll build --trace
setopt localoptions rmstarsilent
rm -f _site/feed.xml
git pull
git add .
git commit -m $COMMITMESSAGE
git push
git submodule foreach "git fetch origin main"
git submodule foreach "git checkout main ; git pull ; git add . ; git commit -m '$COMMITMESSAGE' ; git push"
git add .
git commit -m $COMMITMESSAGE
git push