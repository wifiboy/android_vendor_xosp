# Inherit common stuff
$(call inherit-product, vendor/reborn/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/reborn/overlay/dictionaries

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Tejat.ogg \
    ro.config.alarm_alert=xperia.ogg
