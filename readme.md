This is a dump from my self hosted instance of Gitea meant for employers. As a result, things like current CI/CD pipelines in Actions tab won't work without significant modification.

This production-esque homelab runs 50+ containerized services across Kubernetes and Docker on Proxmox VE as a hypervisor. It is usable with automated GitOps workflows and the addition of Helm Charts allow for future customization when multi-environments like prod, staging, and dev namespaces are properly implemented allowing for more stricter deployment environments instead of trunk-based commits to main branch.

## Architecture
- **Orchestration**: Docker Compose + K3s (Kubernetes)
- **Automation**: FluxCD, Renovate Bot, Terraform
- **Networking**: Traefik, Tailscale, Pangolin
- **Auth**: Authentik SSO

## Stack
- Multiple self hosted services ranging from simple stateless apps to complex stateful services with external databases and caching layers running on Kubernetes.
- All Docker workloads are deployed in Docker Compose
- Kubernetes workloads are a mix of Helm Charts publically available, some are written by me and raw manifests deployed via Kustomize and FluxCD
- Automated dependency management via Renovate
- GitOps-based deployments
- Infrastructure as Code with Terraform (not yet committed)
