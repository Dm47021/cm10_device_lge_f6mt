# Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := f6

TARGET_BOOTANIMATION_NAME := 540x960

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/f6mt/device_f6mt.mk)

# Device naming
PRODUCT_DEVICE := f6mt
PRODUCT_NAME := cm_f6mt
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-MS500
PRODUCT_MANUFACTURER := lge

    CDMA_CARRIER_ALPHA := MetroPCS
    CDMA_CARRIER_NUMERIC := 311660

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.sim.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.sim.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.operator.numeric=$(CDMA_CARRIER_NUMERIC) \

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="lge/l0_MPCS_US/l0:4.1.2/JZO54K/MS77010f.1360114527:user/release-keys" \
    PRIVATE_BUILD_DESC="l0_MPCS_US-user 4.1.2 JZO54K MS77010f.1360114527 release-keys"
