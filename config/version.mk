PRODUCT_VERSION_MAJOR = 6
PRODUCT_VERSION_MINOR = 0

RICE_FLAVOR := Tiramisu
RICE_VERSION := IceCream
RICE_CODE := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)
RICE_PACKAGE_TYPE ?= AOSP

ifeq ($(RICE_OFFICIAL),true)
    RICE_BUILDTYPE := OFFICIAL
else
    RICE_BUILDTYPE := COMMUNITY
endif

LINEAGE_BUILD_DATE := $(shell date -u +%y%m%d%H)

LINEAGE_VERSION_SUFFIX := $(LINEAGE_BUILD_DATE)-$(RICE_BUILDTYPE)-$(RICE_PACKAGE_TYPE)-$(LINEAGE_BUILD)

# Internal version
LINEAGE_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_VERSION_SUFFIX)

# Display version
LINEAGE_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR)-$(LINEAGE_VERSION_SUFFIX)
