#!/bin/sh
sudo adduser --disabled-password --gecos '' sungyong
sudo usermod -aG docker,adm,dialout,cdrom,floppy,sudo,audio,dip,video,plugdev,netdev,lxd sungyong
sudo su sungyong -c "cd ~;mkdir -p ~/.ssh;echo \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCmKFoLoOEyxqs5pNM2mTzT6emk5ZALZezG75L+EXddP2VHa0AWUr+zg4KAKS/0gBVsSpj74OcuKSkex5atCxtVC6Uy5pKOMftutnaiwZ04U982ZeRIbrrP8T3KmTEakU61FUBrqTn7GE7GT6krvOResDZhHVCVcPdfVTciC7acJ/QuitYgRL8gjDIZwk/pHO0jyEKm/sVIv8+KLC4wjNfsNzuw+KCX4XdEW9xyAGt/aAYSr40YjOFCJddKfdcet4jr2XYzfdAkXuFX/iQlM3BU4YLz5yGTpot+h3iXrAJ6xfR83sCw/yGATrWAgEiU2ydvtGzNxma1aR9BOgfR29yl sungyong@LAPTOP-UN28N1E0\" | tee >> ~/.ssh/authorized_keys;chmod 600 ~/.ssh/*"
sudo passwd sungyong
