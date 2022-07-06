# Board specific SELinux policy variable definitions
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/samsung/ks01ltexx-sepolicy/common \
    device/samsung/ks01ltexx-sepolicy/ssg \
    device/samsung/ks01ltexx-sepolicy/msm8974

ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/samsung/ks01ltexx-sepolicy/test

SELINUX_IGNORE_NEVERALLOWS := true
endif

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    device/samsung/ks01ltexx-sepolicy/public

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/samsung/ks01ltexx-sepolicy/private

# Board specific SELinux policy variable definitions for legacy devices
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/samsung/ks01ltexx-sepolicy/legacy-common

# Add sepolicy version to support OS upgrade and backward compatibility
BOARD_SEPOLICY_VERS := $(PLATFORM_SDK_VERSION).0

-include device/lineage/sepolicy/qcom/sepolicy.mk
