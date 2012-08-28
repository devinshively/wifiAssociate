This project is verified working with iOS 5.1
Do not attempt to install this project to the simulator or to your device using Xcode. Your device must be jailbroken!

Buid Steps:

1. In testViewController.m, line 35, modify Enter network here to the SSID of the network you wish to associate to. (optional. if network is wep or wpa protected, edit SOLStumbler, line , change NULL to @"YourWpaKeyHere")
2. Go to Product > Build For > Archiving
3. Right click Products > wificonnect43.app and click "Show in Finder"
4. In the folder Release-iphoneos, move wifiConnect43.app to your Desktop
5. Move the app to your device using ssh. 
6. Find your device's IP address in the Settings.app.
7. Execute "scp -rp ~/Desktop/wifiConnect43.app root@{deviceIP}:/Applications/"
8. Default device password is "alpine"
9. Restart device
10. App will be on device and can be run

If you update the code and want to reinstall you must remove the original app following these steps:

1. SSH to device (ex. ssh root@{deviceIP})
2. Execute "rm -fr /Applications/wifiConnect43.app"
3. Execute "reboot"
4. Then follow build steps above to reinstall
