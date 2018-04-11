## TWRP device tree for Xiaomi Mi MIX (lithium)

Add to `.repo/local_manifests/roomservice_lithium.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project name="nextgen-networks/android_device_xiaomi_lithium-OMNI" path="device/xiaomi/lithium" remote="github" revision="omni8-1_v8" />
	<project name="omnirom/android_device_xiaomi_msm8996-common" path="device/xiaomi/msm8996-common" remote="github" revision="android-8.1" />
	<project name="omnirom/android_kernel_xiaomi_msm8996" path="kernel/xiaomi/msm8996" remote="github" revision="android-8.1" />
	<project name="MoKee/android_vendor_xiaomi_lithium" path="vendor/xiaomi/lithium" remote="github" revision="mkn-mr1" />
	<project name="MoKee/android_vendor_xiaomi_msm8996-common" path="vendor/xiaomi/msm8996-common" remote="github" revision="mkn-mr1" />
</manifest>
```

Add to `.repo/local_manifests/roomservice.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!--Please do not manually edit this file-->
<manifest>
  <project name="omnirom/android_external_busybox" path="external/busybox" remote="github" revision="android-8.1" />
  <project name="AOSPA/android_device_qcom_common" path="device/qcom/common" remote="github" revision="oreo-mr1" />
  <remove-project name="platform/bootable/recovery" />
  <project name="nextgen-networks/android_bootable_recovery" path="bootable/recovery" remote="github" revision="android-8.1_v6-testing" />
  <project name="android_packages_apps_SnapdragonCamera2" path="packages/apps/SnapdragonCamera2" remote="omnirom" revision="android-8.1" />
  <project name="vendor_qcom_opensource_dataservices" path="vendor/qcom/opensource/dataservices" remote="omnirom" revision="android-8.1" />
  <project name="android_device_qcom_caf-sepolicy" path="device/qcom/sepolicy" remote="omnirom" revision="android-8.1" />
  <project name="android_vendor_nxp-nfc_interfaces_opensource_nfc" path="vendor/nxp-nfc/interfaces/opensource/nfc" remote="omnirom" revision="android-8.0" />
  <project name="android_vendor_nxp-nfc_opensource_frameworks" path="vendor/nxp-nfc/opensource/frameworks" remote="omnirom" revision="android-8.1" />
  <project name="android_vendor_nxp-nfc_opensource_libnfc-nci" path="vendor/nxp-nfc/opensource/libnfc-nci" remote="omnirom" revision="android-8.1" />
  <project name="android_vendor_nxp-nfc_opensource_Nfc" path="vendor/nxp-nfc/opensource/Nfc" remote="omnirom" revision="android-8.1" />
  <project name="android_vendor_qcom_opensource_interfaces" path="vendor/qcom/opensource/interfaces" remote="omnirom" revision="android-8.1" />
  <project name="android_vendor_qcom_opensource_dpm" path="vendor/qcom/opensource/dpm" remote="omnirom" revision="android-8.0" />
  <project name="android_vendor_qcom_opensource_bluetooth" path="vendor/qcom/opensource/bluetooth" remote="omnirom" revision="android-8.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
recoverydevice="lithium" && . build/envsetup.sh && breakfast $recoverydevice && lunch omni_$recoverydevice-eng && croot && make -j8 recoveryimage && mv $OUT/recovery.img $OUT/twrp-3.2.1-0-$recoverydevice-raupe-$(date +%Y%m%d-%H%M)-OMNI.img
```

TWRP device configuration for Xiaomi Mi Mix
=========================================

The Xiaomi Mi Mix (codenamed _"Lithium"_) is a high-end smartphone from Xiaomi.

It was announced in October 2016. Release date was November 2016.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core (2x2.35 GHz Kryo & 2x2.19 GHz Kryo)
Chipset | Qualcomm MSM8996 Snapdragon 821
GPU     | Adreno 530
Memory  | 4/6 GB RAM
Shipped Android Version | 6.0.1
Storage | 64/128/256 GB
Battery | Li-Po 4400mAh battery
Display | 1080 x 2040 pixels, 6.4 inches (~362 ppi pixel density)
Camera  | 16 MP, f/2.0, EIS (gyro), phase detection autofocus, dual-LED (dual tone) flash

## Device picture

![Xiaomi Mi Mix](https://xiaomi-mi.com/uploads/CatalogueImage/xiaomi-mi-mix-ceramic-black-18k-gold-01_14542_1477466272.jpg "Xiaomi Mi Mix in black")

