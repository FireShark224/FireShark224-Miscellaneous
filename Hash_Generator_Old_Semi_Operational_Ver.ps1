#text input
$InputText = Read-Host "Enter text to hash"

#get the timestamp for the log
$Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

#generate MD5, SHA-1, SHA-256 hashes
$MD5Hash = [System.Security.Cryptography.MD5]::Create().ComputeHash([System.Text.Encoding]::UTF8.GetBytes($InputText)) | ForEach-Object { $_.ToString("x2") } | Out-String
$SHA1Hash = [System.Security.Cryptography.SHA1]::Create().ComputeHash([System.Text.Encoding]::UTF8.GetBytes($InputText)) | ForEach-Object { $_.ToString("x2") } | Out-String
$SHA256Hash = [System.Security.Cryptography.SHA256]::Create().ComputeHash([System.Text.Encoding]::UTF8.GetBytes($InputText)) | ForEach-Object { $_.ToString("x2") } | Out-String

#clean output
$MD5Hash = $MD5Hash.Trim() -replace '\n', ''
$SHA1Hash = $SHA1Hash.Trim() -replace '\n', ''
$SHA256Hash = $SHA256Hash.Trim() -replace '\n', ''

#format the log entry
$LogEntry = "Timestamp: $Timestamp`nInput: $InputText`nMD5: $MD5Hash`nSHA-1: $SHA1Hash`nSHA-256: $SHA256Hash`n"

#define log file path
$LogFilePath = "C:\Users\Komputer\Desktop\hash_logs.txt"

#Append log entry to the log file
Add-Content -Path $LogFilePath -Value $LogEntry

#Output to console
Write-Host "Hashes and log entry added to $LogFilePath" #fun fact, i don't know how to fix my own spaghetti code meaning that hashes are seperated into weird ass lines cause i made this before going back to python cause i needed such program for a certain task... either way if you really want good hashes and some other light security tools look at https://github.com/FireShark224/Light-Security-Toolkit
