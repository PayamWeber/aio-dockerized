BASEDIR=$(dirname "$0")

####
#### install and run nginx
####
cd $BASEDIR/nginx
$BASEDIR/nginx/run.sh


####
#### install and run postgres
####
cd $BASEDIR/postgres
$BASEDIR/postgres/run.sh