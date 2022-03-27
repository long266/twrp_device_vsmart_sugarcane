# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/vsmart/sugarcane/Image.gz-dtb
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# qcom standard decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    system/timezone/output_data/iana/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sugarcane
PRODUCT_NAME := omni_sugarcane
PRODUCT_BRAND := vsmart
PRODUCT_MODEL := Star 3
PRODUCT_MANUFACTURER := vsmart

PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=1 \
	ro.adb.secure=0 \
	ro.product.device=sugarcane \
	ro.build.date.utc=1000000000

BUILD_FINGERPRINT := vsmart/casuarina_open/casuarina:10/QKQ1.200311.002/V430A_OPN_U_B15_211112:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=sugarcane \
    PRODUCT_NAME=sugarcane

