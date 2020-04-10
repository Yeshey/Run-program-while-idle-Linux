#gdbus monitor -y -d org.freedesktop.login1 | grep LockedHint

#echo 'ready'
sleep 30
#echo 'done'
gdbus monitor -y -d org.freedesktop.login1 |\
 grep --line-buffered -i "LockedHint" |\
 sed -uE 's/.*LockedHint.*<(.*)>.*/\1/g' |\
(
  while true; do
    read X
#    if echo $X | grep "true" &> /dev/null; then
     if [ "$X" = "true" ]; then
      echo "is anyone there?---"
#------------PUT A COMMAND TO RUN YOUR SCRIPT IN THE NEXT LINE (LEAVE THE "&" AT THE END)---------
      HERE & #the "&" is for it to run in a different process so the program can Continue!
#    elif echo $X | grep "false" &> /dev/null; then
     elif [ "$X" = "false" ]; then
      echo "hi!"
#      sleep 1
#------------PUT THE SAME COMMAND YOU PLACED BEFORE BETWEEN THE QUOTES (to kill it when system ceases to be idle)----------
      pkill -f "HERE"
#      echo "x é $X"
    else 
      echo "error"
    fi
  done
)

#from https://unix.stackexchange.com/questions/28181/run-script-on-screen-lock-unlock

#gdbus monitor -y -d org.freedesktop.login1 |\
# grep --line-buffered -i "LockedHint" |\

#dbus-monitor --session "type='signal',interface='com.ubuntu.Upstart0_6'" | \
#(
#  while true; do
#    read X
#    if echo $X | grep "desktop-lock" &> /dev/null; then
#      SCREEN_LOCKED;
#    elif echo $X | grep "desktop-unlock" &> /dev/null; then
#      SCREEN_UNLOCKED;
#    fi
#  done
#)
 
#gdbus monitor -y -d org.freedesktop.login1 | grep LockedHint 
#(
#  while true; do
#    echo "hello?"
#  done
#)
