#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sunfish device
$(call inherit-product, device/google/sunfish/device.mk)

PRODUCT_DEVICE := sunfish
PRODUCT_NAME := omni_sunfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sunfish-user 13 TQ2A.230405.003 9719927 release-keys"

BUILD_FINGERPRINT := google/sunfish/sunfish:13/TQ2A.230405.003/9719927:user/release-keys
