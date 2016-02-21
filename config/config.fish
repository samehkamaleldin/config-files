function clc
    clear
end

function battary_power
 upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage"
end
