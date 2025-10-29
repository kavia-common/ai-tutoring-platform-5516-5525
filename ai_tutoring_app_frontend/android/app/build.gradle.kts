plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
}

android {
    namespace = "com.example.monorepo_root_wrapper"
    compileSdk = 34

    defaultConfig {
        applicationId = "com.example.monorepo_root_wrapper"
        minSdk = 23
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
        }
    }
}

dependencies {
    implementation("org.jetbrains.kotlin:kotlin-stdlib:1.8.22")
}
```

Explanation: Add a minimal Android Manifest so analyzers see a valid app module
````write file="android/app/src/main/AndroidManifest.xml"
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.monorepo_root_wrapper">
    <application
        android:label="Monorepo Root Wrapper"
        android:icon="@mipmap/ic_launcher">
        <activity
            android:name="io.flutter.embedding.android.FlutterActivity"
            android:exported="true"
            android:launchMode="singleTop"
            android:theme="@style/Theme.Material3.DayNight.NoActionBar">
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
    </application>
</manifest>
