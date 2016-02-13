# Inherit common stuff
$(call inherit-product, vendor/xosp/config/common.mk)

# Include XOSP audio files
include vendor/xosp/config/xosp_audio.mk

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Tejat.ogg \
    ro.config.alarm_alert=xperia.ogg
