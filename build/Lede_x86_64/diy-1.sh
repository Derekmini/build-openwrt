#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# 基本不需要添加啥插件了,我搜集了各位大神的插件都集成一个软件包直接打入源码里面了
# 要了解增加了什么东西，就到我的专用软件包里面看看看吧，如果还是没有你需要的插件，请不要一下子就拉取别人的插件包
# 相同的文件都拉一起，因为有一些可能还是其他大神修改过的容易造成编译错误的
# 想要什么插件就单独的拉取什么插件就好，或者告诉我，我把插件放我的插件包就行了
# 软件包地址：https://github.com/281677160/openwrt-package
# 拉取插件请看《各种命令的简单介绍》第4条、第5条说明,不管大神还是新手请认真的看看,再次强调请不要一下子就拉取别人一堆插件的插件包,容易造成编译错误的

# Mod zzz-default-settings
# pushd package/lean/default-settings/files
# sed -i '/http/d' zzz-default-settings
# export orig_version="$(cat "zzz-default-settings" | grep DISTRIB_REVISION= | awk -F "'" '{print $2}')"
# sed -i "s/${orig_version}/${orig_version} ($(date +"%Y-%m-%d"))/g" zzz-default-settings
# popd

# Add ssr-plus
# fw876/helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add luci-app-bypass
# git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}

# Add luci-app-dnsfilter
# git clone https://github.com/garypang13/luci-app-dnsfilter package/luci-app-dnsfilter

# Add luci-app-godproxy
# git clone --depth=1 https://github.com/project-lede/luci-app-godproxy package/luci-app-godproxy

# Add Jerrykuku's packages(vssr/jd-daily/argon theme)
rm -rf package/lean/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb package/jerrykuku/lua-maxminddb
# git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/jerrykuku/luci-app-argon-config
git clone --depth=1 https://github.com/jerrykuku/luci-app-jd-dailybonus package/jerrykuku/luci-app-jd-dailybonus
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr package/jerrykuku/luci-app-vssr
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/jerrykuku/luci-theme-argon

# Add Lienol's Packages
# git clone --depth=1 https://github.com/Lienol/openwrt-package package/Lienol-package

# Add luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall

# Add OpenClash.
# git clone -b master --depth=1 https://github.com/vernesong/OpenClash package/openclash

# Add ServerChan
# git clone --depth=1 https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan

# Add luci-app-adguardhome
git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome

# Add luci-app-diskman
# git clone --depth=1 https://github.com/SuLingGG/luci-app-diskman package/luci-app-diskman
# mkdir package/parted
# cp package/luci-app-diskman/Parted.Makefile package/parted/Makefile

# Add luci-app-dockerman
rm -rf package/lean/luci-app-docker
# git clone --depth=1 https://github.com/KFERMercer/luci-app-dockerman package/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-lib-docker package/luci-lib-docker

# Add smartdns
# git clone --depth=1 -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
