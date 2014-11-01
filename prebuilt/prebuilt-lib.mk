
# EGL
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
     $(LOCAL_PATH)/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
     $(LOCAL_PATH)/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
     $(LOCAL_PATH)/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
     $(LOCAL_PATH)/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
     $(LOCAL_PATH)/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
     $(LOCAL_PATH)/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so


# HW
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/lib/hw/camera.msm8960.so:system/lib/hw/camera.msm8960.so \
     $(LOCAL_PATH)/lib/hw/gps.default.so:system/lib/hw/gps.default.so \
     $(LOCAL_PATH)/lib/hw/lights.msm8960.so:system/lib/hw/lights.msm8960.so \
     $(LOCAL_PATH)/lib/hw/nfc.default.so:system/lib/hw/nfc.default.so \
     $(LOCAL_PATH)/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so 
   
     
     

