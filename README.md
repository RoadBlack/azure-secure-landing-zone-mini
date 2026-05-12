# Azure Secure Landing Zone Mini

This project demonstrates how to build a small secure Azure environment using Terraform, GitHub Actions and automated Infrastructure as Code security scanning.

The goal is to practice cloud security, Infrastructure as Code, CI/CD validation and DevSecOps controls for Azure infrastructure.

## Local authentication limitation

My local Azure CLI authentication was restricted by organization policy, so I used Azure Cloud Shell for authenticated Terraform testing.

This reflects a realistic enterprise constraint where local developer authentication may be limited by Conditional Access or tenant policies.