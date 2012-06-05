
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/intercept/full_intercpt.mk)

# Inherit CDMA definitions
$(call inherit-product, vendor/cm/config/cdma.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_intercpt
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := intercpt
PRODUCT_MODEL := SPH-M910
PRODUCT_MANUFACTURER := samsung

# Release name and versioning
PRODUCT_RELEASE_NAME := Transform
PRODUCT_VERSION_DEVICE_SPECIFIC :=Samsung_intercept_CM9_alpha1

-include vendor/cm/products/common_versions.mk

PRODUCT_COPY_FILES +=  \
    vendor/cm/prebuilt/common/bootanimation/vertical-240x320.zip:system/media/bootanimation.zip
