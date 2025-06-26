$impressoras = (get-printer | where-object{$_.name -match '192.168.1.1'}).name
foreach($impressora in $impressoras){$imp = $impressora.split('\')[3]; add-printer -connectionname \\servername\$imp}

$default = (Get-Ciminstance -Class Win32_Printer | where-object{$_.Default -eq $true}).name

if($default -match "192.168.1.1"){
    $name = $default.split('\')[3]
    $printers = Get-Ciminstance -class win32_Printer | where-object{$_.name -match $name}
    foreach($printer in $printers){
        if($printer -match "servername_substring"){
            invoke-CimMethod -inputObject $printer -MethodName SetDefaultPrinter
        }
    }
    
}

#foreach($impressora in $impressoras){Remove-Printer $impressora} #opcional desinstalar as impressoras por IP
