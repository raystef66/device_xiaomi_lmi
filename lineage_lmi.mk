#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit some common Ricedroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set Boot Animination Resolution
SUSHI_BOOTANIMATION := 1080

# Gapps
WITH_GMS := true

PRODUCT_NAME := lineage_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F2 Pro

# Rom Flags
TARGET_HAS_UDFPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/lmi/lmi:12/RKQ1.211001.001/V13.0.3.0.SJKMIXM:user/release-keys
