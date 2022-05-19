# Board specific SELinux policy variable definitions
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/samsung/ks01ltexx-sepolicy/common \
    device/samsung/ks01ltexx-sepolicy/legacy-common \
    device/samsung/ks01ltexx-sepolicy/ssg \
    device/samsung/ks01ltexx-sepolicy/msm8974

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/samsung/ks01ltexx-sepolicy/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/samsung/ks01ltexx-sepolicy/private

# Add sepolicy version to support OS upgrade and backward compatibility
BOARD_SEPOLICY_VERS := $(PLATFORM_SDK_VERSION).0

-include device/lineage/sepolicy/qcom/sepolicy.mk
