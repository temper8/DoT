gpio.mode(4,gpio.INPUT)print(gpio.read(4))_s=dofile("init_settings.lua")({def=gpio.read(4)})node.setcpufreq(node.CPU160MHZ)dofile("init_wifi.lua")(_s)local a=tmr.create()a:register(5000,tmr.ALARM_SINGLE,function(b)print("Start")dofile("init_settings.lua")({run={ext="run"}})b:unregister()end)a:start()
