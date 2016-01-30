PRODUCT_BRAND ?= S+Reborn



PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0
endif

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/reborn/README.mkdn:system/etc/Changelog.txt

# Backup Tool
ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
    vendor/reborn/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/reborn/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/reborn/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh \
    vendor/reborn/prebuilt/common/bin/blacklist:system/addon.d/blacklist
endif

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/reborn/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/reborn/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/reborn/prebuilt/common/bin/sysinit:system/bin/sysinit

ifneq ($(TARGET_BUILD_VARIANT),user)
# userinit support
PRODUCT_COPY_FILES += \
    vendor/reborn/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit
endif

# CM-specific init file
PRODUCT_COPY_FILES += \
    vendor/reborn/prebuilt/common/etc/init.local.rc:root/init.cm.rc

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/reborn/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Bootanimation 
PRODUCT_COPY_FILES += \
    vendor/reborn/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
    
# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# This is S+ Reborn
PRODUCT_COPY_FILES += \
    vendor/reborn/config/permissions/com.xosp.android.xml:system/etc/permissions/com.xosp.android.xml

# Viper
PRODUCT_COPY_FILES += \
    vendor/reborn/prebuilt/common/apps/MaterialDarkV4A.apk:system/priv-app/MaterialDarkV4A/MaterialDarkV4A.apk \
    vendor/reborn/prebuilt/common/addon.d/23-v4a.sh:system/addon.d/23-v4a.sh \
    vendor/reborn/prebuilt/common/lib/soundfx/libeffectproxy.so:system/lib/soundfx/libeffectproxy.so \
    vendor/reborn/prebuilt/common/lib/soundfx/libv4a_fx_ics:system/lib/soundfx/libv4a_fx_ics \
    vendor/reborn/prebuilt/common/su.d/50viper.sh:system/su.d/50viper.sh
    
# Required packages
PRODUCT_PACKAGES += \
    Development \
    BluetoothExt \
    Profiles

# Optional packages
PRODUCT_PACKAGES += \
    libemoji \
    Terminal

# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# Custom packages
PRODUCT_PACKAGES += \
    CMFileManager \
    LockClock \
    CMUpdater \
    CyanogenSetupWizard \
    CMSettingsProvider \
    ExactCalculator \
    ThemesProvider

# CM Platform Library
PRODUCT_PACKAGES += \
    org.cyanogenmod.platform-res \
    org.cyanogenmod.platform \
    org.cyanogenmod.platform.xml

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Extra tools
PRODUCT_PACKAGES += \
    libsepol \
    mke2fs \
    tune2fs \
    nano \
    htop \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    gdbserver \
    micro_bench \
    oprofiled \
    sqlite3 \
    strace \
    pigz

WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
endif

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    procmem \
    procrank \
    su
endif

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

PRODUCT_PACKAGE_OVERLAYS += vendor/reborn/overlay/common

PRODUCT_RELEASE = RL3
PRODUCT_REVISION = 1
PRODUCT_REVISION_PROP = Revision1 

ifndef REBORN_BUILDTYPE
    ifdef RELEASE_TYPE
        # Starting with "REBORN_" is optional
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^REBORN_||g')
        REBORN_BUILDTYPE := $(RELEASE_TYPE)
    endif
endif

ifeq ($(REBORN_BUILDTYPE), OFFICIAL)
        REBORN_VERSION := S+Reborn-$(PRODUCT_RELEASE)-Revision-$(PRODUCT_REVISION)-$(REBORN_BUILDTYPE)-$(shell date -u +%Y%m%d)-$(REBORN_BUILD)

else
    # If REBORN_BUILDTYPE is not defined, set to UNOFFICIAL
    REBORN_BUILDTYPE := UNOFFICIAL
		  REBORN_VERSION := S+Reborn-$(PRODUCT_RELEASE)-Revision-$(PRODUCT_REVISION)-$(REBORN_BUILDTYPE)-$(shell date -u +%Y%m%d)-$(REBORN_BUILD)
endif

PRODUCT_PROPERTY_OVERRIDES += \
  ro.mod.version=$(REBORN_VERSION) \
  ro.reborn.releasetype=$(REBORN_BUILDTYPE) \
  ro.reborn.release=$(PRODUCT_RELEASE) \
  ro.reborn.revision=$(PRODUCT_REVISION_PROP) \
  ro.modversion=$(REBORN_VERSION) \
  ro.cmlegal.url=https://cyngn.com/legal/privacy-policy

-include vendor/reborn-priv/keys/keys.mk

REBORN_DISPLAY_VERSION := $(REBORN_VERSION)

# by default, do not update the recovery with system updates
PRODUCT_PROPERTY_OVERRIDES += persist.sys.recovery_update=false

ifndef CM_PLATFORM_SDK_VERSION
  # This is the canonical definition of the SDK version, which defines
  # the set of APIs and functionality available in the platform.  It
  # is a single integer that increases monotonically as updates to
  # the SDK are released.  It should only be incremented when the APIs for
  # the new release are frozen (so that developers don't write apps against
  # intermediate builds).
  CM_PLATFORM_SDK_VERSION := 5
endif

ifndef CM_PLATFORM_REV
  # For internal SDK revisions that are hotfixed/patched
  # Reset after each CM_PLATFORM_SDK_VERSION release
  # If you are doing a release and this is NOT 0, you are almost certainly doing it wrong
  CM_PLATFORM_REV := 0
endif

PRODUCT_PROPERTY_OVERRIDES += \
  ro.reborn.display.version=$(REBORN_DISPLAY_VERSION)

# CyanogenMod Platform SDK Version
PRODUCT_PROPERTY_OVERRIDES += \
  ro.cm.build.version.plat.sdk=$(CM_PLATFORM_SDK_VERSION)

# CyanogenMod Platform Internal
PRODUCT_PROPERTY_OVERRIDES += \
  ro.cm.build.version.plat.rev=$(CM_PLATFORM_REV)

-include $(WORKSPACE)/build_env/image-auto-bits.mk

-include vendor/cyngn/product.mk

$(call prepend-product-if-exists, vendor/extra/product.mk)
