#
# Copyright (C) 2022 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/motorola/hannah

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Screen
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1440

# Qcom common decryption
PRODUCT_PACKAGES += \
    qcom_decrypt\
    qcom_decrypt_fbe

# Crypto
BOARD_USES_QCOM_FBE_DECRYPTION := true

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Encryption
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.gatekeeper=msm8937 \
    ro.hardware.keystore=msm8937

# TWRP configurations
TARGET_RECOVERY_DEVICE_MODULES += \
    libandroidicu \
    libion \
    libxml2

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libxml2.so
