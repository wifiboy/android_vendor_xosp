# Inherit common XOSP stuff
$(call inherit-product, vendor/xosp/config/common_full.mk)

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/xosp/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/xosp/config/telephony.mk)
