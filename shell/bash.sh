.service文件上传到系统/etc/systemd/system 目录下(centOS7)
sudo systemctl daemon-reload 刷新服务配置文件
sudo systemctl enable abcd.service 设置开机重启（视情况而定）
sudo systemctl start  abcd.service 启动服务
sudo journalctl -u abcd.service查看日志
