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

---

## 📋 Features  
- **Effortless Setup:** Deploy and manage services with minimal effort!  
- **Self-Hosted Awesomeness:** No need to rely on third-party tools for core services.  
- **Extensible & Flexible:** Use it as a reference to create your own setup.  
- **Automation Everywhere:** Updates and certificates are handled automatically.  

---

## 🛠️ Services Included  

| Service           | Description                                                                                    | Documentation Link                         |  
|-------------------|------------------------------------------------------------------------------------------------|--------------------------------------------|  
| **Uptime-Kuma** ⏱️  | Monitor uptime for your websites and services. A self-hosted alternative to UptimeRobot. 🖥️  | [Uptime-Kuma Docs](https://github.com/louislam/uptime-kuma) |  
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
### 3️⃣ Deploy Your Services
Start everything up in detached mode:
```bash
./all-compose.sh up -d  
```
### 4️⃣ 🎉 Enjoy Your New Server!
Visit the services you've deployed and start customizing your setup! 🚀

---

## 🌟 Why did I made this?
- 🌍 All-in-One: Easily manage essential services in one place.
- 🔒 Privacy-First: Fully self-hosted for total control over your data.
- 🔄 Efficient Updates: Watchtower ensures your containers are always fresh.