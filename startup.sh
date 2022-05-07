# Start adguard-home
cd docker/adguardhome
docker-compose up -d

# Start caddy
cd ../caddy
docker-compose up -d private
docker-compose up -d public

# Start gitea
cd ../gitea
docker-compose up -d server