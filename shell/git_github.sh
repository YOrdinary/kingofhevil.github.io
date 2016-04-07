ssh-keygen -t rsa -C "your_email@youremail.com"
//产生公钥私钥对，并配置了邮箱，否则默认xxx@supervisor

ssh-keygen
//仅产生公钥私钥对

//~/.ssh/id_rsa是私钥
//~/.ssh/id_rsa.pub是公钥

ssh -T git@github.com
//如果出现You’ve successfully authenticated, but GitHub does not provide shell access 。这就表示已成功连上github。

git config --global user.name "your name" //配置用户名
git config --global user.email "your email" //配置email 

git config --unset --global user.name
git config --unset --global user.email
//清空配置

git config user.name
git config user.email
//查询配置

git init
//将本地项目创建为git仓库

//将服务器上的仓库克隆到本地
git clone https://github.com/gotgit/xxx.git
git clone git://github.com/gotgit/xxx.git

git add <filename>
//提出更改（把它们添加到暂存区）

git add -u
//将所有修改过的文件加入暂存区

git add -A
//将本地删除文件和新增文件都登记提交到暂存区

git add -p
//对一个文件内修改的内容进行选择性提交

git commit -m "代码提交信息"
//改动已经提交到了 HEAD，但是还没到你的远端仓库

git commit --amend -m"xxxxx"
//修改最新提交的提交说明

git rm --cached xxxx
git commit --amend
//取消最近的一次提交

git push origin master
//将这些改动提交到远端仓库

git checkout -b feature_x
//创建一个叫做“feature_x”的分支，并切换过去

git checkout master
//切换回主分支

git branch -d feature_x
//再把新建的分支删掉

git push origin <branch>
//除非你将分支推送到远端仓库，不然该分支就是 不为他人所见的

git pull
//更新你的本地仓库至最新改动,以在你的工作目录中 获取（fetch） 并 合并（merge） 远端的改动

git merge <branch>
//合并其他分支到你的当前分支（例如 master）

git add <filename>
//git pull和git merge <branch>都会尝试去自动合并改动。遗憾的是，这可能并非每次都成功，并可能出现冲突（conflicts）。 这时候就需要你修改这些文件来手动合并这些冲突（conflicts）。改完之后,需要执行gti add <filename>命令以将它们标记为合并成功

git diff <source_branch> <target_branch>
//在合并改动之前，你可以使用如下命令预览差异

git tag 1.0.0 1b2e1d63ff
//为软件发布创建标签是推荐的。这个概念早已存在，在 SVN 中也有。你可以执行如下命令创建一个叫做 1.0.0 的标签

git log
//1b2e1d63ff 是你想要标记的提交 ID 的前 10 位字符。可以使用git log命令获取提交 ID。你也可以使用少一点的提交 ID 前几位，只要它的指向具有唯一性。


git checkout -- <filename>
//假如你操作失误（当然，这最好永远不要发生），你可以使用git checkout -- <filename>命令替换掉本地改动：此命令会使用 HEAD 中的最新内容替换掉你的工作目录中的文件。已添已添加到暂存区的改动以及新文件都不会受到影响。

git fetch origin
git reset --hard origin/master
//假如你想丢弃你在本地的所有改动与提交，可以到服务器上获取最新的版本历史，并将你本地主分支指向它

整理自http://rogerdudler.github.io/git-guide/index.zh.html

git status
//如果未执行git add命令，可以列出刚刚修改的变化

git status -s
//精简地列出刚刚修改的变化

git diff fileName
//查看文件的更改内容

git diff --word--diff
//逐字比较

git diff
//查看工作区与暂存区文件的差异

git diff HEAD
//查看工作区与版本库文件的差异

git diff --cached
//查看暂存区与版本库中文件的差异

git log xxx -1
//表示只想看到提交记录xxx的一行信息

git log xxx -1 -p
//可以查看xxx提交记录具体修改了什么内容

git rm -r --cached . 
//清除缓存

git branch -a
//查看当前版本库中有哪些分支

git pull origin master = 1.git fetch origin master 2.git merge origin/master
//因为git fetch同步下来的代码会被放到origin/master分支上。可以通过git diff origin/master查看远程库修改了哪些东西

git push origin --delete <branchName>
//在Git v1.7.0 之后，可以使用这个语法删除远程分支

git reset --hard <commit_id>
git push origin HEAD --force
//撤销commit

git tag
//列出已有标签

git show v1.0
//查看标签v1.0

git tag -l 'v1.4.2.*'
//只查看1.4.2系列版本

git tag -a v1.4 -m 'my version 1.4'
//新建标签

git tag v1.4-lw
//新建轻量级标签

git push origin v1.0
//将标签v1.0推送到远端仓库

git stash
//切换到新的工作分支之前保存工作进度

git stash pop
//切换回这个分支之后恢复之前保存的进度

git svn clone <svn_repos_url>
git svn fetch
git svn rebase
git svn dcommit
//用git客户端操作svn服务器

git rev-parse --git-dir
//显示版本库.git目录所在位置

git rev-parse --show-toplevel
//显示工作区根目录

git rev-parse --show-prefix
//相对于工作区根目录的相对目录

git rev-parse --show-cdup
//显示从当前目录（cd）后退（up）到工作区的根的深度

git config -e
git config -e --global
git config -e --system
//git配置文件



