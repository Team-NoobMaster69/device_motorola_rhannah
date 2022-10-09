#
# Copyright (C) 2022 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from hannah device
$(call inherit-product, device/motorola/hannah/device.mk)

PRODUCT_DEVICE := hannah
PRODUCT_NAME := twrp_hannah
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto E5 Plus
PRODUCT_MANUFACTURER := Motorola
