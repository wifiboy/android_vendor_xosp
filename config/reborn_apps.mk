
# Copy S+ Reborn Apps

PRODUCT_COPY_FILES += \
		vendor/reborn/prebuilt/common/apps/Home.apk:system/app/Home/Home.apk \
		vendor/reborn/prebuilt/common/apps/SemcClock.apk:system/app/SemcClock/SemcClock.apk \
		vendor/reborn/prebuilt/common/apps/WallpaperPicker.apk:system/app/WallpaperPicker/WallpaperPicker.apk

$(call inherit-product, vendor/reborn/config/reborn_extras.mk)
