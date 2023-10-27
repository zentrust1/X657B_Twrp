#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from spinel device
$(call inherit-product, device/infinix/Nova/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Nova
PRODUCT_NAME := twrp_Nova
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Nova
PRODUCT_MANUFACTURER := infinix
PRODUCT_RELEASE_NAME := Infinix Infinix Nova

PRODUCT_GMS_CLIENTID_BASE := android-transsion-infinix-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_x657b_h6117-user 10 QP1A.190711.020 136739 release-keys"

BUILD_FINGERPRINT := Infinix/X657B-OP/Infinix-X657B:10/QP1A.190711.020/DFJ-OP-210728V386:user/release-keys
