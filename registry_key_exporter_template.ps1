#specify the registry key directory
$registryKeyPath = "example"  #replace this with your desired registry key directory

#specify the output file path
$outputFile = "example"

#check if the registry key exists
if (Test-Path "Registry::$registryKeyPath") {
    #get the registry key and its values
    $registryKey = Get-Item "Registry::$registryKeyPath"

    #start making output content
    $outputContent = "Registry Key: $registryKeyPath`r`n"
    $outputContent += "Name: $($registryKey.PSChildName)`r`n"
    $outputContent += "Directory: $($registryKey.PSPath)`r`n"
    $outputContent += "`r`nContents:`r`n"

    #add each value to the output
    foreach ($value in $registryKey.GetValueNames()) {
        $outputContent += "$value = $($registryKey.GetValue($value))`r`n"
    }

    #write the data to the specified file
    Set-Content -Path $outputFile -Value $outputContent
    Write-Host "Registry key data has been written to $outputFile"
} else {
    Write-Host "The specified registry key does not exist."
}
