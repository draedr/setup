# install docker (copied from https://docs.docker.com/engine/install/ubuntu/)
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg    
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# install docker-compose (usign docker compose instead of docker-compose)
mkdir $HOME/.docker/cli-plugins
wget -P $HOME/.docker/cli-plugins/docker-compose https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-linux-x86_64

# Create reverse-proxy network
docker network create caddy
# Install rclone
curl https://rclone.org/install.sh | sudo bash
# Get docker stacks from nfs share
sudo mount -t nfs 192.168.1.250:/mnt/white-house/backups
rsync -a backups/docker .