#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:0b1d7f7d8c188df85785d0552afbec504748e31b; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:ae1cf3099f4f0497d8e3541dbbba92dd026877a7 EMMC:/dev/block/platform/bootdevice/by-name/recovery 0b1d7f7d8c188df85785d0552afbec504748e31b 67108864 ae1cf3099f4f0497d8e3541dbbba92dd026877a7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
