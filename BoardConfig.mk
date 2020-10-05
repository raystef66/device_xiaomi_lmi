#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lmi

# Assert
TARGET_OTA_ASSERT_DEVICE := lmi

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# Inherit from sm8250-common
-include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/xiaomi/lmi/BoardConfigVendor.mk
