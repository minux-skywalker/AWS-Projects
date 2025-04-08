# AWS Projects Collection

![Intro Image](https://github.com/minux-skywalker/AWS-Projects/blob/d8bc948ab0bfca1db82943b2ed975996fe725ba0/AWS%20Assets/Into%20Image.png?raw=true)

Welcome to my **AWS Projects Collection**! This repository contains a series of hands-on projects demonstrating a wide range of AWS services. Each project showcases my practical understanding and implementation of different AWS features—from storage to hosting, DNS, and security. All documentation includes step-by-step guides, screenshots, learnings, and real-world use cases.

---

## 📚 Table of Contents

- [Amazon Storage Services Project](#amazon-storage-services-project)
- [AWS DNS Services Project](#aws-dns-services-project)
- [AWS DNS Services Project 2 (EC2 + Apache + HTTPS)](#aws-dns-services-project-2-ec2--apache--https)
- [How to Use This Repository](#how-to-use-this-repository)
- [Contributing](#contributing)
- [License](#license)

---

## 💾 Amazon Storage Services Project

![S3 and EFS](https://github.com/minux-skywalker/AWS-Projects/blob/55f415bea8fcbb1d0ed7009fcce641e60ab72000/AWS%20Assets/S3%20and%20EFS.png?raw=true)

This project covers hands-on experience with two core AWS storage services:
- **Amazon S3 (Simple Storage Service)**
- **Amazon EFS (Elastic File System)**

### 🔍 Highlights
- Creating and configuring S3 buckets
- Uploading and managing files in S3
- Hosting static websites using S3
- Creating and mounting EFS across multiple EC2 instances
- Configuring security groups and access control

### ✅ Learnings:
- Object vs file storage
- Permissions and IAM policies
- Resource tagging
- Real-time file sharing with EFS
- AWS cost optimization strategies

📄 [Read the full documentation](https://github.com/minux-skywalker/AWS-Projects/blob/7526a9b28755316e1800d7b9198e1867bbd895bb/Amazon%20Storage%20Service/Readme.md)

---

## 🌐 AWS DNS Services Project

![Route 53 EC2 and S3](https://github.com/minux-skywalker/AWS-Projects/blob/35e58d9826fc71266d5040b76bc7bc97b169aca6/AWS%20Assets/EC2%20Route53%20and%20S3.png)

This project demonstrates how to:
- Host a static website using **Amazon S3**
- Register a domain and configure DNS with **Amazon Route 53**
- Set up domain redirection
- Enable logging and manage access permissions

### 🧠 Key Concepts:
- Route 53 hosted zones and A/alias records
- Public access and S3 bucket policies
- Multi-bucket redirection strategy (www → root domain)
- Logging setup using an additional S3 bucket

📄 [Read the full documentation](https://github.com/minux-skywalker/AWS-Projects/blob/7526a9b28755316e1800d7b9198e1867bbd895bb/Amazon%20Route53%20DNS%20Service/Readme.md)

---

## 🔐 AWS DNS Services Project 2 (EC2 + Apache + HTTPS)

![Route 53 EC2 and Apache Server](https://github.com/minux-skywalker/AWS-Projects/blob/da942a79c6db9e310188c30e83cfafd4bc549e82/AWS%20Assets/EC2%20Linux%20Apache%20and%20Route53.png)

This advanced project sets up a full-fledged web server using:
- **Amazon EC2 (Linux)**
- **Apache (httpd)**
- **Route 53 for DNS**
- **Let's Encrypt for SSL certificates**

### 🚀 Steps Involved:
- Launch EC2 instance & install Apache
- Transfer and serve static files
- Configure virtual hosts
- Register domain and create A records in Route 53
- Install Certbot and configure SSL with auto-renewal

### ✅ Learnings:
- DNS setup and propagation with Route 53
- Apache virtual host configuration
- Let’s Encrypt SSL certificate management
- Security group configuration
- Cron jobs for SSL renewal

📄 [Read the full documentation](https://github.com/minux-skywalker/AWS-Projects/blob/7526a9b28755316e1800d7b9198e1867bbd895bb/Amazon%20Hosting%20Website%20On%20Apache%20Server%20With%20HTTPS/Readme.md)

---

## 🚀 How to Use This Repository

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/minux-skywalker/AWS-Projects.git
   ```
2. Navigate to any project folder to view its detailed documentation (`.docx`) and images.
3. Follow along using the step-by-step instructions to recreate each project in your own AWS account.

---

## 🤝 Contributing

Have a suggestion, improvement, or want to add your own AWS project? Feel free to open a pull request or issue. Contributions are welcome!

---

## 📜 License

This repository is licensed under the MIT License. See `LICENSE` for details.

---

> Made with ☁️ and 💻 by **Mihir Sanghrajka**

