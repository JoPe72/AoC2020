$Numbers = Get-Content $PSScriptRoot\Input-Day1.txt

for ($i = 0; $i -lt $Numbers.Count; $i++) 
{   
    for ($j = 0; $j -lt $numbers.Count; $j++) {
        $Sum = [int]$Numbers[$i] + [int]$Numbers[$j]
        #write-host $i " - " $j ":" $Numbers[$i] " + " $Numbers[$j] " = " $Sum
        if ([int]$sum -eq 2020)
        {
            write-host "Number 1: " $Numbers[$i]
            Write-Host "Number 2: " $Numbers[$j]
            Write-Host "Product: " ([int]$Numbers[$i] * [int]$Numbers[$j])
        }
    }
}