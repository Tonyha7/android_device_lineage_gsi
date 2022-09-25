DEVICE_PATH := device/lineage/gsi

# Bluetooth Audio (System-side HAL, sysbta)
PRODUCT_PACKAGES += \
    audio.sysbta.default \
    android.hardware.bluetooth.audio-service-system

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/bluetooth/audio/config/sysbta_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysbta_audio_policy_configuration.xml \
    $(DEVICE_PATH)/bluetooth/audio/config/sysbta_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysbta_audio_policy_configuration_7_0.xml

# Fixes inherited from PHH
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/init/init-gsi.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/init-gsi.rc \
    $(DEVICE_PATH)/init/treble-post-fs.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/treble-post-fs.sh \
    $(DEVICE_PATH)/init/treble-prop-handler.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/treble-prop-handler.sh

PRODUCT_PACKAGES += \
    resetprop_sys

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

PRODUCT_INSTALL_DEBUG_POLICY_TO_SYSTEM_EXT :=

SELINUX_IGNORE_NEVERALLOWS := true
