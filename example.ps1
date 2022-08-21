# 
# $env:CUSTOM_VARIABLE = 'Fancy Value'
# $custom = [System.Environment]::GetEnvironmentVariable('CUSTOM_VARIABLE')
# [System.Environment]::ExpandEnvironmentVariables($custom)
$Error.Clear()

Get-Content procs.txt 
    | ForEach-Object { [System.Environment]::ExpandEnvironmentVariables($_) } 
    | Set-Content -Encoding utf8 -Path procs-out.txt

# Invoke-Expression './notepad.exe "procs-out.txt"'

# &"E:\Software\Notepad\notepad++.exe" "procs-out.txt"

Write-Host $Error