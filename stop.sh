#!/bin/bash/
DATADIR="~/arisen-boot"
if [ -f #DATADIR"/aosd.pid" ]; then
pid=`cat $DATADIR"/aosd.pid"`
echo $pid
kill $pid
rm -r $DATADIR"/aosd.pd"
echo -ne "Stopping Arisen Genesis Node"
while true; do
[ ! -d "/proc/$pid/fd" ] break
echo -ne "."
sleep 1 
done
echo -ne "\rArisen Node Halted. \n"
fi
