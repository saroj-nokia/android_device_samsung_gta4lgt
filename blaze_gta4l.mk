#
# Copyright (C) 2020-2023 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gta4l device
$(call inherit-product, device/samsung/gta4l/device.mk)

# Inherit common Blaze configurations
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)
BLAZE_MAINTAINER := YFMARCO
BLAZE_CHIPSET := SM6115
BLAZE_BATTERY := 7040mAh
WITH_GMS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_QUICK_TAP := true

# Boot Animation
TARGET_SCREEN_HEIGHT := 2000
TARGET_SCREEN_WIDTH := 1200

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gta4l
PRODUCT_NAME := blaze_gta4l
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T505
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := gta4lxx

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
