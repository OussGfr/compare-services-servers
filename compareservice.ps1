$reference = Get-Service
$difference = Get-Service -ComputerName """""

Compare-Object $own $other -property Name, Status -PassThru | Sort-Object DisplayName | Select MachineName, Status, DisplayName, Name | Format-Table -AutoSize
