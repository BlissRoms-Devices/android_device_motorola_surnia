#
# Copyright (C) 2015 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include device/motorola/msm8916-common/BoardConfigCommon.mk

-include vendor/motorola/surnia/BoardConfigVendor.mk

DEVICE_PATH := device/motorola/surnia

TARGET_KERNEL_CONFIG := surnia_defconfig

# Asserts
TARGET_OTA_ASSERT_DEVICE := XT1514,XT1521,XT1524,XT1526,XT1527,XT1523,surnia_uds,surnia_umts,surnia,surnia_udstv

# Init
TARGET_LIBINIT_DEFINES_FILE := $(DEVICE_PATH)/init/init_surnia.cpp

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432 #65536 * 512 mmcblk0p33
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33538048 #65504 * 512 mmcblk0p34
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1895825408 #3702784 * 512 mmcblk0p42
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608 #16384 * 512 mmcblk0p31
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5368578048 #(10518495 * 512) - 16891392 mmcblk0p44
BOARD_CACHEIMAGE_PARTITION_SIZE     := 268435456 #524288 * 512 mmcblk0p43
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4

# Power
TARGET_POWERHAL_VARIANT := qcom

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Block_Build
Bliss_Build_Block:=1

# Blissful building options
BLISSIFY := true
BLISS_O3 := true
BLISS_GRAPHITE := true
#BLISS_STRICT := true
BLISS_KRAIT := true
BLISS_PIPE := true
FLOOP_NEST_OPTIMIZE := true
ENABLE_GCCONLY := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
FAST_MATH := true
ENABLE_MODULAR_O3 := true
ENABLE_LTO := true
LINK_TIME_OPTIMIZATIONS := true
TARGET_USE_ION_COMPAT := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_ENABLE_UKM := true
BLISS_DEVELOPER := Vatsal

#WITH_LZMA_OTA := true
#SaberMod

# Kernel Toolchain
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-linux-androideabi-4.9/bin
KERNEL_TOOLCHAIN_PREFIX := arm-linux-androideabi-
