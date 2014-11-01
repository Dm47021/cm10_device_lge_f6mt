# f6mt vendor blobs from stock JZ054K JB 4.1.2

# bin
$(call inherit-product-if-exists, device/lge/f6mt/prebuilt/prebuilt-bin.mk)
# etc
$(call inherit-product-if-exists, device/lge/f6mt/prebuilt/prebuilt-etc.mk)
# lib
$(call inherit-product-if-exists, device/lge/f6mt/prebuilt/prebuilt-lib.mk)
# usr
$(call inherit-product-if-exists, device/lge/f6mt/prebuilt/prebuilt-usr.mk)
# vendor
$(call inherit-product-if-exists, device/lge/f6mt/prebuilt/prebuilt-vendor.mk)

