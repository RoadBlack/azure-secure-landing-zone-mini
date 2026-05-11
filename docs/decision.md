# Technical Decisions

## Why Azure?

I chose Azure because I am learning Azure fundamentals and want to connect cloud administration knowledge with hands-on DevSecOps engineering.

## Why Terraform?

Terraform is widely used for Infrastructure as Code and is commonly required in DevOps, DevSecOps and Cloud Security roles.

## Authentication limitation

My local Azure CLI authentication is restricted by organization policy, so authenticated Terraform operations will be tested through Azure Cloud Shell.

# Security Controls
## Network segmentation

### Resources

- Azure Virtual Network
- Subnet
- Network Security Group

### Risk addressed

Unrestricted network exposure and lack of segmentation.

### Security decision
* todo 
Network rules should follow least privilege. Inbound access should be restricted to required sources and ports only. 


### Validation

Network configuration is reviewed through Terraform plan and IaC security scanning.

## Secure storage configuration
### Risk addressed

Accidental public exposure of cloud storage.

### Controls

- Public access disabled
- HTTPS traffic only
- Minimum TLS version configured
- No sensitive data stored in the lab environment

### Validation

IaC scanning should detect insecure storage settings if public access is enabled.