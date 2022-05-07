# draedr/setup
---
This repository contains a couple of script to restore my docker stack on an ubuntu system (either baremetal, vm or lxc).

## Usage
1. Clone/download and extract this repository
2. Change row:24 of setup.sh to point to a nfs share that contains the docker stack
2. Run setup.sh
3. Run startup.sh
4. Start any other container you want

## Currently
- System: LXC Container
- OS: Ubuntu 20.04.4
- Hostname: boscom
- Host: commonwealth (Ubuntu 20.04.4)

