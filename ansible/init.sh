#!/bin/bash

# amazon linuxのansible installコマンド
# extrasパッケージのepelを追加して、install
sudo amazon-linux-extras install -y epel
sudo yum install -y ansible
