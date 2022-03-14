#!/bin/bash
#
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source

echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
# echo 'src-git OpenAppFilter https://github.com/destan19/OpenAppFilter' >>feeds.conf.default
# echo 'src-git luci-app-easymesh https://github.com/kinsum666/luci-app-easymesh.git' >>feeds.conf.default

#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git custom https://github.com/kiddin9/openwrt-packages.git;master' feeds.conf.default

# 添加软件包源
# git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon  #新的argon主题
# git clone --depth=1 https://github.com/llccd/openwrt-fullconenat.git package/openwrt-fullconenat #全锥形NAT (上游代码已整合)
# git clone --depth=1 https://github.com/peter-tank/luci-app-fullconenat package/luci-app-fullconenat #全锥形NAT LUCI界面
