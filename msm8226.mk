#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/motorola/msm8226-common/msm8226-common-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Motorola-specific permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/com.motorola.android.dm.service.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.android.dm.service.xml \
    $(LOCAL_PATH)/permissions/com.motorola.android.tcmd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.android.tcmd.xml \
    $(LOCAL_PATH)/permissions/com.motorola.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.camera.xml \
    $(LOCAL_PATH)/permissions/com.motorola.context.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.context.xml \
    $(LOCAL_PATH)/permissions/com.motorola.gallery.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.gallery.xml \
    $(LOCAL_PATH)/permissions/com.motorola.motosignature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.motosignature.xml \
    $(LOCAL_PATH)/permissions/com.motorola.smartaction.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.smartaction.xml \
    $(LOCAL_PATH)/permissions/com.motorola.software.bodyguard.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.software.bodyguard.xml \
    $(LOCAL_PATH)/permissions/com.motorola.software.guideme.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.software.guideme.xml \
    $(LOCAL_PATH)/permissions/com.motorola.software.storageoptimizer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.software.storageoptimizer.xml \
    $(LOCAL_PATH)/permissions/com.motorola.software.x_line.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.motorola.software.x_line.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
TARGET_BOOTANIMATION_HALF_RES := true

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm8226 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_effects.xml:system/vendor/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.device@1.0-impl \
    camera.msm8226 \
    libxml2 \
    libshim_skia \
    libshims_camera \
    libshim_qcopt \
    libshims_sensorlistener \
    Camera2

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/libskia.so:system/lib/libskia.so

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hdrhax:system/vendor/etc/hdrhax

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/external_camera_config.xml:system/vendor/etc/external_camera_config.xml

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Dalvik properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=256m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# DeviceSettings
#PRODUCT_PACKAGES += \
#    DeviceSettings

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    copybit.msm8226 \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    memtrack.msm8226

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# GNSS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# GPS
PRODUCT_PACKAGES += \
    gps.msm8226

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.manager@1.0 \
    android.hidl.base@1.0

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Keystore
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    keystore.msm8226

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    lights.msm8226

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@1.0-service-legacymm

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/vendor/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/vendor/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/vendor/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:system/vendor/etc/media_profiles_V1_0.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:system/etc/media_profiles_V1_0.xml
	
# OMX
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    android.hardware.media.omx@1.0-impl

# Perf
PRODUCT_PACKAGES += \
    libshims_atomic

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.1-service-qti

# Radio
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.bt.sh \
    init.qcom.ril.sh \
    dump_pds.sh

PRODUCT_PACKAGES += \
    init.mmi.boot.sh \
    init.mmi.touch.sh \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.recovery.qcom.rc \
    ueventd.qcom.rc

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Ril
PRODUCT_PACKAGES += \
    libqsap_shim

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    sensors.msm8226

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-thea.conf:system/etc/thermal-engine-thea.conf \
    $(LOCAL_PATH)/thermal/thermal-engine-titan.conf:system/etc/thermal-engine-titan.conf

PRODUCT_PACKAGES += \
    libshims_thermal

# /system FS resize
PRODUCT_PACKAGES += \
    e2fsck_static \
    resize2fs_static

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic \
    com.android.future.usb.accessory

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# WCNSS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/vendor/etc/wifi/WCNSS_qcom_cfg.ini

PRODUCT_PACKAGES += \
    wcnss_service \
    WCNSS_qcom_wlan_factory_nv.bin

# WiFi HAL
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    wificond
