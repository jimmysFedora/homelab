# Welcome to my Home(lab) 🏡

<https://www.mistyfumes.dev/>

## Introduction

Here you will find all the documentation of my homelab.

This repository is where I do all my testing, tinkering, and all-in-all a space for me to play, and work! It does have a serious note as well, since I will be working with my own personal data and require me to think about the whole process of deployment and maintenance!

## 🖥️ Hardware
Proxmox VE is used as a T1 Hypervisor for some of my compute nodes to make better use of resources and provides a testing ground for experimenting with new software/configurations.
| System                   | Role           | CPU   | RAM   | Graphics | Disk (boot) | Disk (storage) |
|--------------------------|----------------|-------|-------|----------|-------------|----------------|
| Lenovo M720Q Tiny | Proxmox VE + OPNsense Firewall | Intel i5-9400T | 16GB DDR4 | Intel HD 630 | - | 256GB NVMe
| Lenovo M720Q Tiny | Proxmox VE + K3s Worker | Intel i5-8500T | 64GB DDR4 | Intel HD 630 | - | 960GB PM863a SSD
| Lenovo M720Q Tiny | K3s Control Plane & Worker | Intel i5-8500T | 64GB DDR4 | Intel HD 630 | - | 1TB NVMe
| Aoostar WTR Pro | TrueNAS | Intel N150 | 32GB DDR4 | Intel Graphics | 1TB SSD | 2x 1TB NVMe & 3x 8TB HDD
| Custom Server | Proxmox VE + AI Workloads | AMD Ryzen 7 3700X | 64GB DDR4 |  RTX 2060 Super | - |960GB SM863a SSD

