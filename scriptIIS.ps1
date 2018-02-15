$site = "IIS:\Sites"
$setpolicy = "Read, Script,Execute"
Set-WebConfiguration //System.webServer/handlers -metadata overrideMode -value Allow -PSPath IIS:/ -verbose
Set-WebConfiguration -filter "/system.webServer/handlers/@AccessPolicy" -PSPath $site -value $setpolicy -verbose
Set-WebConfigurationProperty -filter /system.webServer/directoryBrowse -name enabled -PSPath 'IIS:\Sites\Default Web Site' -value true
