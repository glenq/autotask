#new Env('充电控制');
#10 6 * * * https://github.com/glenq/autotask/zhonggeng.js, tag=充电, enabled=true
capacity=`cat /sys/class/power_supply/battery/capacity`
if [ $capacity -ge 95 ]
then 
echo 1 > /sys/class/power_supply/battery/input_suspend
fi
if [ $capacity -le 55 ]
then 
echo 0 > /sys/class/power_supply/battery/input_suspend
fi
status=`cat /sys/class/power_supply/battery/status`
echo Now battery status is:$status
echo Now battery capacity is:$capacity

