#! /bin/sh

notify-send "Battery status" \
"$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | \
grep 'percent\|time\|state' | \
sed 's/^[ \t]\+//' | \
sed 's/[ ]\{2,\}/\t/g' | \
sed 's/state:/state:\t/g')"
