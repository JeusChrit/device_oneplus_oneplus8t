#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
-include device/oneplus/sm8250-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := oneplus9r|oneplus8t|kona|OnePlus8T|OnePlus9R|lemonades|kebab|lemonkebab|LE2100|LE2101|KB2000|KB2001|KB2003|KB2005|KB2007

DEVICE_PATH := device/oneplus/oneplus8t

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Partitions
ifeq ($(TARGET_DISABLES_GMS),true)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 614400000
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 92160000
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 92160000
endif
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 7511998464 # BOARD_SUPER_PARTITION_SIZE - 4MB
BOARD_SUPER_PARTITION_SIZE := 7516192768

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
-include vendor/oneplus/oneplus8t/BoardConfigVendor.mk
