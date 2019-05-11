powershell.exe -Command "Move-Item ./chart.png ./$(get-date -f yyyyMMdd-HHmmss).chart.png"
darknet.exe detector train bee-counter.data bwh2.cfg backup/bwh2_last.weights
