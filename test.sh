#!/bin/bash

date |tee -a /root/load_data.log ###tee 标准添加 date 到 /root/load_data.log 文件中
echo "load $1 ...." |tee -a /root/load_data.log #### 第一个参数 文件后输入的内容 /home/sftp/in/xxxxxx.text.gz
file=$1

########################################
echo "$file" |grep ytjz_trade_product_bss > /dev/null
if [ $? -eq 0 ]
then
        echo "正确"
else     
        echo "错了"
fi