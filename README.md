# git study

1. git init 初始化

2. git status 查看状态

3. git add 添加文件

4. git commit 提交

5. git log 日志

6. git branch 分支可查看当前在哪个分支或者后面根分支可创建新的分支

7. git checkout ** 切换分支

8. git checkout -b a 创建并切换

9. git merge a 合并分支到master

10. git tag .../ git checkout ... 创建tag/切换

11. git branch -d/-D 删除分支/强制删除

12. ```shell
    echo "# test" >> README.md
    git init
    git add README.md
    git commit -m "first commit"
    git branch -M main
    git remote add origin git@github.com:687497/test.git
    git push -u origin main
    ```
