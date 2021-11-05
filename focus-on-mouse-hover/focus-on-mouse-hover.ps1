#
# This powershell script emulates the "focus by hover" I use on Linux :D
# Edited from https://superuser.com/a/1209478
#

$signature = @"
[DllImport("user32.dll")]
public static extern bool SystemParametersInfo(int uAction, int uParam, ref 
int lpvParam, int flags );
"@

$systemParamInfo = Add-Type -memberDefinition  $signature -Name SloppyFocusMouse -passThru

[Int32]$newVal = 1
$systemParamInfo::SystemParametersInfo(0x1001, 0, [REF]$newVal, 2)