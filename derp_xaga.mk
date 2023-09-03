#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from xaga device
$(call inherit-product, device/xiaomi/xaga/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2460
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# ROM Flags
TARGET_SCREEN_DENSITY := 440
TARGET_NOT_USES_BLUR := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_EPPE := true

# Inherit some common stuff
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := derp_xaga
PRODUCT_DEVICE := xaga
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note11T Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phone_cn-user 13 TP1A.220624.014 V14.0.5.0.TLOCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/missi_phone_cn/missi:13/TP1A.220624.014/V14.0.5.0.TLOCNXM:user/release-keys
