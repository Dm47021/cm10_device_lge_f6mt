LOCAL_PATH := $(call my-dir)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/ramdisk/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/ramdisk/init.fx3.rc:root/init.fx3.rc \
    $(LOCAL_PATH)/ramdisk/sbin/chargerlogo:root/sbin/chargerlogo \
    $(LOCAL_PATH)/ramdisk/charger:root/charger \
    $(LOCAL_PATH)/ramdisk/chargerlogo_res_images-timestamp:root/chargerlogo_res_images-timestamp \
    $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_charge.png:root/res/images/charger/battery_charge.png \
    $(LOCAL_PATH)/ramdisk/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png 

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.rc:recovery/root/init.recovery.rc \

# f6mt vendor blobs
$(call inherit-product-if-exists, device/lge/f6mt/f6mt-prebuilts.mk)

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    libalsa-intf \
    libaudioutils

# Bluetooth
PRODUCT_PACKAGES += \
    bdAddrLoader

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# Hostapd
PRODUCT_PACKAGES += \
    hostapd

# Live wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# NFC
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
    packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt)

PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag 

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxWmaDec \
    libstagefrighthw

# Power Hal
PRODUCT_PACKAGES += \
    power.msm8960

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

# System Prop for F6MT
PRODUCT_PROPERTY_OVERRIDES += \
     ro.telephony.ril_class=LGEQualcommUiccRIL \
     rild.libpath=/system/lib/libril-qc-qmi-1.so \
     rild.libargs=-d /dev/smd0 \
     persist.rild.nitz_plmn= \
     persist.rild.nitz_long_ons_0= \
     persist.rild.nitz_long_ons_1= \
     persist.rild.nitz_long_ons_2= \
     persist.rild.nitz_long_ons_3= \
     persist.rild.nitz_short_ons_0= \
     persist.rild.nitz_short_ons_1= \
     persist.rild.nitz_short_ons_2= \
     persist.rild.nitz_short_ons_3= \
     ril.subscription.types=NV,RUIM \
     DEVICE_PROVISIONED=1 \
     debug.sf.hw=1 \
     debug.egl.hw=1 \
     debug.composition.type=gpu \
     dalvik.vm.heapsize=36m \
     debug.mdpcomp.maxlayer=3 \
     debug.mdpcomp.logs=0 \
     wifi.interface=wlan0 \

    
PRODUCT_PROPERTY_OVERRIDES += \
     ro.hdmi.enable=false \
     lpa.decode=true \
     lpa.use-stagefright=true 

#system props for the MM modules
PRODUCT_PROPERTY_OVERRIDES += \
     media.stagefright.enable-player=true \
     media.stagefright.enable-http=true \
     media.stagefright.enable-aac=true \
     media.stagefright.enable-qcp=true \
     media.stagefright.enable-fma2dp=true \
     media.stagefright.enable-scan=true \
     mmp.enable.3g2=true

#
# system props for the data modules
#
PRODUCT_PROPERTY_OVERRIDES += \
     ro.use_data_netmgrd=true 

#system props for time-services
PRODUCT_PROPERTY_OVERRIDES += \
     persist.timed.enable=true

# System props for audio
PRODUCT_PROPERTY_OVERRIDES += \
     persist.audio.fluence.mode=endfire \
     persist.audio.vr.enable=false \
     persist.audio.voice.clarity=none \
     af.resampler.quality=255 \
     mpq.audio.decode=false 

#
# system prop for opengles version
#
# 131072 is decimal for 0x20000 to report version 2
PRODUCT_PROPERTY_OVERRIDES += \
     ro.opengles.version=131072]

#system prop for switching gps driver to qmi
PRODUCT_PROPERTY_OVERRIDES += \
     persist.gps.qmienabled=true

# System props for telephony
PRODUCT_PROPERTY_OVERRIDES += \
     telephony.lteOnCdmaDevice=1 \
     ro.ril.transmitpower=true \
     persist.radio.apm_sim_not_pwdn=1 \
     persist.radio.data_no_toggle=1 \
     telephony.lteOnCdmaDevice=0 \
     persist.gsm.sms.forcegsm7=0 \
     ro.radio.GWLdevice=1 \
     ro.radio.topreviousmode=disable \
     persist.radio.lte_vrte_ltd=1 \
     

PRODUCT_PROPERTY_OVERRIDES += \
     ro.hwui.text_cache_width=2048 

#snapdragon value add features
PRODUCT_PROPERTY_OVERRIDES += \
     ro.qcom.audio.ssr=true

PRODUCT_PROPERTY_OVERRIDES += \
     service.brcm.bt.wbs=1 \
     service.brcm.bt.aptx=0 \
     service.brcm.bt.3way_support=true

#
# ADDITIONAL_BUILD_PROPERTIES
#
PRODUCT_PROPERTY_OVERRIDES += \
     ro.build.target_operator=TMO \
     ro.build.target_operator_ext=MPCS_TMO \
     ro.telephony.default_network=9 \
     ro.build.target_country=US \
     ro.sf.lcd_density=240 \
     ime_vibration_pattern=0:20 \
     wlan.chip.vendor=brcm \
     wlan.chip.version=bcm4330 \
     keyguard.no_require_sim=true \
     ro.vendor.extension_library=/system/lib/libqc-opt.so \
     ro.nfc.port=I2C \
     dalvik.vm.dexopt-flags=m=y \
     net.bt.name=Android

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

     
     
     
     
     

     


     















