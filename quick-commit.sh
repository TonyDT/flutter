#!/bin/bash

echo ""
echo "================== 快速提交 =================="
echo ""

git pull || { echo "【错误】 git pull 失败，请手动处理"; exit 1; }

echo ""
git status
echo ""

read -p "请输入提交信息 (例如: feat: 添加商品详情页): " commit_msg

if [ -z "$commit_msg" ]; then
    echo ""
    echo "【警告】 提交信息不能为空，已取消"
    echo ""
    exit 1
fi

git add .

git commit -m "$commit_msg" || { echo "commit 失败（可能无改动）"; exit 0; }

git push || { echo "【错误】 git push 失败，请检查"; exit 1; }

echo ""
echo "============== 提交并推送成功 =============="
echo "提交信息： $commit_msg"
echo ""
read -p "按 Enter 退出..."