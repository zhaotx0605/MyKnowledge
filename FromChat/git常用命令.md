以下是几个常用的 Git 命令，涉及 **提交**（commit）、**推送**（push）、**拉取**（pull）操作，这些命令在 Git 的日常使用中非常常见。

### **提交（commit）相关的常用命令**
1. **初始化 Git 仓库**：
   ```bash
   git init
   ```
   初始化当前目录为 Git 仓库。

2. **查看仓库状态**：
   ```bash
   git status
   ```
   查看仓库的当前状态，比如哪些文件被修改、哪些文件没有被跟踪。

3. **添加文件到暂存区**：
   ```bash
   git add <file>    # 添加单个文件
   git add .         # 添加当前目录下的所有文件
   ```
   将修改后的文件或新文件添加到暂存区，准备提交。

4. **提交改动**：
   ```bash
   git commit -m "Commit message"
   ```
   提交暂存区中的文件，并附上提交信息。

5. **跳过暂存区直接提交**：
   ```bash
   git commit -a -m "Commit message"
   ```
   将所有已经被 Git 跟踪的文件（即已修改但未暂存的文件）直接提交，无需手动 `git add`。

6. **修改最近一次提交信息**：
   ```bash
   git commit --amend -m "New commit message"
   ```
   修改上一次提交的提交信息。

### **推送（push）相关的常用命令**
1. **推送到远程仓库**：
   ```bash
   git push origin master   # 推送到远程的 master 分支
   git push origin main     # 如果使用 main 分支
   ```
   将本地提交推送到远程仓库的指定分支。

2. **推送到其他分支**：
   ```bash
   git push origin your-branch-name
   ```
   将本地的指定分支推送到远程仓库。

3. **推送所有分支**：
   ```bash
   git push --all origin
   ```
   推送所有本地分支到远程仓库。

4. **强制推送（慎用）**：
   ```bash
   git push origin your-branch-name --force
   ```
   强制推送分支，这会覆盖远程仓库中的内容，慎用。

### **拉取（pull）相关的常用命令**
1. **从远程仓库拉取最新代码**：
   ```bash
   git pull origin master   # 从远程 master 分支拉取
   git pull origin main     # 从远程 main 分支拉取
   ```
   拉取远程仓库的最新代码并自动合并。

2. **拉取并重新基于远程仓库更新（rebase）**：
   ```bash
   git pull --rebase origin master
   ```
   拉取远程仓库最新更新并以 `rebase` 方式应用到当前分支，避免产生不必要的合并提交。

3. **仅获取更新但不合并**：
   ```bash
   git fetch origin
   ```
   获取远程仓库的最新改动，但不与本地代码进行合并，适合先查看远程改动再决定如何处理。

### **其他常用命令**
1. **查看提交历史**：
   ```bash
   git log
   ```
   查看提交历史，包括提交的 hash 值、作者、提交信息等。

2. **查看当前分支**：
   ```bash
   git branch
   ```
   查看本地所有分支，当前所在的分支会有 `*` 标记。

3. **创建新分支**：
   ```bash
   git checkout -b new-branch-name
   ```
   创建并切换到新分支。

4. **合并分支**：
   ```bash
   git merge branch-name
   ```
   将指定分支合并到当前分支。

### **总结**：
这些 Git 命令能够帮助你在版本控制中进行常见的提交、推送和拉取操作，适合日常开发工作中的各种场景。如果你有更多需求，可以深入学习更多 Git 的高级用法。