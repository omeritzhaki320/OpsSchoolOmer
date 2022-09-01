#!/bin/bash

1. cd ~/.ssh

2. ssh-keygen -t rsa

3. ssh-copy-id -i ~/.ssh/id_rsa.pub root@server2

4. ssh server2
