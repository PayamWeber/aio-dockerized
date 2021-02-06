BASEDIR=$(dirname "$0")

####
#### remove nginx
####
cd $BASEDIR/nginx
$BASEDIR/nginx/remove.sh


####
#### remove postgres
####
cd $BASEDIR/postgres
$BASEDIR/postgres/remove.sh