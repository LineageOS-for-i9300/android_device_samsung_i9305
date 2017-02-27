#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

LOCAL_PATH := device/samsung/i9305

TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
BOARD_GLOBAL_CFLAGS += -DCAMERA_WITH_CITYID_PARAM

TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Text Relocations
TARGET_NEEDS_TEXT_RELOCATIONS := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := lineageos_i9305_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/i9305/rootdir/fstab.smdk4x12
TARGET_RECOVERY_DENSITY := mdpi
RECOVERY_FSTAB_VERSION := 2

# F2FS
PRODUCT_PACKAGES += \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs

TARGET_USERIMAGES_USE_F2FS := true

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := mdm9x35
BOARD_RIL_CLASS := ../../../device/samsung/i9305/ril

# assert
TARGET_OTA_ASSERT_DEVICE := m3,m3xx,i9305,GT-I9305

# Selinux
BOARD_SEPOLICY_DIRS += device/samsung/i9305/selinux
