![Terraform S3](https://github.com/minux-skywalker/AWS-Projects/raw/48ee170c78cead910092f7fc535f043c7932a0cf/AWS%20Assets/Terraform_S3.png)
# Terraform Static Website on AWS S3

Welcome to the **Terraform Static Website Project**! 🚀
[![Notion Docs](https://img.shields.io/badge/Notion-Terraform%20Docs-000?logo=notion&logoColor=white)](https://pool-finch-5b7.notion.site/Terraform-Documentation-1e18dcf3a57080b784a0f919d25a3f00?pvs=73)

This project uses **Terraform** to provision a fully functional static website hosted on **AWS S3**. It automates the creation of the S3 bucket, configures public access, uploads website files, and outputs the website URL. 

## 📂 Project Structure

```bash
.
├── main.tf             # Terraform configuration file
├── index.html          # Static website homepage
├── style.css           # CSS for styling the homepage
└── README.md           # Project documentation
```

---

## ✨ Features
- Provision a **randomly named** S3 bucket using `random_id`.
- Configure **bucket policies** to allow public read access.
- Upload `index.html` and `style.css` files to the bucket.
- Set up **static website hosting** on S3.
- Output the **website endpoint** after deployment.

---

## 🛠️ Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://developer.hashicorp.com/terraform/downloads) (v1.0 or above)
- [AWS CLI](https://aws.amazon.com/cli/) (configured with credentials)
- An active AWS account

---

## 🚀 How to Run This Project

1. **Clone this repository**

```bash
git clone https://github.com/your-username/terraform-static-website.git
cd terraform-static-website
```

2. **Initialize Terraform**

```bash
terraform init
```

This command downloads the required providers (`aws` and `random`).

3. **Plan the deployment**

```bash
terraform plan
```

This previews the changes Terraform will make.

4. **Apply the configuration**

```bash
terraform apply
```

Type `yes` when prompted. After a successful apply, the **website URL** will be displayed.

5. **Access your website!** 🎉

Open the provided URL in your browser to see your deployed static website.

---

## 🔥 Useful Terraform Commands

```bash
terraform init      # Initialize the Terraform project
terraform plan      # Preview the infrastructure changes
terraform apply     # Deploy the infrastructure
terraform destroy   # Tear down the infrastructure
```

---

## 📜 Key Resources Created

- **S3 Bucket**: Stores website files.
- **Bucket Policy**: Allows public read access to the files.
- **S3 Website Configuration**: Enables website hosting.
- **Random ID**: Ensures globally unique bucket names.

---

## ⚡ Example Output

```bash
Outputs:

rand_out = "http://mywebappbucket-abc1234567890.s3-website-ap-south-1.amazonaws.com"
```

---

## 🧹 Clean Up

When you're done, destroy all created resources to avoid charges:

```bash
terraform destroy
```

---

## 🤔 Why Terraform for Static Websites?

- **Automation**: No need to click around AWS Console manually.
- **Repeatability**: Easily recreate the website in different environments.
- **Version Control**: Manage infrastructure code just like application code.

---

## 📚 Additional Learning Resources

- [Terraform AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Hosting a Static Website on Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html)

---

## 💬 License

This project is licensed under the MIT License. Feel free to use and modify it as per your needs.

---

Happy Building! 🚀
