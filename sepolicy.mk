# Board specific SELinux policy variable definitions
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/qcom/sepolicy-legacy/common \
    device/qcom/sepolicy-legacy/legacy-common \
    device/qcom/sepolicy-legacy/ssg \
    device/qcom/sepolicy-legacy/msm8974

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/qcom/sepolicy-legacy/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/qcom/sepolicy-legacy/private

# Add sepolicy version to support OS upgrade and backward compatibility
BOARD_SEPOLICY_VERS := $(PLATFORM_SDK_VERSION).0

-include device/lineage/sepolicy/qcom/sepolicy.mk
