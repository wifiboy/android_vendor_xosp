
# Copy S+ Reborn Apps

PRODUCT_COPY_FILES += \
    vendor/reborn/prebuilt/common/apps/ClockWidgets.apk:system/apps/ClockWidgets/ClockWidgets.apk \
		vendor/reborn/prebuilt/common/apps/Home.apk:system/apps/ClockWidgets/Home.apk \
		vendor/reborn/prebuilt/common/apps/WeatherWidget.apk:system/apps/ClockWidgets/WeatherWidget.apk

		$(call inherit-product, vendor/reborn/config/reborn_extras.mk)
