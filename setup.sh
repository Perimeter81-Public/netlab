sudo apt-get update && sudo apt-get install -y python3-pip
python3 -m pip install networklab
netlab install -y ubuntu ansible containerlab libvirt
echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" | \
tee -a /etc/apt/sources.list.d/netdevops.list -y
apt install containerlab -y
apt-get install containerd -y
apt remove moby-tini -y
apt-get install pip -y
pip install -r requirements.txt
apt install graphviz

