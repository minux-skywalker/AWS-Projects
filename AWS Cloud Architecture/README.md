
# 🏗️ AWS Cloud Architecture Project

This project is a comprehensive walkthrough of building a secure, scalable, and modular AWS web infrastructure from scratch. The goal was to simulate a real-world deployment with best practices in networking, access control, compute, and storage using AWS services.

---

## 📌 Project Goals

- Build a secure and structured cloud architecture using AWS core services.
- Deploy a web application hosted on an EC2 instance in a **private subnet**.
- Enable internet access for the instance using a **NAT Gateway**.
- Configure an **Application Load Balancer** in the **public subnet** to route traffic to the backend server.
- Store and serve assets from **Amazon S3**.
- Enable secure management using **Session Manager**, without exposing any public IPs.
- Apply real-world **CIDR subnetting** logic for network design.

---

## 🌐 Architecture Diagram (Logical)

```
User
  |
  v
Application Load Balancer (Public Subnet)
  |
  v
EC2 Web Server (Private Subnet, No Public IP)
  |
  v
NAT Gateway (Public Subnet)
  |
  v
Internet
  ↘
Amazon S3 (Object Storage)
```

---

## ⚙️ Key AWS Services Used

### 1. **Amazon VPC**
- Created a logically isolated network using VPC.
- Designed CIDR `/23` block and divided into:
  - `/24` → Management subnet
  - `/25` → Web subnet
  - `/26` → App subnet
- Implemented custom **route tables** and **subnet associations**.

### 2. **Subnetting and CIDR Logic**
- Calculated and applied proper subnetting using:
  - /23 (512 IPs)
  - /24 (256 IPs)
  - /25 (128 IPs)
  - /26 (64 IPs)
- Ensured each subnet is aligned to business units: mgmt, web, app.

### 3. **Internet Gateway & NAT Gateway**
- Attached **Internet Gateway** to the VPC for public access.
- Created **Elastic IP** and associated with **NAT Gateway**.
- NAT Gateway allows **private subnet EC2** to reach the internet securely.

### 4. **Amazon EC2**
- Deployed **Amazon Linux 2023 AMI** in private subnet.
- Installed **Apache**, **PHP**, **AWS SDK for PHP**.
- Connected to **Amazon S3** to serve assets dynamically.

---

## 🔐 Secure Access with Session Manager

### What is Session Manager?
- Part of AWS Systems Manager.
- Allows browser-based terminal access to EC2 instances **without public IP or SSH**.

### Key Benefits:
- No need to open port 22 (SSH) — more secure.
- No need to manage key pairs.
- Fully auditable session logs.

### Command Used Inside Session Manager:
```bash
echo -n 'Private IPv4 Address: ' && ifconfig enX0 | grep -i mask | awk '{print $2}' | cut -f2 -d: && echo -n 'Public IPv4 Address: ' && curl checkip.amazonaws.com
```

> 🔍 Output shows private IP of the instance and public IP of the **NAT Gateway** — confirming internet access via NAT.

---

## 🌐 Application Load Balancer (ALB)

- Type: **Application (Layer 7)**
- Scheme: **Internet-facing**
- Security Group: Allows HTTP (port 80) from anywhere.
- Registered target: Web Server in **private subnet**.
- Target group: Health checks and routing to web instance.

### ALB Setup Summary:
- Created ALB with correct **availability zones** and **public subnet mapping**.
- Removed default SG and attached custom **load balancer SG**.
- Created target group, registered EC2, and verified health check.
- Once healthy, accessed the site via ALB’s **DNS name**.

---

## 📂 Amazon S3 Integration

- Created bucket: `awsbucketforvpc`
- Uploaded HTML/PHP files.
- EC2 script connected to S3 bucket using:
  - IAM role: `AmazonS3ReadOnlyAccess`
- Displayed S3 assets on the website successfully.

---

## 🔒 IAM Roles & Policies

- Attached **AmazonSSMManagedInstanceCore** to enable Session Manager.
- Later added **AmazonS3ReadOnlyAccess** to the same EC2 role.
- Followed **least privilege principle** by attaching only necessary permissions.

---

## 🧠 Learnings Recap

### ✅ What I Learned

- Designed custom VPC, subnetting strategies, and routing logic.
- Understood NAT vs IGW, stateful vs stateless behavior.
- Used Session Manager to securely manage EC2 without SSH.
- Attached and tested IAM roles securely for S3 access.
- Built scalable and secure architecture with ALB, EC2, and S3.

### 🛠 Skills Applied

- CIDR Planning
- Route Table Configuration
- Security Groups vs NACLs
- Load Balancer Setup
- IAM Role Management
- Web App Deployment via User Data
- Troubleshooting permissions and health checks

---

## ✅ Verification Steps

- ✅ ALB status = `Active`
- ✅ Target Group = `Healthy`
- ✅ Website loads via `http://<ALB-DNS-Name>`
- ✅ EC2 shows S3 assets
- ✅ Instance access via Session Manager

> ⚠️ Note: Use **http://** prefix in the browser, as **https://** will fail (no SSL configured).

---

## 📉 Limitations & Next Steps

Current setup has **single points of failure**:
- One EC2 instance
- One NAT Gateway

### Future Enhancements:
- EC2 **Auto Scaling**
- Multiple NAT Gateways (HA)
- HTTPS via **AWS ACM**
- CloudFront CDN
- Infrastructure as Code (Terraform / CloudFormation)
- Containers with ECS/EKS

---

## 💡 Final Thoughts

This project helped me build a complete AWS environment from scratch, using best practices in security, networking, and resource provisioning. It’s a solid foundation for more advanced architectures and cloud-native solutions.

---

## 🙏 Acknowledgements

A kind thank you to the **AWS team** for their fantastic tutorials and resources.

**Reference:** [https://aws.amazon.com/tutorials/](https://aws.amazon.com/tutorials/)

---
