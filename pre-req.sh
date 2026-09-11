#!/bin/bash

# * This Copyright is retained for the purpose of protecting free
# * redistribution of source.
# *
# *     URL:    https://syedmudasir.com
# *     email:  mudasir.s.tech@gmail.com
# *

echo "This script is written to work with Ubuntu 20.04"
sleep 3
echo
echo "Disable swap until next reboot"
echo
sudo swapoff -a
sudo sed -e '/swap/ s/^#*/#/' -i /etc/fstab

echo "Updating the local node, please stand-by"
sudo apt-get update && sudo apt-get upgrade -y
echo

echo "Ensure two modules are loaded after reboot"

cat <<EOF | sudo tee /etc/modules-load.d/containerd.conf
overlay
br_netfilter
EOF

sleep 2

echo "Load the modules now"

sudo modprobe overlay

sudo modprobe br_netfilter

sleep 2

echo "Update sysctl to load iptables and ipforwarding"

cat <<EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF

sudo sysctl --system


sleep 2
echo "Install some necessary software"
sudo apt install curl apt-transport-https vim git wget gnupg2 software-properties-common lsb-release ca-certificates uidmap -y

sleep 2

echo "Install and configure containerd"
sleep 2

install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc


echo "deb [arch=$(dpkg --print-architecture) \
signed-by=/etc/apt/keyrings/docker.asc] \
https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null



sudo apt-get update &&  sudo apt-get install containerd.io
mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml
sed -i '/SystemdCgroup/ s/false/true/' /etc/containerd/config.toml
systemctl restart containerd
systemctl enable --now containerd



echo
echo "Install kubeadm, kubelet, and kubectl"
sleep 2

curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.36/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.36/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt-get update -y

apt-get install -y kubelet=1.36.0-1.1 kubeadm=1.36.0-1.1 kubectl=1.36.0-1.1



sudo apt-mark hold kubelet kubeadm kubectl
