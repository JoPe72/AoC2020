$PasswordFile = Get-Content $PSScriptRoot\Input-Day2.txt
$CorrectPasswordsPol1 = 0
$CorrectPasswordsPol2 = 0
foreach($PasswordLine in $PasswordFile)
{
    #Write-Host $PasswordLine
    #pos,length

    ##Parsing
    $RuleMin = $PasswordLine.SubString(0,$PasswordLine.IndexOf("-"))
    $RuleMax = $PasswordLine.SubString($PasswordLine.IndexOf("-")+1,($PasswordLine.IndexOf(":")-4 - $PasswordLine.IndexOf("-")+1))
    $Letter = $PasswordLine.SubString($PasswordLine.IndexOf(":")-1,1)
    
    #Pol2
    $Pos1 = $RuleMin
    $Pos2 = $RuleMax

    #$PasswordStart = $PasswordLine.SubString($PasswordLine.IndexOf(":")+2,1)
    #$PasswordStart

    #$PasswordEnd = $PasswordLine.SubString((($PasswordLine.Length)-1),1)
    #$PasswordEnd

    $Password = $PasswordLine.SubString($PasswordLine.IndexOf(":")+2,($PasswordLine.Length) - ($PasswordLine.IndexOf(":") + 2))
    
    #($PasswordLine.Length)
    #$PasswordLine.IndexOf(":")+2
    #($PasswordLine.Length) - ($PasswordLine.IndexOf(":") + 2)
    #Verify
    #write-host $RuleMin " - " $RuleMax " - " $Letter " - " $Password
    
    ## Checking Pol1
    $NumberofChars = 0
    for ($i = 0; $i -lt $Password.Length; $i++)
    {
      if ($Password[$i] -eq $Letter) {
        $NumberofChars++
      }
    }
    #Write-host $NumberofChars "-" $RuleMax "-" $RuleMin

    if (($NumberofChars -le $RuleMax) -and ($NumberofChars -ge $RuleMin)) {
        $CorrectPasswordsPol1++
        #Write-Host $CorrectPasswords
    }

    ## Checking Pol 2
    #$Password[$Pos1-1]
    #$Password[$Pos2-1]
    if (($Password[$Pos1-1] -eq $Letter) -xor ($Password[$Pos2-1] -eq $Letter)) {
        $CorrectPasswordsPol2++
    }
    #$CorrectPasswordsPol2
    #Start-Sleep -Seconds 2
}

Write-Host "Correct Password Policy 1: "$CorrectPasswordsPol1
Write-Host "Correct Password Policy 2: "$CorrectPasswordsPol2