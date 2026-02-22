This is a dump from my self hosted instance of my Git repository meant for employers and general viewing. As a result, things like current CI/CD pipelines in Actions tab won't work without significant modification.

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

| System                   | Role           | CPU   | RAM   | Graphics | Disk (boot) | Disk (storage) |
|--------------------------|----------------|-------|-------|----------|-------------|----------------|
| Lenovo M720Q Tiny | OPNsense Firewall | Intel i5-9400T | 16GB DDR4 | Intel HD 630 | - | 256GB NVMe
| Lenovo M720Q Tiny | Proxmox VE + K3s Worker | Intel i5-8500T | 64GB DDR4 | Intel HD 630 | - | 960GB PM863a SSD
| Lenovo M720Q Tiny | K3s Control Plane & Worker | Intel i5-8500T | 64GB DDR4 | Intel HD 630 | - | 1TB NVMe
| Lenovo M720Q Tiny | To Be Determined | Intel i5-8400T | 32GB DDR4 | Intel HD 630 | - | 500GB SSD
| Aoostar WTR Pro | TrueNAS | Intel N150 | 32GB DDR4 | Intel Graphics | 1TB SSD | 2x 1TB NVMe & 3x 8TB HDD
| Custom Server | AI Workloads & Hyper-V | AMD Ryzen 7 3700X | 64GB DDR4 |  RTX 2060 Super | |960GB SM863a SSD

---

## 📂 Repository Structure

```
homelab/
├── docker/                             
│   ├── actual-budget/                  # Personal finance & budgeting
│   ├── adguard-home/                   # Network-wide DNS & ad-blocking
│   ├── american-truck-simulator/       # Game server
│   ├── arr-stack/                      # Media automation
│   ├── authentik/                      # Identity & SSO provider
│   ├── beszel/                         # Lightweight resource monitoring
│   ├── bytestash/                      # Code snippet manager
│   ├── dns-visualizer/                 # Real-time DNS traffic mapping
│   ├── gitea/                          # Self-hosted Git service
│   ├── homepage/                       # Central service dashboard
│   ├── immich/                         # AI-powered photo gallery
│   ├── it-tools/                       # Swiss-army-knife for developers
│   ├── jellyfin/                       # Media streaming server
│   ├── kaneo/                          # Project management
│   ├── karakeep/                       # AI bookmarking tool
│   ├── komodo/                         # GitOps for Docker
│   ├── linkwarden/                     # Self-hosted collaborative bookmarking
│   ├── lubelogger/                     # Vehicle maintenance tracker
│   ├── metube/                         # YouTube downloader (GUI)
│   ├── minecraft/                      # Game server
│   ├── navidrome/                      # Music streaming server
│   ├── open-webui/                     # LLM interface (Ollama/OpenAI)
│   ├── paperless-ngx/                  # Document management system
│   ├── portainer/                      # Container management GUI
│   ├── random-video-game/              # Custom Discord bot
│   ├── syncthing/                      # P2P file synchronization
│   ├── termix/                         # Web-based terminal/SSH
│   └── traefik/                        # reverse proxy
├── kubernetes/
│   ├── infrastructure/                 # Cluster Controllers & Routing
│   │   ├── cert-manager/               # contains base/ and overlays/
│   │   └── traefik/                    # Consolidated IngressRoutes (adguard, gitea, etc.)
│   ├── services/                       # Helm Charts & Kustomizations
│   │   ├── actualbudget/               # HelmRelease + values
│   │   ├── adguard/                    # Manifests (deployment, svc, ingress)
│   │   ├── authentik/                  # templates/ + helmrelease
│   │   ├── bytestash/                  # full helm chart structure
│   │   ├── drawio/                     # my-drawio/ subfolder + helmrelease
│   │   ├── homepage/                   # standard manifests
│   │   ├── immich/                     # templates/ + helmrelease
│   │   ├── it-tools/                   # my-it-tools/ + helmrelease
│   │   ├── kaneo/                      # API/Web/Postgres manifests
│   │   ├── kube-prometheus-stack/      # values.yaml
│   │   ├── metube/                     # full helm chart structure
│   │   ├── nginx/                      # simple manifests
│   │   └── termix-ssh/                 # my-termix-ssh/ + helmrelease
│   └── clusters/                       # Flux Environments
│       ├── dev/
│       ├── staging/
│       └── prod/                       
│           ├── flux-system/            
│           └── releases/               
├── scripts/                            
│   └── docker-install.sh
├── .gitignore
├── renovate.json
├── config.js                           
├── cert-manager-repository.yaml        
├── k3s.yaml
└── README.md
```
