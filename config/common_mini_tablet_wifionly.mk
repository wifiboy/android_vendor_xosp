# Inherit common stuff
$(call inherit-product, vendor/reborn/config/common.mk)

# Include S+ Reborn audio files
include vendor/reborn/config/reborn_audio.mk

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Tejat.ogg \
    ro.config.alarm_alert=xperia.ogg
