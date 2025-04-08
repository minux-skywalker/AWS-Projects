# 🌐 AWS DNS Services Project 2
![Route 53 EC2 and Apache Server](https://github.com/minux-skywalker/AWS-Projects/blob/da942a79c6db9e310188c30e83cfafd4bc549e82/AWS%20Assets/EC2%20Linux%20Apache%20and%20Route53.png)

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
```

---

## 📁 Transfer Website Files

Use SCP to copy your HTML files:

```bash
scp -i key.pem index.html ec2-user@<EC2-IP>:/tmp/
ssh -i key.pem ec2-user@<EC2-IP>
sudo mv /tmp/index.html /var/www/html/
```

> 🔹 Tip: `/tmp` is writable and avoids permission issues.

---

## 🌍 Configure Route53

1. Go to Route 53 > Hosted Zones
2. Add two A records:
   - `cloudbyms.click` → EC2 Public IP
   - `www.cloudbyms.click` → EC2 Public IP
3. Wait for DNS propagation (typically under 60s)

---

## 🛠️ Set Up Virtual Host

Create virtual host config:

```bash
sudo nano /etc/httpd/conf.d/cloudbyms.click.conf
```

Paste the following:

```apache
<VirtualHost *:80>
    ServerName cloudbyms.click
    ServerAlias www.cloudbyms.click
    DocumentRoot /var/www/html

    <Directory /var/www/html>
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog /var/log/httpd/cloudbyms.click-error.log
    CustomLog /var/log/httpd/cloudbyms.click-access.log combined
</VirtualHost>
```

Restart Apache:

```bash
sudo systemctl restart httpd
```

---

## 🔐 Install SSL & HTTPS (Let's Encrypt)

Enable EPEL and install Certbot:

```bash
sudo amazon-linux-extras enable epel
sudo yum install -y epel-release
sudo yum clean metadata
sudo yum install -y certbot python-certbot-apache
```

Run Certbot:

```bash
sudo certbot --apache
```

Follow prompts to configure HTTPS & redirection.

---

## 🔁 Auto-Renew SSL Certificates

Edit cron jobs:

```bash
sudo crontab -e
```

Add:

```cron
0 2 * * * /usr/bin/certbot renew --quiet
```

This renews SSL daily at 2 AM.

---

## ✅ Verify Everything Works

- Open `https://cloudbyms.click`
- Open `https://www.cloudbyms.click`
- Confirm 🔒 SSL padlock in browser
- Check Apache status:

```bash
sudo systemctl status httpd
```

---

## 📂 Cert File Locations

```bash
/etc/letsencrypt/live/cloudbyms.click/
🔾 fullchain.pem
🔾 privkey.pem
```

---

## 📚 Learnings

- ✅ Launched & configured EC2 with Apache
- ✅ Managed file permissions and SCP
- ✅ Set up custom domain with Route 53
- ✅ Created virtual hosts in Apache
- ✅ Installed & configured SSL using Certbot
- ✅ Enabled auto-renewal via cron
- ✅ Configured EC2 security groups
- ✅ Learned DNS propagation and troubleshooting

---


---

> Made with ☁️ and 💻 by Mihir Sanghrajka
