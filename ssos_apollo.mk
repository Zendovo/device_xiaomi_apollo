#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common ShapeShift stuff.
$(call inherit-product, vendor/ssos/config/common_full_phone.mk)
SSOS_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1440
PRODUCT_PRODUCT_PROPERTIES += \
    ro.ssos.cpu=SD865

PRODUCT_NAME := ssos_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
