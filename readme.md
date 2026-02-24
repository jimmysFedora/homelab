This is a dump from my self hosted instance of my Git repository meant for employers and general viewing. As a result, things like current CI/CD pipelines won't appear until further notice.

- This homelab strives to mirror best practices found in enterprise environments. This includes everything from implementing Infrastructure as Code solutions for applications and compute instances to building CI/CD pipelines to streamline SDLC.
- Service deployment is done through GitOps controllers like FluxCD and Komodo
- At minimum, it runs 50+ containerized services across Kubernetes and Docker environments. Nearly all services deployed via are defined in declarative configurations with Helm Charts.
- For Kubernetes-based deployments the implementation of Helm Charts allow for more robust software delivery pipelines, in prod, staging, and dev environments through templates which allows for future scalability.
- By implementing strict deployment environments and process automation, it streamlines SDLC process and allows for manual human intervention at the most critical stages like pushing a new feature to production.

## Architecture
- **Orchestration**: Docker Compose + K3s (Kubernetes)
- **Automation**: FluxCD, Renovate Bot, Terraform
- **Networking**: Traefik, Tailscale, Pangolin
- **Auth**: Authentik SSO
- **Secrets Management**: Sealed Secrets

## Stack
- Multiple self hosted services ranging from simple stateless apps to complex stateful services with external databases and caching layers running on Kubernetes.
- All Docker workloads are deployed in Docker Compose
- Kubernetes workloads are a mix of Helm Charts publically available, some are written by me and raw manifests deployed via Kustomize and FluxCD
- Automated dependency management via Renovate
- GitOps-based deployments
- Infrastructure as Code with Terraform (not yet committed)


## 🖥️ Hardware
Proxmox VE is used as a T1 Hypervisor for some of my compute nodes to make better use of resources and provides a testing ground for experimenting with new software/configurations.
| System                   | Role           | CPU   | RAM   | Graphics | Disk (boot) | Disk (storage) |
|--------------------------|----------------|-------|-------|----------|-------------|----------------|
| Lenovo M720Q Tiny | Proxmox VE + OPNsense Firewall | Intel i5-9400T | 16GB DDR4 | Intel HD 630 | - | 256GB NVMe
| Lenovo M720Q Tiny | Proxmox VE + K3s Worker | Intel i5-8500T | 64GB DDR4 | Intel HD 630 | - | 960GB PM863a SSD
| Lenovo M720Q Tiny | K3s Control Plane & Worker | Intel i5-8500T | 64GB DDR4 | Intel HD 630 | - | 1TB NVMe
| Lenovo M720Q Tiny | To Be Determined | Intel i5-8400T | 32GB DDR4 | Intel HD 630 | - | 500GB SSD
| Aoostar WTR Pro | TrueNAS | Intel N150 | 32GB DDR4 | Intel Graphics | 1TB SSD | 2x 1TB NVMe & 3x 8TB HDD
| Custom Server | Proxmox VE + AI Workloads & Hyper-V | AMD Ryzen 7 3700X | 64GB DDR4 |  RTX 2060 Super | - |960GB SM863a SSD

