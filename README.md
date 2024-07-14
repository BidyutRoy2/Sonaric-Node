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

## Installation Guide Open WSL or Putty

### Install Update / Packages
```
sudo apt update -y && sudo apt upgrade -y
```

### Node JS
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```
```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 20
nvm use 20
npm install -g npm@latest
```

### Use these 2 commands first to create a Screen session
  
```bash
sudo apt-get update
sudo apt-get install screen
```

### Run the following command to download and execute the installation script
```bash
wget https://raw.githubusercontent.com/BidyutRoy2/Sonaric-Node/main/sonaric.sh && chmod +x sonaric.sh && ./sonaric.sh
```

```bash
screen -S Sonaric-Node
```

### Node İnfo
```
sonaric node-info
```
###  It should return the node information if the node is running
```
 ✨ Example Node information loaded:
 ├─🧊 ID             12D3XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 ├─📥 Name         wavy-cream-yacht
 ├─🧊 Version        v1.4.0
 ...
```

### Update
```
apt update
apt upgrade sonaric
```

### Accessing the GUI

- Create an SSH tunnel to forward the required ports to your local machine by issuing the following command on your local machine : ssh -L 127.0.0.1:44003:127.0.0.1:44003 -L 127.0.0.1:44004:127.0.0.1:44004 -L 127.0.0.1:44005:127.0.0.1:44005 -L 127.0.0.1:44006:127.0.0.1:44006 user@your-vps-ip - 
- Change your ip And Change User - if you use root write root
```
ssh -L 127.0.0.1:44003:127.0.0.1:44003 -L 127.0.0.1:44004:127.0.0.1:44004 -L 127.0.0.1:44005:127.0.0.1:44005 -L 127.0.0.1:44006:127.0.0.1:44006 user@your-vps-ip
```
- You will be prompted to authenticate cia SSH. Once authenticated, the SSH tunnel will be established.
- Your local machine and navigate to http://localhost:44004 to access the Sonaric GUI.
```
curl http://localhost:44004
```

### Identity Backup

### Export
```
sonaric identity-export -o your-node-name.identity
```
- You will be prompted to enter a password to encrypt the exported identity. After entering the password, the identity will be exported to the specified file

### Import
```
sonaric identity-import -i your-node-name.identity
```

### Points Check
```
sonaric points
```

### Track Your Node > [Go to Here & Check](https://tracker.sonaric.xyz)

### Official > [Guide](https://docs.sonaric.xyz/installation)
