cd ..
git submodule update --remote
git submodule foreach git checkout main
git submodule foreach git pull origin main 
git commit -a -m "Commit in pull all"
<<<<<<< HEAD
git pull
=======
git pull
>>>>>>> 66d8a6e95cd3a0bd5028f0bc37a9f58ed8e6b708
