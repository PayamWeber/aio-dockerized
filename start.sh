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


####
#### install and run nordvpn
####
cd $BASEDIR/nordvpn-proxy
$BASEDIR/nordvpn-proxy/run.sh