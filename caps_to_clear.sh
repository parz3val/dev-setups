# A scrip to set Capslock as backspace key in ubuntu

setxkbmap -option caps:backspace
setxkbmap -option shift:both_capslock
xmodmap -e "clear Lock"
