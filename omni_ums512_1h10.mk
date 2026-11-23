#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ums512_1h10 device
$(call inherit-product, device/eebbk/ums512_1h10/device.mk)

PRODUCT_DEVICE := ums512_1h10
PRODUCT_NAME := omni_ums512_1h10
PRODUCT_BRAND := incar
PRODUCT_MODEL := R20
PRODUCT_MANUFACTURER := eebbk

PRODUCT_GMS_CLIENTID_BASE := android-eebbk

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ums512_1h10-user 10 QP1A.190711.020 release-keys"

BUILD_FINGERPRINT := incar/ums512_1h10/ums512_1h10:10/QP1A.190711.020/20230411:user/release-keys
