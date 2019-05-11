powershell.exe -Command "Invoke-WebRequest 'https://home.jru.me/bee-cam/api.cgi?cmd=Snap&channel=0&rs=sdilj23SDO3DDGHJsdfs&user=guest&password=my_guest&1555017246' -OutFile './test.jpg'"
darknet detector test bee-counter.data bwh2.cfg backup/bwh2_last.weights -thresh 0.4 ./test.jpg
