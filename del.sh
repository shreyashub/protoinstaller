#! /bin/bash
sudo apt-get remove libprotobuf-dev
sudo rm -rf `which protoc`
sudo pip uninstall protobuf-2.6.1
sudo pip3 uninstall protobuf-2.6.1
sudo pip uninstall protobuf==3.4
sudo pip3 uninstall protobuf==3.4
sudo pip uninstall protobuf==2.6.1
sudo pip3 uninstall protobuf==2.6.1
sudo apt-get uninstall protobuf
sudo apt-get remove protobuf
sudo pip uninstall protobuf==3.2
sudo pip2 uninstall protobuf==2.6
sudo apt-get remove libproto*
sudo rm -rf /usr/include/google
sudo rm -rf /usr/local/include/google/protobuf/
