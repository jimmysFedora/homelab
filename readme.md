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
## Apps

| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/flux-cd.png" width="30" alt="FluxCD logo"> | [FluxCD](https://fluxcd.io/) | A GitOps tool for automating Kubernetes deployments from Git repositories. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/grafana.png" width="30" alt="Grafana logo"> | [Grafana](https://grafana.com/) | A multi-platform analytics and visualization web application for monitoring data. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/prometheus.png" width="30" alt="Prometheus logo"> | [Prometheus](https://prometheus.io/) | An open-source monitoring and alerting toolkit for containers and microservices. |
| <img src="https://avatars.githubusercontent.com/ml/287?s=82&v=4" width="30" alt="Renovate logo"> | [Renovate](https://www.mend.io/renovate/) | An automated dependency update tool that creates and maintains pull requests for your dependencies. |
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/authentik.png" width="30" alt="Authentik logo"> | [Authentik](https://goauthentik.io/) | An open-source identity and access management platform providing authentication, authorization, and single sign-on (SSO) capabilities. |

#### Productivity & Knowledge Management
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://avatars.githubusercontent.com/u/122929872?s=48&v=4" width="30" alt="Homepage logo"> | [Homepage](https://gethomepage.dev/) | A self-hosted dashboard that allows you to organize your web services and bookmarks in a clean, customizable interface. |

#### Media & Content
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/immich.png" width="30" alt="Immich logo"> | [Immich](https://immich.app/) | A high-performance self-hosted photo and video backup solution with features like automatic backup, timeline view, and ML-powered search. |


#### Lifestyle or Personal
| Icon | Name | Description |
|------|------|-------------|
| <img src="https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/minecraft.png" width="30" alt="Minecraft logo"> | Minecraft | A Minecraft server for building and exploring with friends. |
