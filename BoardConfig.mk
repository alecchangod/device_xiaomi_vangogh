#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7250-common
include device/xiaomi/sm7250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/vangogh

BUILD_BROKEN_DUP_RULES := true

# A/B
TARGET_IS_VAB := false

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lito

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG := vendor/vangogh_user_defconfig
TARGET_KERNEL_OPTIONAL_LD := true

# SoC
PROCESSOR_MODEL := SM7250

# Inherit from the proprietary version
include vendor/xiaomi/vangogh/BoardConfigVendor.mk

TARGET_KERNEL_LLVM_BINUTILS := false
TARGET_KERNEL_CLANG_VERSION := vangogh

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
