# 🌐 AWS DNS Services Project

![Route 53 EC2 and S3](https://github.com/minux-skywalker/AWS-Projects/blob/35e58d9826fc71266d5040b76bc7bc97b169aca6/AWS%20Assets/EC2%20Route53%20and%20S3.png)

This project demonstrates the complete process of hosting a **static website** using **Amazon S3** and managing DNS using **Amazon Route 53**. It involves domain registration, bucket setup, static website hosting configuration, redirection, logging, permissions, and DNS aliasing.

---

## 📁 Project Structure

The folder contains a `.docx` file with:
- Step-by-step walkthrough of setting up Route 53 and S3 for website hosting
- Screenshots at each stage
- Common troubleshooting issues and resolutions
- Key learnings and best practices

---

## 🧭 Part 1: Domain Registration & Hosted Zones (Route 53)

### 📌 Highlights:
- Registering a domain via Route 53
- Understanding hosted zones
- Setting up DNS records (A/alias for root and subdomain)

### ✅ Key Learnings:
- Route 53 is AWS’s scalable DNS service
- Hosted zones control DNS records for your domain
- Records can point to internal or external resources
- AWS provides name servers for use even with third-party domain registrars

---

## ☁️ Part 2: Hosting a Static Website on Amazon S3

### 🏗️ Setup Includes:
- Creating 2 S3 buckets:
  - `yourdomain.com`
  - `www.yourdomain.com` (for redirection)
- Enabling static website hosting
- Uploading `index.html` and `error.html`
- Configuring logging to `logs.yourdomain.com`

### 🔒 Permissions:
- Unblocking public access
- Adding S3 bucket policies for public read access

### 🔁 Subdomain Redirection:
- www subdomain redirects to root domain
- Hosted via separate bucket set to redirect requests

---

## 🛠️ Additional Configuration

### 📊 Enable Logging:
- Log bucket: `logs.yourdomain.com`
- Logs written every ~2 hours
- Useful for traffic analysis and troubleshooting

### 🌍 Alias Record Creation (Route 53):
- Create `A` records with alias to S3 website endpoint
- For both `@` (root domain) and `www` subdomain
- Connect Route 53 hosted zone to S3-hosted site

---

## 🧪 Testing

- Access site via `http://yourdomain.com`
- Subdomain (`www.yourdomain.com`) should redirect correctly
- Confirm index and error pages load as expected

---

## 🧠 Summary of Learnings

Through this project, I gained hands-on experience with:

- 🔗 DNS routing via Amazon Route 53
- 🌐 Hosting a static website using S3 buckets
- 🧾 Bucket policy editing and permission configurations
- 🧭 Creating aliases and DNS records
- 🪪 Subdomain redirection using dedicated S3 buckets
- 📈 Enabling logging to track and monitor access
- 📂 Choosing AWS regions wisely for performance and cost
- ⚙️ Understanding the flow from domain registration to final deployment

---

## 🙏 Reference

Thanks to the AWS team for their amazing documentation and tutorials.  
📚 [AWS Tutorials](https://aws.amazon.com/tutorials/)

---

