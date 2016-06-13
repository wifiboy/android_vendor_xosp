# Inherit common stuff
$(call inherit-product, vendor/xosp/config/common.mk)

# Include audio files
include vendor/xosp/config/xosp_audio.mk

PRODUCT_SIZE := full

# Optional XOSP packages
PRODUCT_PACKAGES += \
    Screencast

# Extra tools in XOSP
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
