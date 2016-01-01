# Copy S+ Reborn Extras

WALLPAPERS_VENDOR_PATH := vendor/reborn/prebuilt/common/etc/customization/content/com/sonyericsson/wallpaperpicker/wallpapers
WALLPAPERS_SYSTEM_PATH := system/etc/customization/content/com/sonyericsson/wallpaperpicker/wallpapers

# Xperia Wallpapers

PRODUCT_COPY_FILES += \
		$(WALLPAPERS_VENDOR_PATH)/A1.png:$(WALLPAPERS_SYSTEM_PATH)/A1.png \
		$(WALLPAPERS_VENDOR_PATH)/A1_small.png:$(WALLPAPERS_SYSTEM_PATH)/A1_small.png \
		$(WALLPAPERS_VENDOR_PATH)/A3.png:$(WALLPAPERS_SYSTEM_PATH)/A3.png \
		$(WALLPAPERS_VENDOR_PATH)/A3_small.png:$(WALLPAPERS_SYSTEM_PATH)/A3_small.png \
		$(WALLPAPERS_VENDOR_PATH)/A4.png:$(WALLPAPERS_SYSTEM_PATH)/A4.png \
		$(WALLPAPERS_VENDOR_PATH)/A4_small.png:$(WALLPAPERS_SYSTEM_PATH)/A4_small.png \
		$(WALLPAPERS_VENDOR_PATH)/A5.png:$(WALLPAPERS_SYSTEM_PATH)/A5.png \
		$(WALLPAPERS_VENDOR_PATH)/A5_small.png:$(WALLPAPERS_SYSTEM_PATH)/A5_small.png \
		$(WALLPAPERS_VENDOR_PATH)/A6.png:$(WALLPAPERS_SYSTEM_PATH)/A6.png \
		$(WALLPAPERS_VENDOR_PATH)/A6_small.png:$(WALLPAPERS_SYSTEM_PATH)/A6_small.png \
		$(WALLPAPERS_VENDOR_PATH)/B1.png:$(WALLPAPERS_SYSTEM_PATH)/B1.png \
		$(WALLPAPERS_VENDOR_PATH)/B1_small.png:$(WALLPAPERS_SYSTEM_PATH)/B1_small.png \
		$(WALLPAPERS_VENDOR_PATH)/B2.png:$(WALLPAPERS_SYSTEM_PATH)/B2.png \
		$(WALLPAPERS_VENDOR_PATH)/B2_small.png:$(WALLPAPERS_SYSTEM_PATH)/B2_small.png \
		$(WALLPAPERS_VENDOR_PATH)/B3.png:$(WALLPAPERS_SYSTEM_PATH)/B3.png \
		$(WALLPAPERS_VENDOR_PATH)/B3_small.png:$(WALLPAPERS_SYSTEM_PATH)/B3_small.png \
		$(WALLPAPERS_VENDOR_PATH)/B4.png:$(WALLPAPERS_SYSTEM_PATH)/B4.png \
		$(WALLPAPERS_VENDOR_PATH)/B4_small.png:$(WALLPAPERS_SYSTEM_PATH)/B4_small.png \
		$(WALLPAPERS_VENDOR_PATH)/B5.png:$(WALLPAPERS_SYSTEM_PATH)/B5.png \
		$(WALLPAPERS_VENDOR_PATH)/B5_small.png:$(WALLPAPERS_SYSTEM_PATH)/B5_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C1.png:$(WALLPAPERS_SYSTEM_PATH)/C1.png \
		$(WALLPAPERS_VENDOR_PATH)/C1_small.png:$(WALLPAPERS_SYSTEM_PATH)/C1_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C2.png:$(WALLPAPERS_SYSTEM_PATH)/C2.png \
		$(WALLPAPERS_VENDOR_PATH)/C2_small.png:$(WALLPAPERS_SYSTEM_PATH)/C2_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C3.png:$(WALLPAPERS_SYSTEM_PATH)/C3.png \
		$(WALLPAPERS_VENDOR_PATH)/C3_small.png:$(WALLPAPERS_SYSTEM_PATH)/C3_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C4.png:$(WALLPAPERS_SYSTEM_PATH)/C4.png \
		$(WALLPAPERS_VENDOR_PATH)/C4_small.png:$(WALLPAPERS_SYSTEM_PATH)/C4_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C6.png:$(WALLPAPERS_SYSTEM_PATH)/C6.png \
		$(WALLPAPERS_VENDOR_PATH)/C6_small.png:$(WALLPAPERS_SYSTEM_PATH)/C6_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C7.png:$(WALLPAPERS_SYSTEM_PATH)/C7.png \
		$(WALLPAPERS_VENDOR_PATH)/C7_small.png:$(WALLPAPERS_SYSTEM_PATH)/C7_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C8.png:$(WALLPAPERS_SYSTEM_PATH)/C8.png \
		$(WALLPAPERS_VENDOR_PATH)/C8_small.png:$(WALLPAPERS_SYSTEM_PATH)/C8_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C9.png:$(WALLPAPERS_SYSTEM_PATH)/C9.png \
		$(WALLPAPERS_VENDOR_PATH)/C9_small.png:$(WALLPAPERS_SYSTEM_PATH)/C9_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C10.png:$(WALLPAPERS_SYSTEM_PATH)/C10.png \
		$(WALLPAPERS_VENDOR_PATH)/C10_small.png:$(WALLPAPERS_SYSTEM_PATH)/C10_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C11.png:$(WALLPAPERS_SYSTEM_PATH)/C11.png \
		$(WALLPAPERS_VENDOR_PATH)/C11_small.png:$(WALLPAPERS_SYSTEM_PATH)/C11_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C12.png:$(WALLPAPERS_SYSTEM_PATH)/C12.png \
		$(WALLPAPERS_VENDOR_PATH)/C12_small.png:$(WALLPAPERS_SYSTEM_PATH)/C12_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C13.png:$(WALLPAPERS_SYSTEM_PATH)/C13.png \
		$(WALLPAPERS_VENDOR_PATH)/C13_small.png:$(WALLPAPERS_SYSTEM_PATH)/C13_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C14.png:$(WALLPAPERS_SYSTEM_PATH)/C14.png \
		$(WALLPAPERS_VENDOR_PATH)/C14_small.png:$(WALLPAPERS_SYSTEM_PATH)/C14_small.png \
		$(WALLPAPERS_VENDOR_PATH)/C15.png:$(WALLPAPERS_SYSTEM_PATH)/C15.png \
		$(WALLPAPERS_VENDOR_PATH)/C15.png:$(WALLPAPERS_SYSTEM_PATH)/C15_small.png \
		$(WALLPAPERS_VENDOR_PATH)/Dark.png:$(WALLPAPERS_SYSTEM_PATH)/Dark.png \
		$(WALLPAPERS_VENDOR_PATH)/Dark_small.png:$(WALLPAPERS_SYSTEM_PATH)/Dark_small.png \
		$(WALLPAPERS_VENDOR_PATH)/Light.png:$(WALLPAPERS_SYSTEM_PATH)/Light.png \
		$(WALLPAPERS_VENDOR_PATH)/Light_small.png:$(WALLPAPERS_SYSTEM_PATH)/Light_small.png

