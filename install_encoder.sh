#!/bin/bash
wget https://do.mazh.top/encoder.zip
echo 下载完成 正在写入缓存
if ! command -v unzip &> /dev/null; then
	echo unzip不存在 正在安装
    yum install -y unzip
fi
unzip encoder.zip
echo 解压完成 正在写入
cp encoder /usr/local/bin
chmod 777 /usr/local/bin/encoder
echo 写入完成 正在删除缓存
rm encoder.zip
rm encoder
echo 删除成功
echo By HBHelper.