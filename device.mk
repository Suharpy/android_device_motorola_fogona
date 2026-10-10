PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# API
#PRODUCT_TARGET_VNDK_VERSION := 30
#PRODUCT_SHIPPING_API_LEVEL := 32

## Dynamic partitions
#PRODUCT_USE_DYNAMIC_PARTITIONS := true

## Screen
##TARGET_SCREEN_HEIGHT := 2400
#TARGET_SCREEN_WIDTH := 1080

## Fastbootd
##PRODUCT_PACKAGES += \
    ##android.hardware.fastboot@1.0-impl-mock \
    ##android.hardware.fastboot@1.1-impl-mock.recovery \
    #fastbootd

# Boot control hal for A/B
#PRODUCT_PACKAGES += android.hardware.boot@1.1-impl-qti.recovery

# Blacklist
#PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.bootimage.build.date.utc ro.build.date.utc

# Copy modules for depmod
PRODUCT_COPY_FILE += \
	$(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
	$(call find-copy-subdir-files,*.ko,$(DEVICE_PATH)/recovery/root/vendor/lib/modules/1.1,$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1)
	
#call qualcomm commmon dependencies
$(call inherit-product, device/qcom/common/common.mk)