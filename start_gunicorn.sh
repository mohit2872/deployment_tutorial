PROJECTNAME=deployment_tutorial
APPNAME=deployment_tutorial
PROJECTDIR=/home/mohitgupta/Tutorials/$PROJECTNAME/

LOGFILE=$PROJECTDIR'log/gunicorn.log'
ERRORFILE=$PROJECTDIR'log/gunicorn-error.log'

NUM_WORKERS=3

ADDRESS=127.0.0.1:8000

cd $PROJECTDIR

#source ~/.bashrc
#workon $APPNAME

exec gunicorn $APPNAME.wsgi:application \
-w $NUM_WORKERS --bind=$ADDRESS \
--log-level=debug \
--log-file=$LOGFILE 2>>$LOGFILE  1>>$ERRORFILE &
