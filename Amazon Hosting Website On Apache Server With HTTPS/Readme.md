# 🌐 AWS DNS Services Project 2

This project demonstrates how to host a static website using Apache on an Amazon EC2 instance with full DNS configuration using Route 53 and SSL encryption via Let’s Encrypt (Certbot).

---

## 📄 Contents

1. [Project Overview](#project-overview)  
2. [Spin Up EC2 Instance](#spin-up-ec2-instance)  
3. [Connect & Install Apache](#connect--install-apache)  
4. [Transfer Website Files](#transfer-website-files)  
5. [Configure Route53](#configure-route53)  
6. [Set Up Virtual Host](#set-up-virtual-host)  
7. [Install SSL & HTTPS](#install-ssl--https)  
8. [Auto-Renew SSL Certificates](#auto-renew-ssl-certificates)  
9. [Verify Everything Works](#verify-everything-works)  
10. [Learnings](#learnings)  

---

## 📌 Project Overview

- **Web Server**: Apache (httpd)
- **OS**: Amazon Linux 2
- **Domain**: `cloudbyms.click`
- **SSL**: Let's Encrypt with Certbot
- **DNS Provider**: AWS Route 53

---

## 🚀 Spin Up EC2 Instance

1. Go to AWS Console > EC2 > Instances
2. Launch an instance using Amazon Linux 2
3. Assign a public IP and security group
4. Open ports 22 (SSH), 80 (HTTP), and 443 (HTTPS)

---

## 🔐 Connect & Install Apache

```bash
ssh -i "key.pem" ec2-user@<Your-EC2-Public-IP>
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
