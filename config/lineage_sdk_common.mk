# Permissions for lineage sdk services
PRODUCT_COPY_FILES += \
    vendor/lineage/config/permissions/org.lineageos.globalactions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.globalactions.xml \
    vendor/lineage/config/permissions/org.lineageos.hardware.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.hardware.xml \
    vendor/lineage/config/permissions/org.lineageos.health.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.health.xml \
    vendor/lineage/config/permissions/org.lineageos.livedisplay.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.livedisplay.xml \
    vendor/lineage/config/permissions/org.lineageos.profiles.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.profiles.xml \
    vendor/lineage/config/permissions/org.lineageos.settings.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.settings.xml \
    vendor/lineage/config/permissions/org.lineageos.trust.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.lineageos.trust.xml

# Lineage Platform Library

# AOSP has no support of loading framework resources from /system_ext
# so the SDK has to stay in /system for now

ifndef LINEAGE_PLATFORM_SDK_VERSION
  # This is the canonical definition of the SDK version, which defines
  # the set of APIs and functionality available in the platform.  It
  # is a single integer that increases monotonically as updates to
  # the SDK are released.  It should only be incremented when the APIs for
  # the new release are frozen (so that developers don't write apps against
  # intermediate builds).
  LINEAGE_PLATFORM_SDK_VERSION := 9
endif

ifndef LINEAGE_PLATFORM_REV
  # For internal SDK revisions that are hotfixed/patched
  # Reset after each LINEAGE_PLATFORM_SDK_VERSION release
  # If you are doing a release and this is NOT 0, you are almost certainly doing it wrong
  LINEAGE_PLATFORM_REV := 0
endif
