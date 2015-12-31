
# Copy S+ Reborn Apps

# Xperia Apps

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
		vendor/reborn/prebuilt/common/apps//textinput-tng.apk:system/priv-app/textinput-tng/textinput-tng.apk \
		vendor/reborn/prebuilt/common/apps/Album.apk:system/priv-app/Album/Album.apk \
		vendor/reborn/prebuilt/common/apps/PhotoEditor.apk:system/priv-app/PhotoEditor/PhotoEditor.apk
		
$(call inherit-product, vendor/reborn/config/reborn_extras.mk)
