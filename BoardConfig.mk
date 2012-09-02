USE_CAMERA_STUB := true

# Fake building with eclair cam
BOARD_USES_ECLAIR_LIBCAMERA := true
BOARD_USES_ECLAIR_LIBAUDIO := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
#BOARD_USES_QCOM_LIBRPC := true
#BOARD_USE_QCOM_PMEM := true

BOARD_USE_FROYO_LIBCAMERA := true
BUILD_LIBCAMERA := true
BOARD_CAMERA_LIBRARIES := libcameraservice libcamera
USE_CAMERA_STUB:= false
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true

BOARD_USES_QCOM_LIBRPC := true
BOARD_HAVE_BLUETOOTH := true
BOARD_USES_GENERIC_AUDIO := false

#disabled for now
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_EGL_CFG := device/semc/shakira/prebuilt/egl.cfg

BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WLAN_DEVICE := wl1271
BOARD_SOFTAP_DEVICE := wl1271
WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/tiwlan_drv.ko
WIFI_DRIVER_MODULE_NAME := tiwlan_drv
WIFI_FIRMWARE_LOADER := wlan_loader
WIFI_EXT_MODULE_PATH := /system/lib/modules/sdio.ko
WIFI_EXT_MODULE_NAME := sdio
PRODUCT_DEFAULT_WIFI_CHANNELS := 14

#BOARD_USE_USB_MASS_STORAGE_SWITCH := true
#TARGET_USES_OLD_LIBSENSORS_HAL:=true
BOARD_LIBCAMERA_MISSING_AUTOFOCUS:=true
TARGET_USE_CUSTOM_LUN_FILE_PATH := true
#BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
BOARD_CUSTOM_BLUEDROID := ../../../device/semc/shakira/bluedroid.c

# ARMv6-compatible processor rev 5 (v6l)
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_BOOTLOADER_BOARD_NAME := shakira
TARGET_OTA_ASSERT_DEVICE := E15i,E15a,E16i,E16a,shakira,X8
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=shakira

WITH_JIT := true
ENABLE_JSC_JIT:=true

BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1

BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

JS_ENGINE := v8
BUILD_WITH_FULL_STAGEFRIGHT := true

TARGET_PROVIDES_LIBAUDIO := true

# to enable the GPS HAL
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shakira
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
#TARGET_PREBUILT_KERNEL := device/semc/shakira/kernel
#TARGET_NO_KERNEL := true

WITH_DEXPREOPT := false

BOARD_CUSTOM_BOOTIMG_MK := device/semc/msm7x27-common/custombootimg.mk
TARGET_RECOVERY_PRE_COMMAND := "mkdir /cache/recovery;touch /cache/recovery/boot;sync;"
BOARD_HAS_BOOT_RECOVERY := true
#BOARD_HAS_SMALL_RECOVERY := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_RECOVERY_CHARGEMODE := false
#BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_LDPI_RECOVERY := true
#BOARD_HAS_JANKY_BACKBUFFER := true
#BOARD_HAS_CRAPPY_BACKBUFFER := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/semc/msm7x27-common/recovery/recovery_ui.c

BOARD_USE_SCREENCAP := true

# A custom ota package maker for a device without a boot partition
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/semc/msm7x27-common/releasetools/semc_ota_from_target_files

# Prelinks
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/device/semc/msm7x27-common/prelink-linux-arm-x8.map
