# Script Config Ubuntu Server 24.4.4 LTS
Scripts `.sh` para configuração inicial de ubuntu server 24.4.4 LTS recem instalado.

## Rode
Atualização inicial e reinicialização do sistema
```bash
sudo apt update -y && sudo apt upgrade -y
sudo apt autoremove
sudo apt autoclean
sudo reboot
```

Clone este reppositório
```bash
git clone https://github.com/GuilhermeeDev/script-config-ubuntu-server
cd script-config-ubuntu-server
```

Rode o executavel de instalação inicial
```bash
./initial-configuration.sh
```

Em seguida instale a versão mais recente do `Docker` e plugins com
```bash
./docker-install.sh
```
