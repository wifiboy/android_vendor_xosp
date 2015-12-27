
# Copy S+ Reborn Apps

# Normal Apps

PRODUCT_COPY_FILES += \
		vendor/reborn/prebuilt/common/apps/Home.apk:system/app/Home/Home.apk \
		vendor/reborn/prebuilt/common/apps/SemcClock.apk:system/app/SemcClock/SemcClock.apk \
		vendor/reborn/prebuilt/common/apps/WallpaperPicker.apk:system/app/WallpaperPicker/WallpaperPicker.apk \
		vendor/reborn/prebuilt/common/apps/ClockWidget.apk:system/app/ClockWidget/ClockWidget.apk \
		vendor/reborn/prebuilt/common/apps/Music.apk:system/priv-app/Music/Music.apk \
		vendor/reborn/prebuilt/common/apps/Sketch.apk:system/app/Sketch/Sketch.apk \
		vendor/reborn/prebuilt/common/apps/Video.apk:system/priv-app/Video/Video.apk \
		vendor/reborn/prebuilt/common/apps/Weather.apk:system/app/Weather/Weather.apk \
		vendor/reborn/prebuilt/common/apps/WeatherWidget.apk:system/app/WeatherWidget/WeatherWidget.apk \
		vendor/reborn/prebuilt/common/apps/SmartConnect.apk:system/app/SmartConnect/SmartConnect.apk \
		vendor/reborn/prebuilt/common/apps/AudioRecorder.apk:system/app/AudioRecorder/AudioRecorder.apk

# Custom Xperia Apps (Propietary frameworks and libs required)

# Semc Calendar 

PRODUCT_COPY_FILES += \
		vendor/reborn/prebuilt/common/apps/Calendar/SemCalendar.apk:system/priv-app/SemCalendar/SemCalendar.apk \
		vendor/reborn/prebuilt/common/apps/Calendar/frameworks/com.sonyericsson.uxpres.jar:system/frameworks/com.sonyericsson.uxpres.jar \
		vendor/reborn/prebuilt/common/apps/Calendar/frameworks/com.sonymobile.provider.tasks.jar:system/frameworks/com.sonymobile.provider.tasks.jar \
		vendor/reborn/prebuilt/common/apps/Calendar/frameworks/SemcGenericUxpRes.apk:system/frameworks/SemcGenericUxpRes.apk \
		vendor/reborn/prebuilt/common/apps/Calendar/etc/permissions/com.sonyericsson.uxpres.xml:system/etc/permissions/com.sonyericsson.uxpres.xml \
		vendor/reborn/prebuilt/common/apps/Calendar/etc/permissions/com.sonymobile.provider.tasks.xml:system/etc/permissions/com.sonymobile.provider.tasks.xml \
		vendor/reborn/prebuilt/common/apps/Calendar/etc/permissions/platform.xml:system/etc/permissions/platform.xml

# textinput-tng

PRODUCT_COPY_FILES += \
		vendor/reborn/prebuilt/common/apps/textinput-tng/textinput-tng.apk:system/priv-app/textinput-tng/textinput-tng.apk \
		vendor/reborn/prebuilt/common/apps/textinput-tng/lib/arm/libswiftkeysdk-java.so:system/priv-app/textinput-tng/lib/arm/libswiftkeysdk-java.so
		
$(call inherit-product, vendor/reborn/config/reborn_extras.mk)
