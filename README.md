# Run-program-while-idle-Linux
------
DESCRIPTION:
.sh super simple script to run a command when Lock Screen is activated (aka system's idle/ I'm afk) because I'm a programming noob. Only tested with a desktop environment (gnome) in Pop!_OS. It detects when the lock screen activates and runs the script, then when the lock screen is deactivated and the user is back, it "pkills" the script. Has a annoying bug that makes the script run when the computer starts which I don't know how to resolve... I'm a noob, so if anyone sees this and wants to give me some advice on how to make this work better, I'm all ears!

Made this according to this discussion:
https://unix.stackexchange.com/questions/28181/run-script-on-screen-lock-unlock
------

-----
USAGE:
Edit the "RunProgram_WhileIdle-linux" so it runs your script, just add the bash command that would run your script in the two places on the .sh file that say "HERE"
-----
