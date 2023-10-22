LOCAL_PATH := device/infinix/Nova

PRODUCT_TARGET_VNDK_VERSION := 30
PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-impl-recovery

PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM)

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# Dynamic Partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    mtk_plpath_utils.recovery

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
fastbootd


PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(LOCAL_PATH)/security/infinix
