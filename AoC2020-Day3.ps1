cls
$SloapFile = $PSScriptRoot\Input-Day3.txt
$x31 = 0
$x11 = 0
$x51 = 0
$x71 = 0
$x12 = 0
$trees31 = 0
$trees11 = 0
$trees51 = 0
$trees71 = 0
$trees12 = 0

write-host "012345678901234567890123456789"
write-host $sloapfile[0]

for ($y = 0; $y -lt ($SloapFile.Count)-1) {
    
    $y++
### 3-1
    $x31=$x31+3  #x = 3 y=1

    if ($SloapFile[$y][($x31)%31] -eq '#') {
        $trees31++
    }
#    write-host  $SloapFile[$y] " - " $y " - " $($x31%31) " - " $trees31 $SloapFile[$y][($x31)%31]

 ### 1-1    
     $x11=$x11+1  #x = 1 y=1

     if ($SloapFile[$y][($x11)%31] -eq '#') {
         $trees11++
        
     }
#      write-host  $SloapFile[$y] " - " $y " - " $($x11%31) " - " $trees11 $SloapFile[$y][($x11)%31]

     ### 5-1    
     $x51=$x51+5  #x = 5 y=1

     if ($SloapFile[$y][($x51)%31] -eq '#') {
         $trees51++
        
     }
     #write-host  $SloapFile[$y] " - " $y " - " $($x51%31) " - " $trees51 $SloapFile[$y][($x51)%31]

      ### 7-1    
      $x71=$x71+7  #x = 7 y=1

      if ($SloapFile[$y][($x71)%31] -eq '#') {
          $trees71++
         
      }
      #write-host  $SloapFile[$y] " - " $y " - " $($x71%31) " - " $trees71 $SloapFile[$y][($x71)%31]

      if ($y%2 -eq 0) {
        $x12=$x12+1  #x = 1 y=1

        if ($SloapFile[$y][($x12)%31] -eq '#') {
            $trees12++
           
        }
        write-host  $SloapFile[$y] " - " $y " - " $($x12%31) " - " $trees12 $SloapFile[$y][($x12)%31]
      }
      

    #start-sleep -Seconds 1
}



write-host "Number of treen (31): " $trees31
write-host "Number of treen (11): " $trees11
write-host "Number of treen (51): " $trees51
write-host "Number of treen (71): " $trees71
write-host "Number of treen (12): " $trees12

write-host "Product: " ([int]$trees31 * [int]$trees11 * [int]$trees51 * [int]$trees71 * [int]$trees12)