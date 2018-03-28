---
title: "Oauth2 Android"
date: 2018-02-06T12:52:07+01:00
---
Quick memo on how to get a oauth2 callback code on android
<!--more-->

# RFC

https://tools.ietf.org/html/rfc6749

# Open the login page

```java
Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://api.imgur.com/oauth2/authorize?response_type=code&client_id=5K1007A20z106d9c44"));
startActivity(intent);
```
 ⚠️ you may have to specify a callback query parameter in the url ⚠️

# Handle Callback
app/src/main/AndroidManifest.xml

```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
          package="network.antoine.epicture">

    <application ... >
        <activity ... >
            <!-- ... ->

            <!-- oauth2 callback -->
            <intent-filter>
                <action android:name="android.intent.action.VIEW"/>

                <category android:name="android.intent.category.DEFAULT"/>
                <category android:name="android.intent.category.BROWSABLE"/>

                <data
                    android:host="callback"
                    android:scheme="epicture"/>
            </intent-filter>

            <!-- ... ->
        </activity>
    </application>
</manifest>
```
