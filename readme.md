# HashiCorp Vault on Azure Kubernetes Service

This repository contains the Kubernetes manifest files and configurations for deploying HashiCorp Vault on Azure Kubernetes Service (AKS). Follow the step-by-step guide in the [Medium article](https://medium.com/@antorobin/step-by-step-deployment-of-hashicorp-vault-on-aks-a60b2314d070) for detailed instructions on setting up Vault, persistent storage, and other necessary resources.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)

## Prerequisites

Before you begin, ensure you have the following:

- A Kubernetes cluster on AKS
- `kubectl` installed
- Azure CLI

## Installation

### Step 1: Set up the Azure Storage Account  
Follow the instructions in the [Azure Documentation](https://docs.microsoft.com) to create a Storage Account.

### Step 2: Apply the Kubernetes Manifests  
Clone this repository and apply the Kubernetes YAML files using:

```bash
kubectl apply -f kubernetes-manifests/
