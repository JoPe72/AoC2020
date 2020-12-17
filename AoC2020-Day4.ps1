Clear-Host
$PassportBatchFile = Get-Content "$PSScriptRoot\Input-Day4.txt"

$AllRows = $PassportBatchFile -split "\s+"
$BatchIndex = 0
$Recordnumber = 0
$ValidPassports = 0

## Initiate Array
$Batch = @()

$item = New-Object PSObject
$item | Add-Member -type NoteProperty -Name 'byr' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'iyr' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'eyr' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'hgt' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'hcl' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'ecl' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'pid' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'cid' -Value 'X'


## Parsing File into Array
$Batch += $item

$AllRowsIndex = 0
while ($AllRowsIndex -lt $AllRows.Count) {    
    $item = New-Object PSObject
    while (($AllRows[$AllRowsIndex] -ne "") -and ($AllRowsIndex -lt $AllRows.Count)) {
        switch ($AllRows[$AllRowsIndex].split(":")[0]) {
            byr {
                    if (($AllRows[$AllRowsIndex].split(":")[1].length -eq 4) -and ([int]$AllRows[$AllRowsIndex].split(":")[1] -le 2002) -and ([int]$AllRows[$AllRowsIndex].split(":")[1] -ge 1920) ) {
                        $item | Add-Member -type NoteProperty -Name 'byr' -Value $AllRows[$AllRowsIndex].split(":")[1]
                    }
                }
            iyr {
                    if (($AllRows[$AllRowsIndex].split(":")[1].length -eq 4) -and ([int]$AllRows[$AllRowsIndex].split(":")[1] -le 2020) -and ([int]$AllRows[$AllRowsIndex].split(":")[1] -ge 2010) ) {
                        $item | Add-Member -type NoteProperty -Name 'iyr' -Value $AllRows[$AllRowsIndex].split(":")[1]
                    }
                }
            eyr {
                    if (($AllRows[$AllRowsIndex].split(":")[1].length -eq 4) -and ([int]$AllRows[$AllRowsIndex].split(":")[1] -le 2030) -and ([int]$AllRows[$AllRowsIndex].split(":")[1] -ge 2020) ) { 
                        $item | Add-Member -type NoteProperty -Name 'eyr' -Value $AllRows[$AllRowsIndex].split(":")[1]
                    }
                }
            hgt {
                ## Gör Klart 
                $item | Add-Member -type NoteProperty -Name 'hgt' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            hcl {
                ## Gör Klrt
                 $item | Add-Member -type NoteProperty -Name 'hcl' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            ecl {
                ## Gör Klart
                $item | Add-Member -type NoteProperty -Name 'ecl' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            pid {
                ## Gör Klart
                
                $AllRows[$AllRowsIndex].split(":")[1].length

                $item | Add-Member -type NoteProperty -Name 'pid' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            cid {
                $item | Add-Member -type NoteProperty -Name 'cid' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            Default {}
        }
        $AllRowsIndex++
    }
    $Batch += $item
    $AllRowsIndex++
}

## Cleaning Array

$Batch = $Batch[1..($Batch.Count-1)]

## Counting Valid Passports



write-host "Counting Valid Passports..."
for ($i = 0; $i -lt $batch.Count; $i++) {
    if (($batch[$i].byr) -and ($batch[$i].iyr) -and ($batch[$i].eyr) -and ($batch[$i].hgt) -and ($batch[$i].hcl) -and ($batch[$i].ecl) -and ($batch[$i].pid)) {
        Write-Host "OK"
        $ValidPassports++
    }
}

Write-Host "Valid Passports: " $ValidPassports
