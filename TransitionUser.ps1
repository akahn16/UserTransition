<#
.Synopsis
   Transition user from redirected to roaming AppData
.DESCRIPTION
   A user logon script module which:
   1) checks whether user has already been transitioned, if not:
   2) copies old AppData directory from home directory to userprofile\appdata\roaming folder, without overwriting existing content
#>

$env:APPDATA
$env:USERPROFILE
$env:HOMEDRIVE
$RoamingAppData = ($env:USERPROFILE + '\AppData\Roaming')
$RoamingAppData

$isTransitioned = $false

# hello, we are just starting as part of user logon.  
# check something to determine if transition has occured, if so, exit, otherwise copy stuff


