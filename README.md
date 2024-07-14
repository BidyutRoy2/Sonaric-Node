<p align="center">
<img src='image.jpg' width='900'>
</p>

## VPS Requirements

|                | Minimal                  | Recommended                  |
|----------------|--------------------------|------------------------------|
| **RAM**        | 4 GB RAM                 | 8 GB+ RAM                    |
| **CPU Cores**  | 2 CPU cores              | 4+ CPU cores                 |
| **Disk Space** | 20 GB free disk space    | 100 GB+ free disk space (SSD)|
| **Architecture** | amd64 CPU Architecture | amd64 CPU Architecture       |
| **Operating System** | Ubuntu 22.04       | Ubuntu 22.04                 |

- You can buy VPS from [PQ Hosting](https://pq.hosting/en/vps) using Crypto

## Installation Guide

### Open WSL or Putty

- Use these 2 commands first to create a Screen session
```bash
sudo apt-get update
sudo apt-get install screen
```
```bash
screen -S Sonaric-Node
```
### Then Paste this command:
```bash
wget https://raw.githubusercontent.com/BidyutRoy2/Sonaric-Node/main/sonaric.sh && chmod +x sonaric.sh && ./sonaric.sh
```
- To detach from this screen u need to press `Ctrl + A + D`
- After that you can close your Termius or Putty App

### To confirm the node is running the latest version, issue the following command:
```
sonaric node-info
```

## Create an SSH tunnel to forward the required ports to your local machine by issuing the following command on your local machine:
```
ssh -L 127.0.0.1:44003:127.0.0.1:44003 -L 127.0.0.1:44004:127.0.0.1:44004 -L 127.0.0.1:44005:127.0.0.1:44005 -L 127.0.0.1:44006:127.0.0.1:44006 user@your-vps-ip
```
### Replace user with your VPS username and your-vps-ip with your VPS IP address.
- Make sure not to run this command on your VPS. Run this command on your local machine to establish an SSH tunnel to your VPS. If you are using Windows, you can run this command in WSL or use PuTTY to create an SSH tunnel using ports specified above.
- - You will be prompted to authenticate cia SSH. Once authenticated, the SSH tunnel will be established.
- Open a web browser on your local machine and navigate to http://localhost:44004 to access the Sonaric GUI.

## Backup and Recovery
```
sonaric identity-export -o your-node-name.identity
sonaric identity-import -o your-node-name.identity
```

