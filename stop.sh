BASEDIR=$(dirname "$0")

####
#### stop nginx
####
cd $BASEDIR/nginx
$BASEDIR/nginx/stop.sh


####
#### stop postgres
####
cd $BASEDIR/postgres
$BASEDIR/postgres/stop.sh