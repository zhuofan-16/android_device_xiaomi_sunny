#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/sunny/device.mk)
$(call inherit-product-if-exists, vendor/gapps/config.mk)
# Inherit some common Fluid stuff
TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_MINIMAL_GAPPS := false
TARGET_INCLUDE_AOSP_REPLACEMENTS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := fluid_sunny
TARGET_GAPPS_ARCH := arm64
PRODUCT_DEVICE := sunny
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
TARGET_INCLUDE_GAPPS := true
PRODUCT_MANUFACTURER := Xiaomi
WITH_GAPPS := true
TARGET_SUPPORT_FACE_UNLOCK := true
TARGET_INCLUDE_STOCK_ARCORE := false
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
#Fluid
PRODUCT_PRODUCT_PROPERTIES += \
  ro.fluid.maintainer=寒词ZhuoFan \
  ro.fluid.cpu=Snapdragon 678 Mobile Platform
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sunny \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ1A.210105.003 7005429 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ1A.210105.003/7005429:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ1A.210105.003/7005429:user/release-keys
