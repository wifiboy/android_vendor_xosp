
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
		vendor/reborn/prebuilt/common/apps/AudioRecorder.apk:system/app/AudioRecorder/AudioRecorder.apk \
		vendor/reborn/prebuilt/common/apps/SemCalendar.apk:system/priv-app/SemCalendar/SemCalendar.apk \
		vendor/reborn/prebuilt/common/frameworks/com.sonyericsson.uxpres.jar:system/frameworks/com.sonyericsson.uxpres.jar \
		vendor/reborn/prebuilt/common/frameworks/com.sonymobile.provider.tasks.jar:system/frameworks/com.sonymobile.provider.tasks.jar \
		vendor/reborn/prebuilt/common/frameworks/SemcGenericUxpRes.apk:system/frameworks/SemcGenericUxpRes.apk \
		vendor/reborn/prebuilt/common/etc/permissions/com.sonyericsson.uxpres.xml:system/etc/permissions/com.sonyericsson.uxpres.xml \
		vendor/reborn/prebuilt/common/etc/permissions/com.sonymobile.provider.tasks.xml:system/etc/permissions/com.sonymobile.provider.tasks.xml \
		vendor/reborn/prebuilt/common/apps//textinput-tng.apk:system/priv-app/textinput-tng/textinput-tng.apk \
		vendor/reborn/prebuilt/common/lib/libswiftkeysdk-java.so:system/priv-app/textinput-tng/lib/arm/libswiftkeysdk-java.so \
		vendor/reborn/prebuilt/common/apps/Album.apk:system/priv-app/Album/Album.apk \
		vendor/reborn/prebuilt/common/lib/libdrmstream_depjb.so:system/priv-app/Album/lib/arm/libdrmstream_depjb.so \
		vendor/reborn/prebuilt/common/lib/libgifreader.so:system/priv-app/Album/lib/arm/libgifreader.so \
		vendor/reborn/prebuilt/common/lib/libimagecalc.so:system/priv-app/Album/lib/arm/libimagecalc.so \
		vendor/reborn/prebuilt/common/lib/libjpeguser.so:system/priv-app/Album/lib/arm/libjpeguser.so \
		vendor/reborn/prebuilt/common/lib/libmaketc.so:system/priv-app/Album/lib/arm/libmaketc.so \
		vendor/reborn/prebuilt/common/lib/libnativeio.so:system/priv-app/Album/lib/arm/libnativeio.so \
		vendor/reborn/prebuilt/common/lib/libsceniccore.so:system/priv-app/Album/lib/arm/libsceniccore.so \
		vendor/reborn/prebuilt/common/lib/libspf.so:system/priv-app/Album/lib/arm/libspf.so \
		vendor/reborn/prebuilt/common/lib/libSQHashGenerator.so:system/priv-app/Album/lib/arm/libSQHashGenerator.so

# Custom Xperia Apps (Propietary frameworks and libs required)

# Semc Calendar 


# textinput-tng



# Album

		
$(call inherit-product, vendor/reborn/config/reborn_extras.mk)
