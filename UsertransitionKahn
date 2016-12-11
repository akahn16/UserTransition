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

#check to see if AppData is still non-local
if ($env:APPDATA.Substring(0,2) -ne 'C:') {
    write-host 'app data is still redirected'
    exit
}
else
{
    
 
   If ((Test-Path $OldRedirectedAppData\Transitioned.txt) –eq $True) 
    {
    $isTransitioned = $true
    exit
    }
    else
    {
    write-host 'app data is local'

    
    # ok, apparantly app data is now local, has old redirected AppData been copied to roaming?

    if ($isTransitioned -eq $false) {

        #Acutal Code Begin
        #$OldRedirectedAppData = ($env:HOMEDRIVE + '\SomeFolderPath\AppData')
        #$NewRoamingAppData = ($env:USERPROFILE + '\AppData\Roaming')
        #Write-Host ('OldRedirectedAppData: ' + $OldRedirectedAppData)
        #write-host ('NewRoamingAppData: ' + $NewRoamingAppData)
        #Robocopy $OldRedirectedAppData $NewRoamingAppData /mov /mt /e
        #Out-file $OldRedirectedAppData\Transitioned.txt
        #Actual Code End

        #Test Code Begin
        $OldRedirectedAppData='C:\Old'
        $NewRoamingAppData='C:\New'
        Robocopy $OldRedirectedAppData $NewRoamingAppData /mov /mt /e
        Out-file $OldRedirectedAppData\Transitioned.txt

        Start-Sleep -seconds 30
        logoff

    }



}
}


# check something to determine if transition has occured, if so, exit, otherwise copy stuff
