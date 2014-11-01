
# Inherit from the proprietary version
-include vendor/lge/f6mt/BoardConfigVendor.mk

# Platform Qualcomm MSM8930/8960
BOARD_VENDOR := LGE
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_CPU_VARIANT := krait
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp


# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Kernel
BOARD_CUSTOM_BOOTIMG_MK      := device/lge/f6mt/releasetools/mkbootimg.mk
BOARD_KERNEL_CMDLINE         := androidboot.hardware=qcom user_debug=31 vmalloc=308M
BOARD_KERNEL_BASE            := 0x80200000
BOARD_FORCE_RAMDISK_ADDRESS  := 0x02000000
BOARD_KERNEL_PAGESIZE        := 2048
TARGET_KERNEL_SOURCE         := kernel/lge/f6mt
TARGET_KERNEL_CONFIG         := cm_f6mt_defconfig
TARGET_SPECIFIC_HEADER_PATH := device/lge/f6mt/include
TARGET_NO_INITLOGO := true
TARGET_RECOVERY_INITRC := device/lge/f6mt/recovery/root/init.recovery.rc

# Audio
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_PROVIDES_CAMERA_HAL := true
TARGET_PROVIDES_LIBCAMERA := true
COMMON_GLOBAL_CFLAGS += -DLG_CAMERA_HARDWARE

# FM
QCOM_FM_ENABLED := true
BOARD_USES_SEPERATED_FM := true

# Graphics
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
USE_OPENGL_RENDERER := true
BOARD_USES_HWCOMPOSER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/lge/f6mt/prebuilt/lib/egl/egl.cfg
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ROTATOR_KERNEL_FORMATS

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# NFC
BOARD_HAVE_NFC := true

# Wifi related defines
WIFI_BAND := 802_11_ABGN
BOARD_WLAN_DEVICE_REV := bcm4330
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"

# Vold
BOARD_VOLD_MAX_PARTITIONS := 24
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/lge/f6mt/vibrator/tspdrv.c

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
ENABLE_WTF_USE_ACCELERATED_COMPOSITING := true
WEBCORE_INPAGE_VIDEO := true

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/lge/f6mt/releasetools/f6mt_ota_from_target_files
