#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lmi

# Assert
TARGET_OTA_ASSERT_DEVICE := lmi

# Kernel
#TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
#TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
#BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

ifeq ($(TARGET_PREBUILT_KERNEL),)
  TARGET_KERNEL_CONFIG := vendor/lmi_user_defconfig
  TARGET_KERNEL_CLANG_COMPILE := true
  TARGET_KERNEL_SOURCE := kernel/xiaomi/lmi
endif

# Inherit from sm8250-common
-include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/xiaomi/lmi/BoardConfigVendor.mk

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_lmi
TARGET_RECOVERY_DEVICE_MODULES := libinit_lmi
