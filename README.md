# Just Traefik
Simpliest Traefik container configuration to run your sites behind.

---
<p align="center">
🔥 Looking for <strong>cool t-shirts for web developers</strong>?<br>
Check out my <a href="https://devnull.store?utm_source=github&utm_medium=link&utm_campaign=lemp" target="_blank">Devnull Clothing</a>.
</p>

---

## Installation

### Pre-installation (optional)

In case you want to run Traefik container under different user just create it and add it to docker group:

```sh
sudo mkdir /home/traefik
sudo groupadd traefik
sudo useradd -g traefik -d /home/traefik traefik
sudo passwd traefik
sudo usermod -s /bin/bash traefik
sudo chown -R traefik:traefik /home/traefik
sudo chmod -R 0775 /home/traefik
```

### Installation

First pull.

```sh
git clone https://github.com/lucien144/just-traefik.git .
```

Then edit all lines with comment `# Edit this line!` in `traefik.toml` and `traefik_dynamic.toml`.

```sh
./run.sh
```

## Restarting

Just run the same command again:

```sh
./run.sh
```
