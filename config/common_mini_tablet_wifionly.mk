# Inherit common AOSB stuff
$(call inherit-product, vendor/aosb/config/common.mk)

# Include AOSB audio files
include vendor/aosb/config/aosb_audio.mk

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/aosb/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
