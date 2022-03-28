#
# Copyright (C) 2017-2020 The LineageOS Project
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

LOCAL_PATH := device/vsmart/sugarcane

ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic

# Platform
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno308

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8937
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 vmalloc=300M firmware_class.path=/vendor/firmware_mnt/image androidboot.usbconfigfs=true loop.max_part=7 buildvariant=userdebug androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_TAGS_OFFSET := 0x00000100
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage-dtb
BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/dtbo.img
BOARD_KERNEL_IMAGE_NAME := zImage-dtb

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TARGET_RECOVERY_FSTAB := device/vsmart/sugarcane/twrp.fstab

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# TWRP-Specific
TW_DEVICE_VERSION := Long266
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_RECOVERY_PIXEL_FORMAT := RGBA_8888
TW_Y_OFFSET := 50
TW_H_OFFSET := -50
TW_THEME := portrait_hdpi
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_DEFAULT_BRIGHTNESS := 255
TW_DEFAULT_LANGUAGE := en
TW_USE_TOOLBOX := true
# TW_FORCE_USE_BUSYBOX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Encryption
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
BOARD_USES_QCOM_FBE_DECRYPTION := true

# NOTE:# Don't use '-' or blank spaces in flag values!
# These will create build errors or other bugs in recovery (Excluding SHRP_PATH,SHRP_REC).

# Device codename
SHRP_DEVICE_CODE := sugarcane

# Path of your SHRP device tree
SHRP_PATH := device/vsmart/$(SHRP_DEVICE_CODE)

# Maintainer name
SHRP_MAINTAINER := Long266

# Recovery Type (for "About" section only)
SHRP_REC_TYPE := SAR

# Device Type (for "About" section only)
SHRP_DEVICE_TYPE := A_Only

# Your device's recovery path, dont use blindly
SHRP_REC := /dev/block/bootdevice/by-name/recovery

# Emergency Download mode (0 = no EDL mode, 1 = EDL mode available)
SHRP_EDL_MODE := 1

# internal storage path
SHRP_INTERNAL := /sdcard

# If your device has an external sdcard
SHRP_EXTERNAL := /external_sd

# USB OTG path
SHRP_OTG := /usb_otg

# Flashlight: (0 = disable, 1 = enable)
SHRP_FLASH := 0

# SHRP padding flag (for rounded corner devices only)
SHRP_STATUSBAR_RIGHT_PADDING := 24
SHRP_STATUSBAR_LEFT_PADDING := 24

# SHRP Express, enables on-the-fly theme patching (also persistent) + persistent lock
SHRP_EXPRESS := true

# SHRP Dark mode, use this flag to have dark theme set by default
SHRP_DARK := true
