#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# 请不要直接套用我其他机型的扩展或者插件，每个源码有些文件路径都多多少少不一样，直接套用会出错
#
# Add ssr-plus
# fw876/helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

# Add luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall

# Add Jerrykuku's packages(vssr/jd-daily/argon theme)
rm -rf package/lean/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb package/jerrykuku/lua-maxminddb
git clone --depth=1 https://github.com/jerrykuku/luci-app-jd-dailybonus package/jerrykuku/luci-app-jd-dailybonus
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr package/jerrykuku/luci-app-vssr
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/jerrykuku/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/jerrykuku/luci-app-argon-config

# Add luci-app-adguardhome
git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome

# Add luci-app-dockerman
rm -rf package/lean/luci-app-docker
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
# git clone --depth=1 https://github.com/KFERMercer/luci-app-dockerman package/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-lib-docker package/lisaac/luci-lib-docker

