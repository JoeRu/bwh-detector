powershell.exe -Command "$test = Get-Content test.txt | Get-Random; & darknet detector test bee-counter.data yolov3_spp.cfg backup/yolov3_spp_last.weights -thresh 0.02 $test"
