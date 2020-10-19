#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_lmi
PRODUCT_DEVICE := lmi
PRODUCT_BRAND := POCO
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := F2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Extra FOD stuff
TARGET_HAS_FOD := true
