#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/rhannah/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Targets
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_QUICK_TAP := true
ARROW_GAPPS := true

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_rhannah
PRODUCT_DEVICE := rhannah
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto e5 plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rhannah_retail-user 8.0.0 OPPS27.91-179-8-5 7 release-keys" \
    PRODUCT_NAME="rhannah_retail"

BUILD_FINGERPRINT := motorola/rhannah_retail/rhannah:8.0.0/OPPS27.91-179-8-5/7:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola
