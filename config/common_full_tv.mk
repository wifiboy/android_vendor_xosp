# Inherit common stuff
$(call inherit-product, vendor/reborn/config/common_full.mk)

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Tejat.ogg \
    ro.config.alarm_alert=xperia.ogg