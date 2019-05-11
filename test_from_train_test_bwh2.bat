powershell.exe -Command "$test = Get-Content test.txt | Get-Random; & darknet detector test bee-counter.data bwh2.cfg backup/bwh2_last.weights -thresh 0.13 $test"
