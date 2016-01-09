# Inherit common stuff
$(call inherit-product, vendor/reborn/config/common.mk)

# Include audio files
include vendor/reborn/config/reborn_audio.mk

# Optional S+ Reborn packages
PRODUCT_PACKAGES += \
    Screencast

# Extra tools in S+ Reborn
PRODUCT_PACKAGES += \
    7z \
    lib7z \
    bash \
    bzip2 \
    curl \
    powertop \
    unrar \
    unzip \
    vim \
    wget \
    zip
