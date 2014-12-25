# Intercept compile definitions.

# Set this up here so that BoardVendorConfig.mk can override it
BOARD_USES_GENERIC_AUDIO := false
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USES_LIBSECRIL_STUB := false

# Camera
USE_CAMERA_STUB := false
# Audio
BOARD_USE_SAMSUNG_SEPARATEDSTREAM := true


# Platform
TARGET_BOARD_PLATFORM := s3c6410
TARGET_BOOTLOADER_BOARD_NAME := intercept
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_ARCH_VARIANT_CPU := arm1176jzf-s
#TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=hard
#TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=hard
#-mtune=arm1176jzf-s -mfpu=vfp -mfloat-abi=softfp
#TARGET_CPU_SMP := true
#TARGET_CPU_VARIANT := 

TARGET_NO_BOOTLOADER := true

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/intercept
TARGET_KERNEL_CONFIG := intercept_ics_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-linux-gnueabihf-
# U-Boot uImage
#BOARD_USES_UBOOT := true

# Kernel Modules
#..._MODULES:
#       make -C hardware/ti/wlan/wl1283/platforms/os/linux/ KERNEL_DIR=$(KERNEL_OUT) ARCH="arm" CROSS_COMPILE="arm-eabi-" TNETW=1273 RANDOM_MAC=n REPORT_LOG=n
#       mv hardware/ti/wlan/wl1283/platforms/os/linux/tiwlan_drv.ko $(KERNEL_MODULES_OUT)
#       make -C hardware/ti/wlan/wl1283_softAP/platforms/os/linux/ KERNEL_DIR=$(KERNEL_OUT) ARCH="arm" CROSS_COMPILE="arm-eabi-" TNETW=1273 REPORT_LOG=n
#       mv hardware/ti/wlan/wl1283_softAP/platforms/os/linux/tiap_drv.ko $(KERNEL_MODULES_OUT)
#TARGET_KERNEL_MODULES := TIWLAN_MODULES

#BOARD_KERNEL_BASE := 0x80200000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=mako lpj=67677 user_debug=31
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01600000

#BOARD_USES_ALSA_AUDIO:= true
#BOARD_USES_LEGACY_ALSA_AUDIO:= false
#BOARD_USES_FLUENCE_INCALL := true
#BOARD_USES_SEPERATED_AUDIO_INPUT := true



#BOARD_EGL_CFG := device/samsung/intercept/egl.cfg

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
#USE_OPENGL_RENDERER := true
#TARGET_USES_ION := true
#TARGET_USES_OVERLAY := true
#TARGET_USES_SF_BYPASS := true
#TARGET_USES_C2D_COMPOSITON := true


# Mobile data
BOARD_MOBILEDATA_INTERFACE_NAME := "ppp0"


# Releasetools
#TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/intercept/releasetools/intercept_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/intercept/releasetools/intercept_img_from_target_files



# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
#BOARD_HAVE_BLUETOOTH_QCOM := true
#BLUETOOTH_HCI_USE_MCT := true
TARGET_PROVIDES_LIBRIL := true
#TARGET_NO_RADIOIMAGE := true
#TARGET_BOARD_PLATFORM := msm8960
#TARGET_BOOTLOADER_BOARD_NAME := Intercept
#TARGET_BOOTLOADER_NAME=intercept
#TARGET_BOARD_INFO_FILE := device/samsung/intercept/board-info.txt

#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/intercept/bluetooth


# Video Devices
# BOARD_USES_OVERLAY := true
# BOARD_CAMERA_DEVICE := /dev/video0
# BOARD_SECOND_CAMERA_DEVICE := /dev/video2


# WIFI defines
WPA_SUPPLICANT_VERSION := VER_0_6_X
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/libmodules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/wifi/nvram_net.txt dhd_watchdog_ms=10 dhd_poll=1"
# FIXME: HOSTAPD-derived wifi driver
#BOARD_HAS_QCOM_WLAN := true
#BOARD_WLAN_DEVICE := qcwcn
#WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#WIFI_DRIVER_FW_PATH_STA := "sta"
#WIFI_DRIVER_FW_PATH_AP := "ap"


# GPS
BOARD_GPS_LIBRARIES := libsecgps libsecril-client
BOARD_USES_GPSSHIM := true

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
BUILD_WITH_FULL_STAGEFRIGHT := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
#TARGET_PROVIDES_GPS_LOC_API := true
#TARGET_NO_RPC := true

# Prelinker
# PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=\$(TOP)/device/samsung/intercept/prelink-linux-arm-intercept.map


# Recovery
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_UI_LIB := librecovery_ui_mako

#TARGET_RECOVERY_FSTAB = device/lge/mako/fstab.mako
#TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 880803840 # 840M

#BOARD_USERDATAIMAGE_PARTITION_SIZE := 6189744128 # 5.9G
#BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

#BOARD_USES_SECURE_SERVICES := true

#BOARD_USES_EXTRA_THERMAL_SENSOR := true
#BOARD_USES_CAMERA_FAST_AUTOFOCUS := true

#BOARD_HAL_STATIC_LIBRARIES := libdumpstate.mako

#TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/intercept

#BOARD_SEPOLICY_DIRS := \
#       device/samsung/intercept/sepolicy

#BOARD_SEPOLICY_UNION := \
#       app.te \
#       bluetooth.te \
#       device.te \
#       domain.te \
#       drmserver.te \
#       file.te \
#       file_contexts \
#       hci_init.te \
#       init_shell.te \
#       keystore.te \
#       mediaserver.te \
#       kickstart.te \
#       nfc.te \
#       rild.te \
#       surfaceflinger.te \
#       system.te \
#       ueventd.te \
#       wpa.te


#BOARD_CHARGER_ENABLE_SUSPEND := true

#USE_DEVICE_SPECIFIC_CAMERA:= true
#USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true

#OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

#HAVE_ADRENO_SOURCE:= false

#-include vendor/samsung/intercept/BoardConfigVendor.mk
