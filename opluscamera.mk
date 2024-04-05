# Blob dependencies
PRODUCT_PACKAGES += \
    android.hardware.graphics.common-V3-ndk.vendor

# Framework
PRODUCT_PACKAGES += \
    oplus-fwk

PRODUCT_BOOT_JARS += \
    oplus-fwk \
    oplus-support-wrapper

# Gallery
PRODUCT_PACKAGES += \
    OnePlusGallery

# Init
PRODUCT_PACKAGES += \
    init.oplus.camera.rc

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/oplus_google_lens_config.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/oplus_google_lens_config.xml \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-oplus.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-oplus.xml \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-product-oplus.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-product-oplus.xml \
    $(LOCAL_PATH)/configs/sysconfig/hiddenapi-package-oplus-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/hiddenapi-package-oplus-whitelist.xml

# Properties
PRODUCT_PRODUCT_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.oplus.camera \
    ro.com.google.lens.oem_camera_package=com.oplus.camera \
    ro.com.google.lens.oem_image_package=com.oneplus.gallery

# Photo
TARGET_USES_OPLUS_CAMERA := true

# Video
TARGET_CAMERA_OVERRIDE_FORMAT_FROM_RESERVED := true

# SEpolicy
include vendor/oplus/camera/sepolicy/SEPolicy.mk

# Inherit from camera-vendor.mk
$(call inherit-product, vendor/oplus/camera/camera-vendor.mk)
