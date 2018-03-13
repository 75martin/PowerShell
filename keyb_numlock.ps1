#################################################################
# 2nd method:                                                   #
# 1. Shutdown computer and start it again.                      #
# 2. At logon screen, enable numlock and shutdown.              #
# 3. Start computer back up and login.                          #
#################################################################



Set-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name HiberbootEnabled -Value 0 -Verbose

#$tp = Test-Path HKU:
#if ($tp -eq $false){
#    New-PSDrive -Name HKU -PSProvider Registry -Root HKEY_USERS
#    }

#Set-ItemProperty "HKU:\*\Control Panel\Keyboard" -Name InitialKeyboardIndicators -Value 2 -Verbose
#Set-ItemProperty "HKCU:\Control Panel\Keyboard" -Name InitialKeyboardIndicators -Value 2 -Verbose

Set-ExecutionPolicy Restricted
$ExPo = Get-ExecutionPolicy
Write-Host "ExecutionPolicy set to $ExPo"
pause