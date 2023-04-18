basic requirements package

- Change app name
- add app icon
- splash screen
- introduction page
- theme
- localization
- rouiting


<br>
<br>
<br>


## Change App Name

<details style="margin:15px">
  <summary style="font-size:20px"> Usage</summary>
  
#### Android

Go to android manifest.xml.

```
android / app / src / main / AndroidManifest.xml
```


Change android label with your app name.

```
<application
          android:name="io.flutter.app.FlutterApplication"
          android:label="App Name"
          android:icon="@mipmap/launcher_icon">
```


#### Ios

Go to Info.plist.


```
ios / Runner / Info.plist
```

Change bundle name with your app name.
```
<key>CFBundleName</key>
<string>App Name</string>
```
</details>




