
# Copy S+ Reborn Apps

PRODUCT_COPY_FILES += \
    vendor/reborn/prebuilt/common/apps/ClockWidgets.apk:system/app/ClockWidgets/ClockWidgets.apk \
		vendor/reborn/prebuilt/common/apps/Home.apk:system/app/ClockWidgets/Home.apk \
		vendor/reborn/prebuilt/common/apps/WeatherWidget.apk:system/app/ClockWidgets/WeatherWidget.apk

$(call inherit-product, vendor/reborn/config/reborn_extras.mk)
