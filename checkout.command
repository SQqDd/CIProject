#!/bin/bash
echo "请输入要切换的分支"
read submit
git checkout $submit
echo "请输入新分支名称"
read submit
if [ $submit != '' ]; then
git checkout -b $submit
git add .
git commit -m 'first commit'
git push -u origin $submit
echo "请输入要获取提交记录的分支名称"
read submit
git log -4 $submit
echo "请输入要合并的 commit id"
read submit
git cherry-pick $submit
git add .
git commit -m 'merge'
git push
else
echo "分支名称不能为空"
fi
