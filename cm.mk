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

    CDMA_CARRIER_ALPHA := MetroPCSLTE
    CARRIER_NUMERIC := 310260

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.sim.operator.alpha=$(CARRIER_ALPHA) \
    gsm.sim.operator.numeric=$(CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CARRIER_ALPHA) \
    gsm.operator.numeric=$(CARRIER_NUMERIC) \

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="MetroPCS/f6_mpcs_tmo_us/f6:4.1.2/JZO54K/MS50012b.1395661880:user/release-keys" \
    PRIVATE_BUILD_DESC="f6_mpcs_tmo_us-user 4.1.2 JZO54K MS50012b.1395661880 release-keys"
