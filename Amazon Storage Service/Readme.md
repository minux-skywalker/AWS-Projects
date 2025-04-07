# Amazon Storage Services Project

![S3 and EFS](https://github.com/minux-skywalker/AWS-Projects/blob/55f415bea8fcbb1d0ed7009fcce641e60ab72000/AWS%20Assets/S3%20and%20EFS.png?raw=true)
This project showcases hands-on experience with two key AWS storage solutions — **Amazon S3 (Simple Storage Service)** and **Amazon EFS (Elastic File System)**. It includes detailed steps, screenshots, configurations, and key learnings while working with these services.

## 📁 Project Structure

The folder contains a `.docx` file with:
- Step-by-step walkthroughs on creating and configuring S3 and EFS
- Screenshots for each phase of the setup
- Common issues and how they were resolved
- Learnings and best practices related to AWS storage services

---

## 🗂️ Part 1: Amazon S3 (Simple Storage Service)

**Amazon S3** is an object storage service that allows for scalable and secure file storage. This part of the project covers:

- Creating an S3 bucket
- Understanding bucket types: *General Purpose* vs *Directory Buckets*
- Uploading files and folders
- Configuring access permissions and policies
- Enabling public access for hosted assets (e.g., images)
- Setting up static website hosting concepts

### ✅ Key Learnings:
- Difference between object and file storage
- Public access configuration via IAM and bucket policies
- Importance of tags for resource tracking
- S3 can serve as a backend for hosting static sites or storing any type of file
- When paired with services like CloudFront, S3 supports efficient global content delivery

---

## 📁 Part 2: Amazon EFS (Elastic File System)

**Amazon EFS** is a scalable file storage solution for use with Amazon EC2. This section includes:

- Creating an EFS file system
- Setting up and modifying EC2 security groups
- Mounting the EFS file system on multiple EC2 instances
- Accessing shared files across instances
- Real-world use case: shared video editing workflow in a team

### ✅ Key Learnings:
- EFS is ideal for applications needing concurrent access across instances
- Security groups are crucial in allowing/disallowing access
- Mounting EFS via EC2 using `amazon-efs-utils`
- Demonstrated real-time file sharing between instances
- Scalability and automatic capacity adjustment with increasing data

---

## ⚙️ Best Practices & Strategy

- Use **S3** for object-based storage: backups, logs, static websites, analytics
- Use **EFS** when multiple compute instances need shared, low-latency access
- Apply tagging for efficient resource tracking
- Monitor costs using AWS tools and align storage class/tier to data access patterns

---

## 🧠 Summary of Learnings

- Gained hands-on experience configuring two essential AWS storage types
- Developed understanding of object storage vs file storage
- Solved real deployment problems like permission issues and mounting errors
- Learned how to apply appropriate services based on organizational and application needs

---

## 📌 Reference

Special thanks to **Zoumana Keita** for inspiration and guidance.  
Original tutorial: [AWS S3 & EFS DataCamp Tutorial](https://www.datacamp.com/tutorial/aws-s3-efs-tutorial)
