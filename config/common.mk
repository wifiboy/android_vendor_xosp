PRODUCT_BRAND ?= XOSP



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
    vendor/xosp/README.mkdn:system/etc/Changelog.txt

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/xosp/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/xosp/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/xosp/prebuilt/common/bin/50-xosp.sh:system/addon.d/50-xosp.sh \
    vendor/xosp/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/xosp/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/xosp/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/xosp/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/xosp/prebuilt/common/bin/sysinit:system/bin/sysinit

ifneq ($(TARGET_BUILD_VARIANT),user)
# userinit support
PRODUCT_COPY_FILES += \
    vendor/xosp/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit
endif

# XOSP-specific init file
PRODUCT_COPY_FILES += \
    vendor/xosp/prebuilt/common/etc/init.local.rc:root/init.xosp.rc

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/xosp/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Boot animation include
ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))

# determine the smaller dimension
TARGET_BOOTANIMATION_SIZE := $(shell \
  if [ $(TARGET_SCREEN_WIDTH) -lt $(TARGET_SCREEN_HEIGHT) ]; then \
    echo $(TARGET_SCREEN_WIDTH); \
  else \
    echo $(TARGET_SCREEN_HEIGHT); \
  fi )

# get a sorted list of the sizes
bootanimation_sizes := $(subst .zip,, $(shell ls vendor/xosp/prebuilt/common/bootanimation))
bootanimation_sizes := $(shell echo -e $(subst $(space),'\n',$(bootanimation_sizes)) | sort -rn)

# find the appropriate size and set
define check_and_set_bootanimation
$(eval TARGET_BOOTANIMATION_NAME := $(shell \
  if [ -z "$(TARGET_BOOTANIMATION_NAME)" ]; then
    if [ $(1) -le $(TARGET_BOOTANIMATION_SIZE) ]; then \
      echo $(1); \
      exit 0; \
    fi;
  fi;
  echo $(TARGET_BOOTANIMATION_NAME); ))
endef
$(foreach size,$(bootanimation_sizes), $(call check_and_set_bootanimation,$(size)))

# Bootanimation 
PRODUCT_COPY_FILES += \
    vendor/xosp/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
endif
    
# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# This is XOSP
PRODUCT_COPY_FILES += \
    vendor/xosp/config/permissions/com.xosp.android.xml:system/etc/permissions/com.xosp.android.xml

# Viper
PRODUCT_COPY_FILES += \
    vendor/xosp/prebuilt/common/apps/MaterialDarkV4A.apk:system/priv-app/MaterialDarkV4A/MaterialDarkV4A.apk \
    vendor/xosp/prebuilt/common/addon.d/23-v4a.sh:system/addon.d/23-v4a.sh \
    vendor/xosp/prebuilt/common/lib/soundfx/libeffectproxy.so:system/lib/soundfx/libeffectproxy.so \
    vendor/xosp/prebuilt/common/lib/soundfx/libv4a_fx_ics.so:system/lib/soundfx/libv4a_fx_ics.so \
    vendor/xosp/prebuilt/common/su.d/50viper.sh:system/su.d/50viper.sh \
    vendor/xosp/prebuilt/common/xbin/busybox:system/xbin/busybox

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/xosp/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/xosp/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Theme engine
include vendor/xosp/config/themes_common.mk

# CMSDK
include vendor/xosp/config/cmsdk_common.mk

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
    XOSPFileManager \
    LockClock \
    CMSettingsProvider \
    ExactCalculator \
    CMSettingsProvider \
    XOSPSetupWizard \
    LiveWallpapersPicker \
    LiveLockScreenService \
    WeatherProvider \
    DataUsageProvider \
    WallpaperPicker

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Extra tools in XOSP
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

PRODUCT_PACKAGE_OVERLAYS += vendor/xosp/overlay/common

PRODUCT_RELEASE = RL6
PRODUCT_REVISION = 3
PRODUCT_REVISION_PROP = Revision3
BUILD_MAJOR=6
BUILD_MINOR=3

ifndef XOSP_BUILDTYPE
    ifdef RELEASE_TYPE
        # Starting with "XOSP_" is optional
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^XOSP_||g')
        XOSP_BUILDTYPE := $(RELEASE_TYPE)
    endif
endif
        
ifeq ($(XOSP_BUILDTYPE), OFFICIAL)
        XOSP_VERSION := XOSP-$(BUILD_MAJOR).$(BUILD_MINOR)-FINAL-MM-$(XOSP_BUILDTYPE)-$(shell date -u +%Y%m%d)-$(XOSP_BUILD)
        
		#Copy the prebuilt XOSPDelta if the device is official!
		PRODUCT_COPY_FILES += \
			vendor/xosp/prebuilt/common/XOSPDelta.zip:install/xospdelta/XOSPDelta.zip

else
    # If XOSP_BUILDTYPE is not defined, set to UNOFFICIAL
    XOSP_BUILDTYPE := UNOFFICIAL
		  XOSP_VERSION := XOSP-$(BUILD_MAJOR).$(BUILD_MINOR)-$(XOSP_BUILDTYPE)-$(shell date -u +%Y%m%d)-$(XOSP_BUILD)
endif

PRODUCT_PROPERTY_OVERRIDES += \
  ro.mod.version=$(XOSP_VERSION) \
  ro.xosp.releasetype=$(XOSP_BUILDTYPE) \
  ro.xosp.release=$(PRODUCT_RELEASE) \
  ro.xosp.revision=$(PRODUCT_REVISION_PROP) \
  ro.modversion=$(XOSP_VERSION) \
  ro.cmlegal.url=https://cyngn.com/legal/privacy-policy

XOSP_DISPLAY_VERSION := $(XOSP_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.xosp.display.version=$(XOSP_DISPLAY_VERSION)

-include $(WORKSPACE)/build_env/image-auto-bits.mk

$(call prepend-product-if-exists, vendor/extra/product.mk)