---
### Infrastructure & Operations
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/flux-cd.png" width="30" alt="FluxCD logo"> | [FluxCD](https://fluxcd.io/) | A GitOps tool for automating Kubernetes deployments from Git repositories. |
| <img src="https://avatars.githubusercontent.com/u/34656521?s=48&v=4" width="30" alt="Sealed Secrets logo"> | [Sealed Secrets](https://github.com/bitnami-labs/sealed-secrets) | A Kubernetes controller and tool for "one-way" encrypted Secrets that can be safely stored in Git. |
| <img src="https://avatars.githubusercontent.com/u/73407405?s=48&v=4" width="30" alt="democratic-csi logo"> | [democratic-csi](https://github.com/democratic-csi/democratic-csi) | A CSI driver for Kubernetes that provides dynamic provisioning of persistent volumes backed by TrueNAS via iSCSI and NFS. |
| <img src="https://avatars.githubusercontent.com/u/17888862?s=48&v=4$0" width="30" alt="Intel Device Plugins logo"> | [Intel Device Plug-ins](https://github.com/intel/intel-device-plugins-for-kubernetes) | A framework for enabling Intel hardware resources (like QuickSync GPUs) within Kubernetes clusters for transcoding and AI. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/grafana.png" width="30" alt="Grafana logo"> | [Grafana](https://grafana.com/) | A multi-platform analytics and visualization web application for monitoring data. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/prometheus.png" width="30" alt="Prometheus logo"> | [Prometheus](https://prometheus.io/) | An open-source monitoring and alerting toolkit for containers and microservices. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/traefik.png" width="30" alt="Traefik logo"> | [Traefik](https://traefik.io/) | An open-source Edge Router that makes publishing your services a fun and easy experience. |
| <img src="https://avatars.githubusercontent.com/ml/287?s=82&v=4" width="30" alt="Renovate logo"> | [Renovate](https://www.mend.io/renovate/) | An automated dependency update tool that creates and maintains pull requests for your dependencies. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/authentik.png" width="30" alt="Authentik logo"> | [Authentik](https://goauthentik.io/) | An open-source identity and access management platform providing authentication, authorization, and single sign-on (SSO) capabilities. |
| <img src="https://avatars.githubusercontent.com/u/100373852?s=200&v=4" width="30" alt="CloudNativePG logo"> | [CloudNativePG](https://cloudnative-pg.io/) | A Kubernetes operator for deploying and managing PostgreSQL clusters. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/cert-manager.png" width="30" alt="cert-manager logo"> | [cert-manager](https://cert-manager.io/) | A Kubernetes-native certificate controller that automates the management and issuance of TLS certificates from various issuing sources. |


### Platform & Networking
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/truenas.png" width="30" alt="TrueNAS logo"> | [TrueNAS](https://www.truenas.com/) | An open-source storage operating system built on ZFS, providing network-attached storage with enterprise-grade data protection. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/ansible.png" width="30" alt="Ansible logo"> | [Ansible](https://www.ansible.com/) | An open-source automation tool for configuration management, application deployment, and node provisioning. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/terraform.png" width="30" alt="Terraform logo"> | [Terraform](https://www.terraform.io/) | An infrastructure as code tool that lets you build, change, and version resources safely and efficiently. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/tailscale.png" width="30" alt="Tailscale logo"> | [Tailscale](https://tailscale.com/) | A zero-config VPN that creates a secure mesh network (tailnet) between your devices and nodes. |
| <img src="https://avatars.githubusercontent.com/u/183037913?s=48&v=4" width="30" alt="Pangolin logo"> | [Pangolin](https://github.com/fosrl/pangolin) | An identity-aware reverse proxy and Zero-Trust networking platform built on WireGuard for secure remote access. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/gitea.png" width="30" alt="Gitea logo"> | [Gitea](https://gitea.io/) | A painless self-hosted Git service that is fast and easy to use. |

## Administration
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/beszel.png" width="30" alt="Beszel logo"> | [Beszel](https://github.com/henrygd/beszel) | A lightweight server monitoring hub with historical data and alerts. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/komodo.png" width="30" alt="Komodo logo"> | [Komodo](https://komodo.io/) | A tool for managing and deploying infrastructure and applications via a unified interface. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/portainer.png" width="30" alt="Portainer logo"> | [Portainer](https://www.portainer.io/) | A powerful toolset that allows you to easily build and manage containers in Docker and Kubernetes. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/syncthing-dark.png" width="30" alt="Syncthing logo"> | [Syncthing](https://syncthing.net/) | A continuous file synchronization program that synchronizes files between two or more computers. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/technitium.png" width="30" alt="Technitium logo"> | [Technitium](https://technitium.com/dns/) | An open source authoritative as well as recursive DNS server that can be used for self hosting a DNS server for privacy & security. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/termix.png" width="30" alt="Termix logo"> | [Termix](https://github.com/Termix-SSH/Termix) | A web-based server management platform with SSH terminal, tunneling, and file editing capabilities. |

### End User Applications

#### Productivity & Knowledge Management
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/bytestash.png" width="30" alt="Bytestash logo"> | [Bytestash](https://github.com/jordan-dalby/ByteStash) | A code snippet storage solution written in React & node.js |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/draw-io.png" width="30" alt="draw.io logo"> | [draw.io](https://www.drawio.com/) | A free, open-source diagramming software for creating flowcharts, diagrams, and technical drawings. |
| <img src="https://avatars.githubusercontent.com/u/122929872?s=48&v=4" width="30" alt="Homepage logo"> | [Homepage](https://gethomepage.dev/) | A self-hosted dashboard that allows you to organize your web services and bookmarks in a clean, customizable interface. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/it-tools.png" width="30" alt="IT-Tools logo"> | [IT-Tools](https://it-tools.tech/) | A collection of handy online tools for developers and people working in IT. |
| <img src="https://avatars.githubusercontent.com/u/192649426?s=48&v=4$0" width="30" alt="Kaneo logo"> | [Kaneo](https://github.com/usekaneo/kaneo) | All you need. Nothing you don't. Open source project management that works for you, not against you. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/linkwarden.png" width="30" alt="Linkwarden logo"> | [Linkwarden](https://linkwarden.app/) | A self-hosted collaborative bookmark manager to collect, organize and preserve webpages. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/open-webui.png" width="30" alt="Open WebUI logo"> | [Open WebUI](https://openwebui.com/) | A user-friendly, self-hosted WebUI for LLMs like Ollama and OpenAI. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/paperless-ngx.png" width="30" alt="Paperless-ngx logo"> | [Paperless-ngx](https://docs.paperless-ngx.com/) | A community-supported document management system that transforms your physical documents into a searchable online archive. |

#### Media & Content
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/immich.png" width="30" alt="Immich logo"> | [Immich](https://immich.app/) | A high-performance self-hosted photo and video backup solution with features like automatic backup, timeline view, and ML-powered search. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/jellyfin.png" width="30" alt="Jellyfin logo"> | [Jellyfin](https://jellyfin.org/) | The Free Software Media System that puts you in control of managing and streaming your media. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/navidrome.png" width="30" alt="Navidrome logo"> | [Navidrome](https://www.navidrome.org/) | A modern self-hosted music server and streamer that gives you freedom to listen to your music collection anywhere. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/wizarr.png" width="30" alt="Wizarr logo"> | [Wizarr](https://wizarr.dev/) | An automatic user invitation system for Jellyfin and Plex. |

#### Lifestyle or Personal
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/actual-budget.png" width="30" alt="Actual Budget logo"> | [Actual Budget](https://actualbudget.org/) | A local-first, open-source personal finance tool that helps you manage your money and track spending. |
| <img src="https://cdn2.steamgriddb.com/icon/10903e7bf25d8788d2fa8409bc964e18/32/256x256.png" width="30" alt="ATS logo"> | [American Truck Simulator](https://github.com/LsHallo/ets2-dedicated-convoy-server) | A dedicated server for hauling freight across the United States with friends. |
| <img src="https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/discord.png" width="30" alt="Discord logo"> | [Custom Discord Bot](https://github.com/jimmysFedora/random-game-discord-bot) | A bot written in Python for picking a random video game via a simple API request. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/karakeep.png" width="30" alt="Karakeep logo"> | [Karakeep](https://github.com/kara-keep/karakeep) | A lightweight personal bookmarking and link-keeping tool. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/lubelogger.png" width="30" alt="Lubelogger logo"> | [Lubelogger](https://lubelogger.com/) | A self-hosted vehicle maintenance and fuel tracking application. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/mealie.png" width="30" alt="Mealie logo"> | [Mealie](https://mealie.io/) | A self-hosted recipe manager and meal planner with a REST API backend and a reactive frontend. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/minecraft.png" width="30" alt="Minecraft logo"> | [Minecraft](https://github.com/itzg/docker-minecraft-server) | A Minecraft server for building and exploring with friends. |

## Next Steps

- [ ] Convert remaining PVs and PVCs to use CSI driver
- [ ] Transfer remaining Docker services to cluster
- [ ] Implement monitoring microservices via Node Exporters