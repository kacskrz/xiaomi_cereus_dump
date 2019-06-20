#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:cee876f01debdcf9814710f86ae77e413c0a561a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:995b7fa1fc7001116d9e1a25de3e2c27acf10fa1 EMMC:/dev/block/platform/bootdevice/by-name/recovery cee876f01debdcf9814710f86ae77e413c0a561a 67108864 995b7fa1fc7001116d9e1a25de3e2c27acf10fa1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
