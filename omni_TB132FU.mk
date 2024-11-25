#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TB132FU device
$(call inherit-product, device/lenovo/TB132FU/device.mk)

PRODUCT_DEVICE := TB132FU
PRODUCT_NAME := omni_TB132FU
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB132FU
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_p11_pro_2gen-user 12 TP1A.220624.014 TB132FU_S240242_240427_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/TB132FU/TB132FU:12/TP1A.220624.014/TB132FU_S240242_240427_ROW:user/release-keys
