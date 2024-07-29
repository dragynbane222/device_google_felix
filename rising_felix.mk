#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

USE_SWIFTSHADER := true
BOARD_USES_SWIFTSHADER := true

# Inherit device configuration
$(call inherit-product, device/google/felix/aosp_felix.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)
$(call inherit-product, device/google/felix/device-lineage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := felix
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel Fold
PRODUCT_NAME := rising_felix

# Boot animation
TARGET_SCREEN_HEIGHT := 2092
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=felix \
    PRIVATE_BUILD_DESC="felix-user 14 AP2A.240705.004 11875680 release-keys"

BUILD_FINGERPRINT := google/felix/felix:14/AP2A.240705.004/11875680:user/release-keys

$(call inherit-product, vendor/google/felix/felix-vendor.mk)

#Rising additions
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Google Tensor 2" \
    RISING_MAINTAINER="c_smith"

TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
# Ship Pixel features (adaptivecharging, dreamliner etc)
TARGET_ENABLE_PIXEL_FEATURES := true

# Use Google telephony framework
TARGET_USE_GOOGLE_TELEPHONY := true
