git clone $1 $2
cd $2
deis apps:create $2
git push deis master
