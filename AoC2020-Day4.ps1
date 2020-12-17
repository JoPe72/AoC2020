Clear-Host
$PassportBatchFile = Get-Content "$PSScriptRoot\Input-Day4.txt"

$AllRows = $PassportBatchFile -split "\s+"
$BatchIndex = 0
$Recordnumber = 0

$Batch = @()
$item = New-Object PSObjects
$item | Add-Member -type NoteProperty -Name 'iyr' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'ecl' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'hcl' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'pid' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'pyr' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'hgt' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'eyr' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'byr' -Value 'X'
$item | Add-Member -type NoteProperty -Name 'cid' -Value 'X'

$Batch += $item

for ($AllRowsIndex = 0; $AllRowsIndex -lt $AllRows.Count) {
    while ($AllRows[$AllRowsIndex] -ne "") {
        $item = New-Object PSObject
        switch ($AllRows[$AllRowsIndex].split(":")[0]) {
            iyr {$AllRowsIndex
                $AllRows[$AllRowsIndex].split(":")[1]
                 $item | Add-Member -type NoteProperty -Name 'iyr' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            ecl {$AllRowsIndex
                $AllRows[$AllRowsIndex].split(":")[1]
                $item | Add-Member -type NoteProperty -Name 'ecl' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            hcl {$AllRowsIndex
                $AllRows[$AllRowsIndex].split(":")[1]
                 $item | Add-Member -type NoteProperty -Name 'hcl' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            pid {$AllRowsIndex
                $AllRows[$AllRowsIndex].split(":")[1]
                 $item | Add-Member -type NoteProperty -Name 'pid' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            pyr {$AllRowsIndex
                $AllRows[$AllRowsIndex].split(":")[1]
                 $item | Add-Member -type NoteProperty -Name 'pyr' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            hgt {$AllRowsIndex
                $AllRows[$AllRowsIndex].split(":")[1]
                $item | Add-Member -type NoteProperty -Name 'hgt' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            eyr {$AllRowsIndex
                $AllRows[$AllRowsIndex].split(":")[1]
                $item | Add-Member -type NoteProperty -Name 'eyr' -Value $AllRows[$AllRowsIndex].split(":")[1]  }
            Default {}
        }
        #start-sleep -Seconds 5
        $item
        $AllRowsIndex++
    }
    $Batch += $item
    $AllRowsIndex++
    start-sleep -Seconds 5
}





# foreach ($row in $AllRows){

#     if ($row -ne "") {
#         Write-Host $row.split(":")[0]
#         Write-Host $row.split(":")[1]
#         switch ($row.split(":")[0]) {
#             iyr {  }
#             ecl {  }
#             hcl {  }
#             pid {  }
#             pyr {  }
#             hgt {  }
#             eyr {  }
#             Default {}
#         }
#     }
#     else {
#         $BatchIndex++
#     }
    
# }


# $Batch = @()

# $item = New-Object PSObject
# $item | Add-Member -type NoteProperty -Name 'iyr' -Value 'X'
# $item | Add-Member -type NoteProperty -Name 'ecl' -Value 'X'
# $item | Add-Member -type NoteProperty -Name 'hcl' -Value 'X'
# $item | Add-Member -type NoteProperty -Name 'pid' -Value 'X'
# $item | Add-Member -type NoteProperty -Name 'pyr' -Value 'X'
# $item | Add-Member -type NoteProperty -Name 'hgt' -Value 'X'
# $item | Add-Member -type NoteProperty -Name 'eyr' -Value 'X'
# $item | Add-Member -type NoteProperty -Name 'byr' -Value 'X'
# $item | Add-Member -type NoteProperty -Name 'cid' -Value 'X'

# $Batch += $item