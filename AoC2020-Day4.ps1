cls
$PassportBatchFile = Get-Content "C:\Users\JohanPersson\OneDrive\Github\AoC2020\Input-Day4.txt"

$AllRows = $PassportBatchFile -split "\s+"
$BatchIndex = 0

foreach ($row in $AllRows){

    if ($row -ne "") {
        Write-Host $row.split(":")[0]
        Write-Host $row.split(":")[1]
        switch ($row.split(":")[0]) {
            iyr {  }
            ecl {  }
            hcl {  }
            pid {  }
            pyr {  }
            hgt {  }
            eyr {  }
            Default {}
        }
    }
    else {
        $BatchIndex++
    }
    
}


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