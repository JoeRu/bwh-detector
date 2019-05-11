powershell.exe -Command "$test = Get-Content test.txt | Get-Random; & darknet detector test bee-counter.data bwh.cfg backup/bwh_last.weights -thresh 0.02 $test"