# Lib

PRODUCT_COPY_FILES += \
		vendor/reborn/prebuilt/common/lib/libdrmstream_depjb.so:system/priv-app/Album/lib/arm/libdrmstream_depjb.so \
		vendor/reborn/prebuilt/common/lib/libgifreader.so:system/priv-app/Album/lib/arm/libgifreader.so \
		vendor/reborn/prebuilt/common/lib/libimagecalc.so:system/priv-app/Album/lib/arm/libimagecalc.so \
		vendor/reborn/prebuilt/common/lib/libjpeguser.so:system/priv-app/Album/lib/arm/libjpeguser.so \
		vendor/reborn/prebuilt/common/lib/libmaketc.so:system/priv-app/Album/lib/arm/libmaketc.so \
		vendor/reborn/prebuilt/common/lib/libnativeio.so:system/priv-app/Album/lib/arm/libnativeio.so \
		vendor/reborn/prebuilt/common/lib/libsceniccore.so:system/priv-app/Album/lib/arm/libsceniccore.so \
		vendor/reborn/prebuilt/common/lib/libspf.so:system/priv-app/Album/lib/arm/libspf.so \
		vendor/reborn/prebuilt/common/lib/libSQHashGenerator.so:system/priv-app/Album/lib/arm/libSQHashGenerator.so \
		vendor/reborn/prebuilt/common/lib/libswiftkeysdk-java.so:system/priv-app/textinput-tng/lib/arm/libswiftkeysdk-java.so \
		vendor/reborn/prebuilt/common/lib/libjni_eglfence.so:system/priv-app/PhotoEditor/lib/arm/libjni_eglfence.so \
		vendor/reborn/prebuilt/common/lib/libjni_filtershow_filters.so:system/priv-app/PhotoEditor/lib/arm/libjni_filtershow_filters.so \
		vendor/reborn/prebuilt/common/lib/librs.convolve3x3.so:system/priv-app/PhotoEditor/lib/arm/librs.convolve3x3.so \
		vendor/reborn/prebuilt/common/lib/librs.grad.so:system/priv-app/PhotoEditor/lib/arm/librs.grad.so \
		vendor/reborn/prebuilt/common/lib/librs.grey.so:system/priv-app/PhotoEditor/lib/arm/librs.grey.so \
		vendor/reborn/prebuilt/common/lib/librs.saturation.so:system/priv-app/PhotoEditor/lib/arm/librs.saturation.so \
		vendor/reborn/prebuilt/common/lib/librs.vignette.so:system/priv-app/PhotoEditor/lib/arm/librs.vignette.so \
		vendor/reborn/prebuilt/common/lib/librsjni.so:system/priv-app/PhotoEditor/lib/arm/librsjni.so \
		vendor/reborn/prebuilt/common/lib/libRSSupport.so:system/priv-app/PhotoEditor/lib/arm/libRSSupport.so 

# Frameworks

PRODUCT_COPY_FILES += \
		vendor/reborn/prebuilt/common/frameworks/com.sonyericsson.uxpres.jar:system/framework/com.sonyericsson.uxpres.jar \
		vendor/reborn/prebuilt/common/frameworks/com.sonymobile.provider.tasks.jar:system/framework/com.sonymobile.provider.tasks.jar \
		vendor/reborn/prebuilt/common/frameworks/SemcGenericUxpRes.apk:system/framework/SemcGenericUxpRes.apk

# Permissions

PRODUCT_COPY_FILES += \
		vendor/reborn/prebuilt/common/etc/permissions/com.sonyericsson.uxpres.xml:system/etc/permissions/com.sonyericsson.uxpres.xml \
		vendor/reborn/prebuilt/common/etc/permissions/com.sonymobile.provider.tasks.xml:system/etc/permissions/com.sonymobile.provider.tasks.xml 