---
### Infrastructure & Operations
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/flux-cd.png" width="30" alt="FluxCD logo"> | [FluxCD](https://fluxcd.io/) | A GitOps tool for automating Kubernetes deployments from Git repositories. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/grafana.png" width="30" alt="Grafana logo"> | [Grafana](https://grafana.com/) | A multi-platform analytics and visualization web application for monitoring data. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/prometheus.png" width="30" alt="Prometheus logo"> | [Prometheus](https://prometheus.io/) | An open-source monitoring and alerting toolkit for containers and microservices. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/traefik.png" width="30" alt="Traefik logo"> | [Traefik](https://traefik.io/) | An open-source Edge Router that makes publishing your services a fun and easy experience. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/gitea.png" width="30" alt="Gitea logo"> | [Gitea](https://gitea.io/) | A painless self-hosted Git service that is fast and easy to use. |
| <img src="https://avatars.githubusercontent.com/ml/287?s=82&v=4" width="30" alt="Renovate logo"> | [Renovate](https://www.mend.io/renovate/) | An automated dependency update tool that creates and maintains pull requests for your dependencies. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/authentik.png" width="30" alt="Authentik logo"> | [Authentik](https://goauthentik.io/) | An open-source identity and access management platform providing authentication, authorization, and single sign-on (SSO) capabilities. |

## Apps
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/adguard-home.png" width="30" alt="AdGuard Home logo"> | [AdGuard Home](https://adguard.com/adguard-home.html) | A network-wide software for blocking ads & tracking and taking control over your entire network. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/syncthing-dark.png" width="30" alt="Syncthing logo"> | [Syncthing](https://syncthing.net/) | A continuous file synchronization program that synchronizes files between two or more computers. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/termix.png" width="30" alt="Termix logo"> | [Termix](https://github.com/Termix-SSH/Termix) | A web-based server management platform with SSH terminal, tunneling, and file editing capabilities. |

#### Docker
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/beszel.png" width="30" alt="Beszel logo"> | [Beszel](https://github.com/henrygd/beszel) | A lightweight server monitoring hub with historical data and alerts. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/portainer.png" width="30" alt="Portainer logo"> | [Portainer](https://www.portainer.io/) | A powerful toolset that allows you to easily build and manage containers in Docker and Kubernetes. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/gluetun.png" width="30" alt="Gluetun logo"> | [Gluetun](https://github.com/qdm12/gluetun) | A lightweight VPN client in a Docker container with support for multiple VPN providers. |

#### Productivity & Knowledge Management
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/bytestash.png" width="30" alt="Bytestash logo"> | [Bytestash](https://github.com/jordan-dalby/ByteStash) | A code snippet storage solution written in React & node.js |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/draw-io.png" width="30" alt="draw.io logo"> | [draw.io](https://www.drawio.com/) | A free, open-source diagramming software for creating flowcharts, diagrams, and technical drawings. |
| <img src="https://avatars.githubusercontent.com/u/122929872?s=48&v=4" width="30" alt="Homepage logo"> | [Homepage](https://gethomepage.dev/) | A self-hosted dashboard that allows you to organize your web services and bookmarks in a clean, customizable interface. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/it-tools.png" width="30" alt="IT-Tools logo"> | [IT-Tools](https://it-tools.tech/) | A collection of handy online tools for developers and people working in IT. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/komodo.png" width="30" alt="Komodo logo"> | [Komodo](https://komodo.io/) | A tool for managing and deploying infrastructure and applications via a unified interface. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/linkwarden.png" width="30" alt="Linkwarden logo"> | [Linkwarden](https://linkwarden.app/) | A self-hosted collaborative bookmark manager to collect, organize and preserve webpages. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/open-webui.png" width="30" alt="Open WebUI logo"> | [Open WebUI](https://openwebui.com/) | A user-friendly, self-hosted WebUI for LLMs like Ollama and OpenAI. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/paperless-ngx.png" width="30" alt="Paperless-ngx logo"> | [Paperless-ngx](https://docs.paperless-ngx.com/) | A community-supported document management system that transforms your physical documents into a searchable online archive. |

#### Media & Content
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/immich.png" width="30" alt="Immich logo"> | [Immich](https://immich.app/) | A high-performance self-hosted photo and video backup solution with features like automatic backup, timeline view, and ML-powered search. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/jellyfin.png" width="30" alt="Jellyfin logo"> | [Jellyfin](https://jellyfin.org/) | The Free Software Media System that puts you in control of managing and streaming your media. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/metube.png" width="30" alt="MeTube logo"> | [MeTube](https://github.com/alexta69/metube) | A web GUI for youtube-dl / yt-dlp, allowing you to easily download videos from various platforms. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/navidrome.png" width="30" alt="Navidrome logo"> | [Navidrome](https://www.navidrome.org/) | A modern self-hosted music server and streamer that gives you freedom to listen to your music collection anywhere. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/prowlarr.png" width="30" alt="Prowlarr logo"> | [Prowlarr](https://prowlarr.com/) | An indexer manager/proxy built on the popular Arr .net/react stack. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/radarr.png" width="30" alt="Radarr logo"> | [Radarr](https://radarr.video/) | A movie collection manager for Usenet and BitTorrent users. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/sonarr.png" width="30" alt="Sonarr logo"> | [Sonarr](https://sonarr.tv/) | A TV series management tool which will watch RSS feeds for new episodes of your favorite shows. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/qbittorrent.png" width="30" alt="qBittorrent logo"> | [qBittorrent](https://www.qbittorrent.org/) | An open-source software alternative to µTorrent for downloading files via BitTorrent. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/wizarr.png" width="30" alt="Wizarr logo"> | [Wizarr](https://wizarr.dev/) | An automatic user invitation system for Jellyfin and Plex. |

#### Lifestyle or Personal
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/actual-budget.png" width="30" alt="Actual Budget logo"> | [Actual Budget](https://actualbudget.org/) | A local-first, open-source personal finance tool that helps you manage your money and track spending. |
| <img src="https://cdn2.steamgriddb.com/icon/10903e7bf25d8788d2fa8409bc964e18/32/256x256.png" width="30" alt="ATS logo"> | American Truck Simulator | A dedicated server for hauling freight across the United States with friends. |
| <img src="https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/discord.png" width="30" alt="Discord logo"> | Custom Discord Bot | A bot written in Python for picking a random video game. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/karakeep.png" width="30" alt="Karakeep logo"> | [Karakeep](https://github.com/kara-keep/karakeep) | A lightweight personal bookmarking and link-keeping tool. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/lubelogger.png" width="30" alt="Lubelogger logo"> | [Lubelogger](https://lubelogger.com/) | A self-hosted vehicle maintenance and fuel tracking application. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/minecraft.png" width="30" alt="Minecraft logo"> | Minecraft | A Minecraft server for building and exploring with friends. |
