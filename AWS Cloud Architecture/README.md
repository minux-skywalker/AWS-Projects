![VPC and ALB](https://github.com/minux-skywalker/AWS-Projects/blob/1cf34bdaf885000dbf43d54c3b060b85c499fd38/AWS%20Assets/VPC%20and%20ALB.png)
# 🚀 AWS Cloud Architecture Project: Secure & Scalable Infrastructure

This project demonstrates a complete end-to-end AWS infrastructure setup designed with real-world architectural logic. It covers VPC, Subnets, EC2, ALB, S3, IAM, and AWS Systems Manager Session Manager.

---

## 🧱 Infrastructure Overview

We built a secure and scalable AWS infrastructure using the following core services:

- **Amazon VPC** 🌐
- **Public and Private Subnets** 🧩
- **Internet Gateway & NAT Gateway** 🌍➡️🔐
- **Amazon EC2 (Web Server)** 💻
- **IAM Roles & Policies** 🛡️
- **AWS Systems Manager Session Manager** 🖥️🔒
- **Application Load Balancer (ALB)** 📶⚖️
- **Amazon S3 for storage** 📦☁️

---

## 📌 Key Steps and Concepts

### 🔹 VPC & Subnetting

- Created a /23 VPC range.
- Divided into multiple subnets using /24, /25, and /26 CIDR blocks.
- Used **2 Availability Zones (ap-south-1a and ap-south-1b)** for high availability.

### 🔹 Internet Gateway (IGW) and NAT Gateway

- IGW attached to the VPC for internet access to **public subnets**.
- NAT Gateway placed in public subnet to provide **outbound internet access to private subnets**.
- Used Elastic IP for NAT Gateway.

### 🔹 EC2 Instance

- Launched EC2 in a **private subnet**, ensuring it had only **private IP**.
- Skipped SSH Key Pair intentionally for security.
- Connected using **Session Manager** (no need for public IP or SSH).

### 🔹 AWS Systems Manager - Session Manager

- Enabled **secure browser-based access** to EC2 in private subnet.
- No public IP required.
- Ran diagnostic command:

```bash
echo -n 'Private IPv4 Address: ' && ifconfig enX0 | grep -i mask | awk '{print $2}' | cut -f2 -d: && echo -n 'Public IPv4 Address: ' && curl checkip.amazonaws.com
```

- Observed that NAT Gateway's IP appears as the public IP (via curl).

### 🔹 Application Load Balancer (ALB)

- Created **Internet-facing ALB**.
- Attached **public subnets**, selected correct **Security Group**.
- Registered EC2 instance in a **Target Group**.
- Configured **HTTP listeners** and **health checks**.
- Verified website through ALB DNS name (manual http:// input required).

### 🔹 Amazon S3 Integration

- Created S3 bucket `awsbucketforvpc`.
- Uploaded test files.
- Switched to EC2 instance to access files.
- Initially access failed due to **missing IAM permissions**.
- Added **AmazonS3ReadOnlyAccess** policy to instance role.
- Successfully retrieved S3 files via web interface.

---

## 📚 Learnings

### ✅ AWS Services Used and How They Were Applied:

1. **Amazon VPC**
   - Logical isolation, routing, subnetting, availability zones.

2. **Subnetting & CIDR**
   - CIDR: /24, /25, /26
   - Efficient subnet planning for real-world enterprise structure.

3. **Internet Gateway (IGW)**
   - Internet access for public subnet resources.

4. **NAT Gateway**
   - Outbound access for private subnet resources.

5. **IAM**
   - Fine-grained access using roles & policies.
   - Used AmazonSSMManagedInstanceCore and AmazonS3ReadOnlyAccess.

6. **Amazon EC2**
   - Installed Apache, PHP, AWS SDK, deployed web app.

7. **AWS Systems Manager**
   - Session Manager enabled secure shell access to EC2 without SSH.

8. **Security Groups**
   - Principle of least privilege.
   - ALB SG: Allows HTTP from anywhere.
   - Web Server SG: Allows traffic only from ALB.

9. **Application Load Balancer**
   - Layer 7 routing (HTTP), health checks, target groups.

10. **Amazon S3**
    - Web asset storage and retrieval from EC2.

---

## 🧠 Skills Gained

- ✅ VPC/Subnetting logic & CIDR mastery
- ✅ EC2 configuration for private networking
- ✅ Secure access via Session Manager (no SSH)
- ✅ IAM Role/Policy structuring
- ✅ Load balancing & routing concepts
- ✅ Web deployment pipeline
- ✅ S3 integration and policy troubleshooting

---

## ⚠️ Notes on Architecture

- **Single Points of Failure**:
  - One EC2 instance
  - One NAT Gateway

🔧 Consider using **Auto Scaling Groups**, **Multi-AZ NAT Gateways**, **CloudFront**, and **SSL (ACM)** for production readiness.

---

## ✅ Final Output

- Functional web app accessible via ALB's public DNS.
- S3 file access via EC2.
- Completely secure networking with no open ports to private subnet.

---

## 🙏 Credits

Thanks to the AWS team for their in-depth tutorials.
📚 [Reference](https://aws.amazon.com/tutorials/)
