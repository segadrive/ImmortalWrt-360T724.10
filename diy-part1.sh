#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#!/bin/bash
cd openwrt

# 添加常用插件源（解决cloudflared/appfilter等插件依赖）
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default

# 更新feeds（可选，提前拉取插件）
./scripts/feeds update -a
exit 0
# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git taskplan https://github.com/sirpdboy/luci-app-taskplan' >>feeds.conf.default
echo 'src-git timecontrol https://github.com/gaobin89/luci-app-timecontrol' >>feeds.conf.default
