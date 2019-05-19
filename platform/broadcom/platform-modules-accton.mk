# Accton Platform modules

ACCTON_AS7712_32X_PLATFORM_MODULE_VERSION = 1.1
ACCTON_AS5712_54X_PLATFORM_MODULE_VERSION = 1.1
ACCTON_AS7816_64X_PLATFORM_MODULE_VERSION = 1.1
ACCTON_AS7716_32X_PLATFORM_MODULE_VERSION = 1.1
ACCTON_AS7312_54X_PLATFORM_MODULE_VERSION = 1.1
ACCTON_AS7326_56X_PLATFORM_MODULE_VERSION = 1.1
ACCTON_AS7716_32XB_PLATFORM_MODULE_VERSION = 1.1
ACCTON_AS6712_32X_PLATFORM_MODULE_VERSION = 1.1
ACCTON_AS7726_32X_PLATFORM_MODULE_VERSION = 1.1
ACCTON_AS4630_54PE_PLATFORM_MODULE_VERSION = 1.1
ACCTON_MINIPACK_PLATFORM_MODULE_VERSION = 1.1

export ACCTON_AS7712_32X_PLATFORM_MODULE_VERSION
export ACCTON_AS5712_54X_PLATFORM_MODULE_VERSION
export ACCTON_AS7816_64X_PLATFORM_MODULE_VERSION
export ACCTON_AS7716_32X_PLATFORM_MODULE_VERSION
export ACCTON_AS7312_54X_PLATFORM_MODULE_VERSION
export ACCTON_AS7326_56X_PLATFORM_MODULE_VERSION
export ACCTON_AS7716_32XB_PLATFORM_MODULE_VERSION
export ACCTON_AS6712_32X_PLATFORM_MODULE_VERSION
export ACCTON_AS7726_32X_PLATFORM_MODULE_VERSION
export ACCTON_AS4630_54PE_PLATFORM_MODULE_VERSION
export ACCTON_MINIPACK_PLATFORM_MODULE_VERSION

