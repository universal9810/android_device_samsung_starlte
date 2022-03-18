#
# Copyright (C) 2021 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from starlte device
$(call inherit-product, device/samsung/starlte/device.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

## Inherit some common Krypton stuff
$(call inherit-product, vendor/krypton/config/common_full_phone.mk)
TARGET_SUPPORTS_QUICK_TAP := true
GAPPS_BUILD := true

## Device identifier, this must come after all inclusions
PRODUCT_NAME := krypton_starlte
PRODUCT_DEVICE := starlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G960F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := "google/redfin/redfin:12/SP2A.220305.012/8177914:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=starltexx \
    PRIVATE_BUILD_DESC="redfin-user 12 SP2A.220305.012 8177914 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=G960FXXSHFUJ2 \
    ro.build.fingerprint=google/redfin/redfin:12/SP2A.220305.012/8177914:user/release-keys
