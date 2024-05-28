#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
echo 'src-git lienol https://github.com/Lienol/openwrt-package' >> feeds.conf.default
echo 'src-git nas https://github.com/linkease/nas-packages' >> feeds.conf.default
echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci' >> feeds.conf.default



# echo '添加jerrykuku的argon-mod主题'
# rm -rf package/lean/luci-theme-argon  
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/lean/luci-theme-argon
# echo '=========Add argon-mod OK!========='

# 添加gn 临时方案
# cd package
# svn co https://github.com/kenzok8/small-package/trunk/gn
