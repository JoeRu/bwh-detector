powershell.exe -Command "Move-Item ./chart.png ./$(get-date -f yyyyMMdd-HHmmss).chart.png"
darknet.exe detector train bee-counter.data yolov3_spp.cfg backup/yolov3_spp_last.weights
