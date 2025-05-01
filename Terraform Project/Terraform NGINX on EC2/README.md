
# 🏗️ Terraform AWS EC2 Infrastructure

![Ghibli-style AWS Terraform Architecture](https://github.com/minux-skywalker/AWS-Projects/blob/a2ce994e59932744bb4358884bd62144e1941111/AWS%20Assets/Terraform%20VPC%20EC2.png)

## 🚀 Project Overview

This Terraform project automates the provisioning of a secure, fully functional AWS infrastructure environment. It includes a custom VPC, public subnet, security group, and an EC2 instance — ideal for hosting web apps or testing environments.

---

## 🌍 AWS Services Used

- **Amazon VPC**: Custom VPC, public subnet, routing, and IGW.
- **Amazon EC2**: Provisioned a t2.micro Amazon Linux instance.
- **Security Groups**: Inbound rules for SSH (port 22) and HTTP (port 80).
- **Elastic IP**: Associates a public IP to the EC2 instance.
- **Terraform**: Infrastructure as Code (IaC) to manage the full lifecycle.

---

## 🗂️ File Structure

```bash
.
├── main.tf               # Main module entry point
├── providers.tf          # AWS provider definition
├── vpc.tf                # VPC, subnets, and networking
├── security-group.tf     # Security group rules
├── ec2.tf                # EC2 instance provisioning
├── outputs.tf            # Output variables (e.g., public IP)
├── terraform.tfstate*    # Terraform state files (generated)
└── .terraform.lock.hcl   # Provider dependency lock file
```

---

## 🧪 How to Use

1. **Initialize Terraform**
   ```bash
   terraform init
   ```

2. **Validate Configuration**
   ```bash
   terraform validate
   ```

3. **Plan Infrastructure**
   ```bash
   terraform plan
   ```

4. **Apply Configuration**
   ```bash
   terraform apply
   ```

5. **Destroy Infrastructure**
   ```bash
   terraform destroy
   ```

---

## 🐳 Docker (Optional)

If you containerized your Terraform environment using Docker:

### Example Docker Commands Used:

```bash
# Build Docker image
docker build -t terraform-aws .

# Run Terraform inside a container
docker run -it --rm \
  -v $(pwd):/workspace \
  -w /workspace \
  hashicorp/terraform:latest init

docker run -it --rm \
  -v $(pwd):/workspace \
  -w /workspace \
  hashicorp/terraform:latest apply
```

---

## 📦 Outputs

- **Public IP** of EC2
- **Public DNS** of EC2

You can SSH into the EC2 using:
```bash
ssh -i your-key.pem ec2-user@<public-ip>
```

---

## 🎨 Architecture Diagram

> Ghibli-style architecture diagram will be added below.

![Ghibli-style AWS Terraform Architecture]()

---

## ✨ Author

**Mihir Sanghrajka**  
DevOps & Cloud Engineer | AWS Certified | Terraform Enthusiast  
🔗 [LinkedIn](https://github.com/minux-skywalker/AWS-Projects/blob/5a67fbe8ea8cc115372922cfa921d08be6b509c5/AWS%20Assets/Terraform%20Diagram%20ARCH.png)

---

## 📜 License

This project is licensed under the MIT License.

---

☁️ Made by Mihir Sanghrajka
