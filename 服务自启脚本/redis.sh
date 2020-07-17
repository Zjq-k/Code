#!/bin/bash
stop(){
/data/redis/bin/redis-cli -a redis shutdown
}

start(){
/data/redis/bin/redis-server /data/redis/conf/redis.conf
}

case $1 in
        start)
        start
        ;;
        stop)
        stop
        ;;
        restart)
        stop
        start
        ;;
        *)
        echo "usage:@0 (start|stop|restart)"
        esac