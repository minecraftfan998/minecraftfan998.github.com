git push origin :source
git push origin :master

# initialize the local repository
git init
# commits your files
git add .
git commit -m "init" 

# rename our master branch
git branch -m master source
# add your github repository as origin
git remote add origin git@github.com-minecraftfan998:minecraftfan998/minecraftfan998.github.com.git
# push to the remote repository and set the source local branch to
# track origin/source
git push -u origin source

# fetch a working copy of your repository
git clone git@github.com:[user]/[user].github.com.git output
cd output
# create the isolated branch
git symbolic-ref HEAD refs/heads/master
rm .git/index
git clean -fdx
