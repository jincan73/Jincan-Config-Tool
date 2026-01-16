#!/bin/sh

# ==========================================
# Jincan Network Diagnostic Tool
# Version: 1.0.0
# Author: Jincan Network Team
# Website: https://www.jincan.net
# ==========================================

# 1. 品牌展示 (Branding)
echo ""
echo "#############################################"
echo "#                                           #"
echo "#        JINCAN NETWORK DIAGNOSTICS         #"
echo "#        深圳市金灿网络有限公司             #"
echo "#                                           #"
echo "#     Global: https://www.jincan.net        #"
echo "#     CN:     https://www.zxcn.cc           #"
echo "#                                           #"
echo "#############################################"
echo ""

# 定义检查函数
check_host() {
    TARGET_URL=$1
    NAME=$2
    echo -n "Checking connection to $NAME ($TARGET_URL)... "
    
    # 使用 ping 发送 2 个包，超时时间 2 秒
    # >/dev/null 2>&1 表示不显示 ping 的详细杂乱信息，只看结果
    if ping -c 2 -W 2 "$TARGET_URL" >/dev/null 2>&1; then
        echo "[ OK ] - 正常"
    else
        echo "[ FAIL ] - 无法连接 (Failed)"
    fi
}

# 2. 开始检测 (Connectivity Check)
echo "Start Diagnosis..."
echo "---------------------------------------------"

# 检测外网连通性 (Google DNS) - 判断是否能上网
check_host "8.8.8.8" "Global Internet (Google DNS)"

# 检测您的国内业务站
check_host "www.zxcn.cc" "Jincan CN (zxcn.cc)"

# 检测您的国际主站
check_host "www.jincan.net" "Jincan Global (jincan.net)"

echo "---------------------------------------------"
echo "Diagnosis Complete."
echo ""
