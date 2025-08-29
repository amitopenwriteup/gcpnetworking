
# GCP Infrastructure as Code (IaC) with Terraform

This repository contains **Terraform configurations** for provisioning and managing Google Cloud Platform (GCP) resources. It follows Infrastructure as Code (IaC) principles to ensure consistent, repeatable, and automated deployments.

---

## 📂 Repository Structure

```
.
├── backend.tf             # Remote backend configuration (Terraform state storage)
├── provider.tf            # GCP provider configuration
├── vpc.tf                 # VPC network configuration
├── sg.tf                  # Firewall / Security group rules
├── instance.tf            # Compute Engine VM instances
├── output.tf              # Outputs (IP, VPC ID, etc.)
├── keys/                  # SSH keys for VM access
├── .gitignore             # Ignored files (state, sensitive data, etc.)
├── .terraform.lock.hcl    # Terraform dependency lock file
└── Lab GCP IAC remote backend.docx   # Lab notes/documentation
```

---

## 🚀 Features

* GCP **VPC creation** with custom subnets
* **Firewall rules** for secure inbound/outbound access
* **Compute Engine instances** with SSH access
* Remote **Terraform state management** (via backend.tf)
* Clear **outputs** (public IP, VPC ID, etc.) for easy reference

---

## 🔧 Prerequisites

* [Terraform](https://www.terraform.io/downloads.html) ≥ 1.3.x
* [Google Cloud SDK](https://cloud.google.com/sdk) installed & authenticated
* A GCP project with **billing enabled**
* Service Account with required IAM roles (Compute Admin, Network Admin, Storage Admin)
* Service Account key JSON

---

## ⚙️ Setup & Usage

### 1. Clone the Repository

```bash
git clone https://github.com/amitopenwriteup/terraform-gcp-iac.git
cd terraform-gcp-iac
```

### 2. Configure Variables

Update project ID, region, and credentials inside `provider.tf` or via environment variables:

```bash
export GOOGLE_CLOUD_PROJECT="your-project-id"
export GOOGLE_APPLICATION_CREDENTIALS="path/to/service-account.json"
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Validate & Plan

```bash
terraform validate
terraform plan
```

### 5. Apply Changes

```bash
terraform apply -auto-approve
```

### 6. Destroy Infrastructure

```bash
terraform destroy -auto-approve
```

---

## 📦 Outputs

After deployment, Terraform will provide:

* **VPC ID**
* **Subnet CIDRs**
* **Public IP of VM**
* **Firewall rules applied**

---

## 📘 Lab Notes

Refer to **Lab GCP IAC remote backend.docx** for detailed lab instructions, including backend setup for remote Terraform state.

---

## 🛡️ Security Best Practices

* Never commit service account keys (`*.json`)
* Use **Terraform Cloud** or **GCS remote backend** for state files
* Store sensitive values in environment variables or secret managers

---

## 📄 License

This project is for **educational and lab purposes**.

