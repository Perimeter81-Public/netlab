# Netlab
Netlab is a Virtual Network Lab tool that ignores the GUI for a CLI and Infrastructure as Code Principles
- https://github.com/ipspace/netlab

Getting Started 

### Deployment 
- Ubuntu 20.04 VM

## Install Netlab 
```bash
./setup.sh
```

## Download the Git Repo
```bash
git clone https://github.com/Perimeter81-Public/netlab.git
```

## Bring up the lab
```bash
netplan up
```

## Confirm the lab is up
```bash
netplan status
```

## Restart the Lab / Apply Changes
```bash
netplan restart
```

### Connect to the devices
```bash
netlab connect <device name>
vtysh 
```
### Issue Show Commands 
```bash
You can issue commands from the cli via  
netlab connect <device name> --<show ommand>
```

### Validate the fix 
```bash
netlab validate
```