ACCTON_AS7712_32X_PLATFORM_MODULE = sonic-platform-accton-as7712-32x_$(ACCTON_AS7712_32X_PLATFORM_MODULE_VERSION)_amd64.deb
$(ACCTON_AS7712_32X_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-accton
$(ACCTON_AS7712_32X_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
$(ACCTON_AS7712_32X_PLATFORM_MODULE)_PLATFORM = x86_64-accton_as7712_32x-r0
SONIC_DPKG_DEBS += $(ACCTON_AS7712_32X_PLATFORM_MODULE)

ACCTON_AS5712_54X_PLATFORM_MODULE = sonic-platform-accton-as5712-54x_$(ACCTON_AS5712_54X_PLATFORM_MODULE_VERSION)_amd64.deb
$(ACCTON_AS5712_54X_PLATFORM_MODULE)_PLATFORM = x86_64-accton_as5712_54x-r0
$(eval $(call add_extra_package,$(ACCTON_AS7712_32X_PLATFORM_MODULE),$(ACCTON_AS5712_54X_PLATFORM_MODULE)))

ACCTON_AS7816_64X_PLATFORM_MODULE = sonic-platform-accton-as7816-64x_$(ACCTON_AS7816_64X_PLATFORM_MODULE_VERSION)_amd64.deb
$(ACCTON_AS7816_64X_PLATFORM_MODULE)_PLATFORM = x86_64-accton_as7816_64x-r0
$(eval $(call add_extra_package,$(ACCTON_AS7712_32X_PLATFORM_MODULE),$(ACCTON_AS7816_64X_PLATFORM_MODULE)))

ACCTON_AS7716_32X_PLATFORM_MODULE = sonic-platform-accton-as7716-32x_$(ACCTON_AS7716_32X_PLATFORM_MODULE_VERSION)_amd64.deb
$(ACCTON_AS7716_32X_PLATFORM_MODULE)_PLATFORM = x86_64-accton_as7716_32x-r0
$(eval $(call add_extra_package,$(ACCTON_AS7712_32X_PLATFORM_MODULE),$(ACCTON_AS7716_32X_PLATFORM_MODULE)))

ACCTON_AS7312_54X_PLATFORM_MODULE = sonic-platform-accton-as7312-54x_$(ACCTON_AS7312_54X_PLATFORM_MODULE_VERSION)_amd64.deb
$(ACCTON_AS7312_54X_PLATFORM_MODULE)_PLATFORM = x86_64-accton_as7312_54x-r0
$(eval $(call add_extra_package,$(ACCTON_AS7712_32X_PLATFORM_MODULE),$(ACCTON_AS7312_54X_PLATFORM_MODULE)))

ACCTON_AS7326_56X_PLATFORM_MODULE = sonic-platform-accton-as7326-56x_$(ACCTON_AS7326_56X_PLATFORM_MODULE_VERSION)_amd64.deb
$(ACCTON_AS7326_56X_PLATFORM_MODULE)_PLATFORM = x86_64-accton_as7326_56x-r0
$(eval $(call add_extra_package,$(ACCTON_AS7712_32X_PLATFORM_MODULE),$(ACCTON_AS7326_56X_PLATFORM_MODULE)))

ACCTON_AS7716_32XB_PLATFORM_MODULE = sonic-platform-accton-as7716-32xb_$(ACCTON_AS7716_32XB_PLATFORM_MODULE_VERSION)_amd64.deb
$(ACCTON_AS7716_32XB_PLATFORM_MODULE)_PLATFORM = x86_64-accton_as7716_32xb-r0
$(eval $(call add_extra_package,$(ACCTON_AS7712_32X_PLATFORM_MODULE),$(ACCTON_AS7716_32XB_PLATFORM_MODULE)))

ACCTON_AS6712_32X_PLATFORM_MODULE = sonic-platform-accton-as6712-32x_$(ACCTON_AS6712_32X_PLATFORM_MODULE_VERSION)_amd64.deb
$(ACCTON_AS6712_32X_PLATFORM_MODULE)_PLATFORM = x86_64-accton_as6712_32x-r0
$(eval $(call add_extra_package,$(ACCTON_AS7712_32X_PLATFORM_MODULE),$(ACCTON_AS6712_32X_PLATFORM_MODULE)))

ACCTON_AS7726_32X_PLATFORM_MODULE = sonic-platform-accton-as7726-32x_$(ACCTON_AS7726_32X_PLATFORM_MODULE_VERSION)_amd64.deb
$(ACCTON_AS7726_32X_PLATFORM_MODULE)_PLATFORM = x86_64-accton_as7726_32x-r0
$(eval $(call add_extra_package,$(ACCTON_AS7712_32X_PLATFORM_MODULE),$(ACCTON_AS7726_32X_PLATFORM_MODULE)))

ACCTON_AS4630_54PE_PLATFORM_MODULE = sonic-platform-accton-as4630-54pe_$(ACCTON_AS4630_54PE_PLATFORM_MODULE_VERSION)_amd64.deb
$(ACCTON_AS4630_54PE_PLATFORM_MODULE)_PLATFORM = x86_64-accton_as4630_54pe-r0
$(eval $(call add_extra_package,$(ACCTON_AS7712_32X_PLATFORM_MODULE),$(ACCTON_AS4630_54PE_PLATFORM_MODULE)))


ACCTON_MINIPACK_PLATFORM_MODULE = sonic-platform-accton-minipack_$(ACCTON_MINIPACK_PLATFORM_MODULE_VERSION)_amd64.deb
$(ACCTON_MINIPACK_PLATFORM_MODULE)_PLATFORM = x86_64-accton_minipack-r0
$(eval $(call add_extra_package,$(ACCTON_AS7712_32X_PLATFORM_MODULE),$(ACCTON_MINIPACK_PLATFORM_MODULE)))

SONIC_STRETCH_DEBS += $(ACCTON_AS7712_32X_PLATFORM_MODULE)
