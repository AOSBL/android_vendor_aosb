# Inherit common AOSB stuff
$(call inherit-product, vendor/aosb/config/common.mk)

# Include AOSB audio files
include vendor/aosb/config/aosb_audio.mk

# Include AOSB LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aosb/overlay/dictionaries

# Optional AOSB packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable \
    SoundRecorder \
    PhotoPhase

# Extra tools in AOSB
PRODUCT_PACKAGES += \
    vim \
    zip \
    unrar
