LOCAL_PATH := device/lge/f6mt/prebuilt

# ICU
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/usr/icu/icudt48l.dat:system/usr/icu/icudt48l.dat 

# IDC
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/usr/idc/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
     $(LOCAL_PATH)/usr/idc/osp3-input.idc:system/usr/idc/osp3-input.idc \
     $(LOCAL_PATH)/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
     $(LOCAL_PATH)/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# KEYCHARS
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
     $(LOCAL_PATH)/usr/keychars/gpio-keys.kcm:system/usr/keychars/gpio-keys.kcm \
     $(LOCAL_PATH)/usr/keychars/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm \
     $(LOCAL_PATH)/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
     $(LOCAL_PATH)/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
     $(LOCAL_PATH)/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm

# KEYLAYOUT
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
     $(LOCAL_PATH)/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
     $(LOCAL_PATH)/usr/keylayout/lge_synaptics_touch.kl:system/usr/keylayout/lge_synaptics_touch.kl \
     $(LOCAL_PATH)/usr/keylayout/melfas-ts.kl:system/usr/keylayout/melfas-ts.kl \
     $(LOCAL_PATH)/usr/keylayout/osp3-input.kl:system/usr/keylayout/osp3-input.kl \
     $(LOCAL_PATH)/usr/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
     $(LOCAL_PATH)/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl
