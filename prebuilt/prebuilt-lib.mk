LOCAL_PATH := device/lge/f6mt/prebuilt

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
  
# LIBS
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/lib/libacdbloader.so:system/lib/libacdbloader.so \
     $(LOCAL_PATH)/lib/libacdbloader.so:obj/lib/libacdbloader.so \
     $(LOCAL_PATH)/lib/libaudcal.so:system/lib/libaudcal.so \
     $(LOCAL_PATH)/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
     $(LOCAL_PATH)/lib/libc2d2_a3xx.so:system/lib/libc2d2_a3xx.so \
     $(LOCAL_PATH)/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
     $(LOCAL_PATH)/lib/libC2D2.so:system/lib/libC2D2.so \
     $(LOCAL_PATH)/lib/libcamera_client.so:system/lib/libcamera_client.so \
     $(LOCAL_PATH)/lib/libchromatix_hi543_default_video.so:system/lib/libchromatix_hi543_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_hi543_preview.so:system/lib/libchromatix_hi543_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_hi543_zsl.so:system/lib/libchromatix_hi543_zsl.so \
     $(LOCAL_PATH)/lib/libchromatix_imx074_default_video.so:system/lib/libchromatix_imx074_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_imx074_preview.so:system/lib/libchromatix_imx074_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_imx074_video_hd.so:system/lib/libchromatix_imx074_video_hd.so \
     $(LOCAL_PATH)/lib/libchromatix_imx074_zsl.so:system/lib/libchromatix_imx074_zsl.so \
     $(LOCAL_PATH)/lib/libchromatix_imx091_default_video.so:system/lib/libchromatix_imx091_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_imx091_preview.so:system/lib/libchromatix_imx091_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_imx091_video_hd.so:system/lib/libchromatix_imx091_video_hd.so \
     $(LOCAL_PATH)/lib/libchromatix_imx111_preview.so:system/lib/libchromatix_imx111_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_imx111_zsl.so:system/lib/libchromatix_imx111_zsl.so \
     $(LOCAL_PATH)/lib/libchromatix_imx119_default_video.so:system/lib/libchromatix_imx119_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_imx119_preview.so:system/lib/libchromatix_imx119_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_imx119_vt.so:system/lib/libchromatix_imx119_vt.so \
     $(LOCAL_PATH)/lib/libchromatix_mt9e013_default_video.so:system/lib/libchromatix_mt9e013_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_mt9e013_preview.so:system/lib/libchromatix_mt9e013_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_mt9e013_video_hfr.so:system/lib/libchromatix_mt9e013_video_hfr.so \
     $(LOCAL_PATH)/lib/libchromatix_ov2720_default_video.so:system/lib/libchromatix_ov2720_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_ov2720_hfr.so:system/lib/libchromatix_ov2720_hfr.so \
     $(LOCAL_PATH)/lib/libchromatix_ov2720_preview.so:system/lib/libchromatix_ov2720_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_ov2720_zsl.so:system/lib/libchromatix_ov2720_zsl.so \
     $(LOCAL_PATH)/lib/libchromatix_ov5647_default_video.so:system/lib/libchromatix_ov5647_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_ov5647_preview.so:system/lib/libchromatix_ov5647_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_ov5693_default_video.so:system/lib/libchromatix_ov5693_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_ov5693_preview.so:system/lib/libchromatix_ov5693_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_ov5693_zsl.so:system/lib/libchromatix_ov5693_zsl.so \
     $(LOCAL_PATH)/lib/libchromatix_ov8825_default_video.so:system/lib/libchromatix_ov8825_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_ov8825_preview.so:system/lib/libchromatix_ov8825_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_ov9726_default_video.so:system/lib/libchromatix_ov9726_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_ov9726_preview.so:system/lib/libchromatix_ov9726_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k3l1yx_default_video.so:system/lib/libchromatix_s5k3l1yx_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k3l1yx_hfr_60fps.so:system/lib/libchromatix_s5k3l1yx_hfr_60fps.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k3l1yx_hfr_90fps.so:system/lib/libchromatix_s5k3l1yx_hfr_90fps.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k3l1yx_hfr_120fps.so:system/lib/libchromatix_s5k3l1yx_hfr_120fps.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k3l1yx_preview.so:system/lib/libchromatix_s5k3l1yx_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k3l1yx_video_hd.so:system/lib/libchromatix_s5k3l1yx_video_hd.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k3l1yx_zsl.so:system/lib/libchromatix_s5k3l1yx_zsl.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k4e1_default_video.so:system/lib/libchromatix_s5k4e1_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k4e1_preview.so:system/lib/libchromatix_s5k4e1_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k4e5ya_default_video.so:system/lib/libchromatix_s5k4e5ya_default_video.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k4e5ya_preview.so:system/lib/libchromatix_s5k4e5ya_preview.so \
     $(LOCAL_PATH)/lib/libchromatix_s5k4e5ya_zsl.so:system/lib/libchromatix_s5k4e5ya_zsl.so \
     $(LOCAL_PATH)/lib/libCommandSvc.so:system/lib/libCommandSvc.so \
     $(LOCAL_PATH)/lib/libconfigdb.so:system/lib/libconfigdb.so \
     $(LOCAL_PATH)/lib/libdiag.so:system/lib/libdiag.so \
     $(LOCAL_PATH)/lib/libDivxDrm.so:system/lib/libDivxDrm.so \
     $(LOCAL_PATH)/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \
     $(LOCAL_PATH)/lib/libdl.so:system/lib/libdl.so \
     $(LOCAL_PATH)/lib/libdrmdiag.so:system/lib/libdrmdiag.so \
     $(LOCAL_PATH)/lib/libdrmfs.so:system/lib/libdrmfs.so \
     $(LOCAL_PATH)/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
     $(LOCAL_PATH)/lib/libdsprofile.so:system/lib/libdsprofile.so \
     $(LOCAL_PATH)/lib/libdss.so:system/lib/libdss.so \
     $(LOCAL_PATH)/lib/libdsucsd.so:system/lib/libdsucsd.so \
     $(LOCAL_PATH)/lib/libdsutils.so:system/lib/libdsutils.so \
     $(LOCAL_PATH)/lib/libgemini.so:system/lib/libgemini.so \
     $(LOCAL_PATH)/lib/libgps.utils.so:system/lib/libgps.utils.so \
     $(LOCAL_PATH)/lib/libgsl.so:system/lib/libgsl.so \
     $(LOCAL_PATH)/lib/libI420colorconvert.so:system/lib/libI420colorconvert.so \
     $(LOCAL_PATH)/lib/libidl.so:system/lib/libidl.so \
     $(LOCAL_PATH)/lib/libimage-jpeg-dec-omx-comp.so:system/lib/libimage-jpeg-dec-omx-comp.so \
     $(LOCAL_PATH)/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
     $(LOCAL_PATH)/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
     $(LOCAL_PATH)/lib/libImmVibeJ.so:system/lib/libImmVibeJ.so \
     $(LOCAL_PATH)/lib/libllvm-a3xx.so:system/lib/libllvm-a3xx.so \
     $(LOCAL_PATH)/lib/libloc_adapter.so:system/lib/libloc_adapter.so \
     $(LOCAL_PATH)/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
     $(LOCAL_PATH)/lib/libloc_eng.so:system/lib/libloc_eng.so \
     $(LOCAL_PATH)/lib/libloc_ext.so:system/lib/libloc_ext.so \
     $(LOCAL_PATH)/lib/liblog.so:system/lib/liblog.so \
     $(LOCAL_PATH)/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
     $(LOCAL_PATH)/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
     $(LOCAL_PATH)/lib/libmmcamera_hdr_lib.so:system/lib/libmmcamera_hdr_lib.so \
     $(LOCAL_PATH)/lib/libmmcamera_image_stab.so:system/lib/libmmcamera_image_stab.so \
     $(LOCAL_PATH)/lib/libmmcamera_imx091.so:system/lib/libmmcamera_imx091.so \
     $(LOCAL_PATH)/lib/libmmcamera_interface2.so:system/lib/libmmcamera_interface2.so \
     $(LOCAL_PATH)/lib/libmmcamera_plugin.so:system/lib/libmmcamera_plugin.so \
     $(LOCAL_PATH)/lib/libmmcamera_statsproc30.so:system/lib/libmmcamera_statsproc30.so \
     $(LOCAL_PATH)/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
     $(LOCAL_PATH)/lib/libmmcamera_wavelet_lib.so:system/lib/libmmcamera_wavelet_lib.so \
     $(LOCAL_PATH)/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
     $(LOCAL_PATH)/lib/libmmipl.so:system/lib/libmmipl.so \
     $(LOCAL_PATH)/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
     $(LOCAL_PATH)/lib/libmmjps.so:system/lib/libmmjps.so \
     $(LOCAL_PATH)/lib/libmmmpo.so:system/lib/libmmmpo.so \
     $(LOCAL_PATH)/lib/libmmmpod.so:system/lib/libmmmpod.so \
     $(LOCAL_PATH)/lib/libmmosal.so:system/lib/libmmosal.so \
     $(LOCAL_PATH)/lib/libmmparser.so:system/lib/libmmparser.so \
     $(LOCAL_PATH)/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
     $(LOCAL_PATH)/lib/libnetmgr.so:system/lib/libnetmgr.so \
     $(LOCAL_PATH)/lib/liboemcamera.so:system/lib/liboemcamera.so \
     $(LOCAL_PATH)/lib/libOlaLGECameraJNI.so:system/lib/libOlaLGECameraJNI.so \
     $(LOCAL_PATH)/lib/libOlaLGECameraJNI_3b.so:system/lib/libOlaLGECameraJNI_3b.so \
     $(LOCAL_PATH)/lib/libOpenCL.so:system/lib/libOpenCL.so \
     $(LOCAL_PATH)/lib/libOpenVG.so:system/lib/libOpenVG.so \
     $(LOCAL_PATH)/lib/libqc-opt.so:system/lib/libqc-opt.so \
     $(LOCAL_PATH)/lib/libqdi.so:system/lib/libqdi.so \
     $(LOCAL_PATH)/lib/libqdp.so:system/lib/libqdp.so \
     $(LOCAL_PATH)/lib/libqmi.so:system/lib/libqmi.so \
     $(LOCAL_PATH)/lib/libqmi_cci.so:system/lib/libqmi_cci.so \
     $(LOCAL_PATH)/lib/libqmi_client_qmux.so:system/lib/libqmi_client_qmux.so \
     $(LOCAL_PATH)/lib/libqmi_common_so.so:system/lib/libqmi_common_so.so \
     $(LOCAL_PATH)/lib/libqmi_csi.so:system/lib/libqmi_csi.so \
     $(LOCAL_PATH)/lib/libqmi_csvt_srvc.so:system/lib/libqmi_csvt_srvc.so \
     $(LOCAL_PATH)/lib/libqmi_encdec.so:system/lib/libqmi_encdec.so \
     $(LOCAL_PATH)/lib/libqmiservices.so:system/lib/libqmiservices.so \
     $(LOCAL_PATH)/lib/libQSEEComAPI.so:system/lib/libQSEEComAPI.so \
     $(LOCAL_PATH)/lib/libreference-ril.so:system/lib/libreference-ril.so \
     $(LOCAL_PATH)/lib/libril.so:system/lib/libril.so \
     $(LOCAL_PATH)/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
     $(LOCAL_PATH)/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
     $(LOCAL_PATH)/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
     $(LOCAL_PATH)/lib/libsc-a3xx.so:system/lib/libsc-a3xx.so \
     $(LOCAL_PATH)/lib/libsensor1.so:system/lib/libsensor1.so \
     $(LOCAL_PATH)/lib/libsensor_reg.so:system/lib/libsensor_reg.so \
     $(LOCAL_PATH)/lib/libtime_genoff.so:system/lib/libtime_genoff.so \
     $(LOCAL_PATH)/lib/libTimeService.so:system/lib/libTimeService.so 






