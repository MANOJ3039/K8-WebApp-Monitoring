# Kubernetes Monitoring with Prometheus and Grafana on Azure AKS

This repository contains the infrastructure and configuration for deploying a web application in Azure Kubernetes Service (AKS), with monitoring set up using **Prometheus** and **Grafana**.

The solution includes:

- Azure Infrastructure as Code (IaC) using Terraform to provision the AKS cluster.
- Kubernetes deployment files for Prometheus and Grafana.
- Logging and monitoring setup.
- Instructions for deploying and accessing the application.

## Prerequisites

Before you begin, ensure you have the following installed:

1. **Terraform**: A tool for provisioning and managing infrastructure as code.
   - Install it from [Terraform Downloads](https://www.terraform.io/downloads.html).

2. **Azure CLI**: Command-line tools for managing Azure resources.
   - Install it from [Azure CLI Documentation](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli).

3. **kubectl**: Command-line tool for interacting with Kubernetes clusters.
   - Install it from [Kubernetes Documentation](https://kubernetes.io/docs/tasks/tools/install-kubectl/).

4. **Docker**: To build the Docker container for your web application.
   - Install it from [Docker Documentation](https://docs.docker.com/get-docker/).

5. **Prometheus and Grafana**: Set up Kubernetes deployments for monitoring.
   - Prometheus and Grafana should be installed within your Kubernetes cluster.

## Achievements

1. **Azure AKS Cluster Setup**: Provisioned a managed Kubernetes cluster in Azure using Terraform.
   - The cluster is set up in the East US region.
   - Configured with two nodes and a `Standard_B2s` VM size.

2. **Prometheus Setup**: 
   - Prometheus is deployed to monitor the AKS cluster.
   - Custom scrape configurations are used for monitoring Kubernetes node and pod metrics.
   - Configured alerting rules for high CPU usage.

3. **Grafana Setup**: 
   - Grafana is installed for visualizing Prometheus metrics.
   - A Kubernetes monitoring dashboard is imported to display metrics like CPU, memory, and pod usage.

4. **Dockerized Web Application**:
   - A sample static web application has been containerized using Docker.
   - The application is deployed and accessible in the Kubernetes cluster.

5. **Azure Container Registry (ACR) Integration**:
   - The web application’s container image was pushed to Azure Container Registry (ACR).
   - AKS was connected to ACR to allow the cluster to pull container images.

6. **Monitoring**:
   - Prometheus monitors the AKS cluster and provides metrics for CPU, memory, and pod status.
   - Alerts are configured in Prometheus to notify on high CPU usage or other conditions.



