$Numbers = 1721,979,366,299,675,1456

Write-Host $Numbers

for ($i = 0; $i -lt $Numbers.Count; $i++) 
{

    
    for ($j = 0; $j -lt $numbers.Count; $j++) {

        if ($Numbers[$i] + $Numbers[$j] -eq 2020)
        {
            write-host "Number 1: " $Numbers[$i]
            Write-Host "Number 2: " $Numbers[$j]
            Write-Host "Product: " ($Numbers[$i] * $Numbers[$j])
        }
    }
}