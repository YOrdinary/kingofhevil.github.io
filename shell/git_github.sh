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

git init
//将本地项目创建为git仓库

//将服务器上的仓库克隆到本地
git clone https://github.com/gotgit/xxx.git
git clone git://github.com/gotgit/xxx.git

git add <filename>
//提出更改（把它们添加到暂存区）

git commit -m "代码提交信息"
//改动已经提交到了 HEAD，但是还没到你的远端仓库

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

git diff fileName
//查看文件的更改内容

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
