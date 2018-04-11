# Release name
PRODUCT_RELEASE_NAME := lithium

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger \
	adbd

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lithium
PRODUCT_MODEL := MIX
PRODUCT_NAME := omni_lithium
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
