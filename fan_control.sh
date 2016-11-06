#! /bin/sh
### BEGIN INIT INFO
# Provides:          fan_control
# Required-Start:    $all
# Required-Stop:     $all
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Manage fan control
### END INIT INFO

# If you need to source some other scripts, do it here

case "$1" in
  start)
    python /home/pi/fan_control/fan_control.py start
    exit 0
    ;;
  stop)
    python /home/pi/fan_control/fan_control.py stop
    exit 0
    ;;
  restart)
    python /home/pi/fan_control/fan_control.py restart
    exit0
    ;;
  on)
    python /home/pi/fan_control/fan_control.py on    
    exit0
    ;;
  off)
    python /home/pi/fan_control/fan_control.py off
    exit0
    ;;
  *)
    #echo "Usage: /etc/init.d/fan_control {start|stop|restart|on|off}"
    exit 1
    ;;
esac

exit 0