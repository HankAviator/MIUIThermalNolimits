#!/system/bin/sh
# 不要假设您的模块将位于何处。
# 如果您需要知道此脚本和模块的放置位置，请使用$MODDIR
# 这将确保您的模块仍能正常工作
# 即使Magisk将来更改其挂载点
MODDIR=${0%/*}

# 此脚本将在late_start service 模式执行

# 等待开机30秒后开始执行
# sleep 30

# 清理内存
# killall -9 com.miui.bugreport
# killall -9 com.android.updater
# killall -9 com.miui.analytics
# killall -9 com.miui.voiceassist
# killall -9 com.google.android.marvin.talkback

# 内存大于8GB设备关闭ZRAM,8GB=8388608,6GB=6291456
# MemTotalStr=`cat /proc/meminfo | grep MemTotal`
# MemTotalKB=${MemTotalStr:16:8}
# if [[ $MemTotalKB -gt 8388608 ]]; then
#   echo "尝试关闭ZRAM"
#   swapoff /dev/block/zram0 2>/dev/null
#   echo 1 > /sys/block/zram0/reset
#   sleep 30
#   zramdisksize=`cat /sys/block/zram0/disksize`
#   if [[ $zramdisksize -ne 0 ]]; then
#     echo "再次尝试关闭ZRAM"
#     swapoff /dev/block/zram0 2>/dev/null
#     echo 1 > /sys/block/zram0/reset
#   fi
# fi

# 结束
exit 0