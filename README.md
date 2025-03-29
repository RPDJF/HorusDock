# HorusDock 🚀🐳  

![Docker Compose](https://img.shields.io/badge/Docker-Compose-2496ED?logo=docker&logoColor=white&style=flat-square)
![Self-Hosted](https://img.shields.io/badge/Self--Hosted-Powered_by_You-ff69b4?style=flat-square)  
![Traefik](https://img.shields.io/badge/Reverse%20Proxy-Traefik-61DAFB?style=flat-square&logo=traefik&logoColor=white)
![Automated Updates](https://img.shields.io/badge/Automated%20Updates-Watchtower-25A162?style=flat-square&logo=dependabot&logoColor=white)
![Pi-Hole](https://img.shields.io/badge/Ad%20Blocking-Pi--Hole-FDDA0D?style=flat-square&logo=pihole&logoColor=white)

HorusDock is a customizable collection of Docker Compose files that power your home server! 🏠🖥️ It's tailored for my own setup, but feel free to draw inspiration and create your own unique configurations.  

With HorusDock, you can manage services like monitoring, media servers, ad-blocking, reverse proxies, and much more — all in one place! 🔧✨  

---

## 📝 Notes  
HorusDock is designed with absolute paths for volumes, meaning it works best on my specific setup. If you’re adapting it, ensure you update paths in the `compose-*.yml` files! ⚠️   
You may also need to adjust all of the traefik labels to match your domain. 🌐 (and `conf/traefik/custom.d/pihole.yml`)

---

## 🛠️ Services Included  

| Service           | Description                                                                                    | Documentation Link                         |  
|-------------------|------------------------------------------------------------------------------------------------|--------------------------------------------|  
| **Pi-Hole** 🛡️   | A network-wide ad blocker running in host mode. Optionally use it as a DHCP server! 🚀          | [Pi-Hole Docs](https://github.com/pi-hole/pi-hole) |  
| **Plexus** 🎞️     | Automate your media server with Jellyfin and other tools for the ultimate streaming experience. 🎬 | [Jellyfin Docs](https://github.com/jellyfin/jellyfin) |  
| **Traefik** 🔀    | A modern reverse proxy to secure your services with TLS certificates. 🔒                         | [Traefik Docs](https://github.com/traefik/traefik) |  
| **Watchtower** ⚡  | Automatically update your Docker containers and keep everything up-to-date effortlessly. 🔄      | [Watchtower Docs](https://github.com/containrrr/watchtower) |  

---

## 🚀 How to Get Started  

### 1️⃣ Clone the Repository  
```bash  
git clone https://github.com/RPDJF/HorusDock.git  
cd HorusDock  
```
### 2️⃣ Configure Watchtower
Copy the example `.env` file for Watchtower and make necessary changes:
```bash	
cp conf/watchtower/example.env conf/watchtower/.env  
vim conf/watchtower/.env  
```
### 3️⃣ Configure Traefik
Edit the `conf/traefik/custom.d/cert-conf.yml` file to use your own certificates (don't forget to mount them through the `compose-traefik.yml` file):
```bash
vim conf/traefik/custom.d/cert-conf.yml  
```
Edit the `conf/traefik/custom.d/pihole.yml` file to use your own domain:
```bash
vim conf/traefik/custom.d/pihole.yml  
```
Edit all the others `compose-*.yml` files to use your own domain:
```bash
vim compose-*.yml  
```
### 4️⃣ Deploy Your Services
Start everything up in detached mode:
```bash
./all-compose.sh up -d  
```
### 5️⃣ 🎉 Enjoy Your New Server!
Visit the services you've deployed and start customizing your setup! 🚀

---

## 🌟 Why did I made this?
- 🌍 All-in-One: Easily manage essential services in one place.
- 🔒 Privacy-First: Fully self-hosted for total control over your data.
- 🔄 Efficient Updates: Watchtower ensures your containers are always fresh.
