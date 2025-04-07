# AWS Storage Services Project

This project demonstrates how to work with two of Amazon Web Services' (AWS) key storage services: **Amazon S3 (Simple Storage Service)** and **Amazon EFS (Elastic File System)**. The project covers real-world use cases for both services, including creating an S3 bucket, uploading files, configuring public access, and setting up an EFS file system for shared file access across EC2 instances.

## Table of Contents
1. [Amazon S3 (Simple Storage Service)](#amazon-s3-simple-storage-service)
   - [Project 1: Creating an S3 Bucket](#project-1-creating-an-s3-bucket)
   - [Bucket Types](#bucket-types)
   - [Learnings](#learnings)
2. [Amazon EFS (Elastic File System)](#amazon-efs-elastic-file-system)
   - [Project 2: Creating an EFS File System](#project-2-creating-an-efs-file-system)
   - [Learnings](#learnings-1)
3. [Storage Strategies and Best Practices](#storage-strategies-and-best-practices)

## Amazon S3 (Simple Storage Service)

### Project 1: Creating an S3 Bucket
Amazon S3 is an object storage system that allows you to store various types of data such as files, videos, images, logs, and more. The project covers the process of creating an S3 bucket, uploading files to it, and managing access policies.

1. **Step-by-step process** to create an S3 bucket.
2. **Folder structure** for organizing objects within a bucket.
3. **How to make files publicly accessible** by modifying bucket permissions and using policies.

### Bucket Types
Amazon S3 offers two bucket types:
- **General Purpose Buckets**: Default type for most use cases, with support for all storage classes and features.
- **Directory Buckets**: Optimized for performance-critical workloads requiring low latency and high transaction throughput.

### Learnings
- Created an S3 bucket, added folders, and uploaded files.
- Configured bucket permissions for public access.
- Leveraged S3 for static website hosting and efficient content delivery with CloudFront.

## Amazon EFS (Elastic File System)

### Project 2: Creating an EFS File System
Amazon EFS provides a shared file system that multiple EC2 instances can access concurrently. This project demonstrates how to create an EFS file system and mount it on EC2 instances for collaborative file access.

1. **Step-by-step process** to create an EFS file system.
2. **Mounting the EFS file system** on EC2 instances using the `amazon-efs-utils` package.
3. **Security group configuration** to allow EC2 instances to access EFS.

### Learnings
- Created an EFS file system for shared file access.
- Mounted EFS on multiple EC2 instances and demonstrated file access across instances.
- Learned about scaling EFS based on demand and collaborative workflows.

## Storage Strategies and Best Practices

### Performance Optimization
- Choose the right **storage classes** in S3 to optimize for performance.
- Use **EFS** for scenarios where multiple EC2 instances need concurrent access to files.

### Cost Optimization
- Leverage **S3 storage tiers** to optimize costs based on how often data is accessed.
- Utilize AWS monitoring tools to track and optimize storage usage.

### Best Practices
- **Tagging**: Always tag resources for easier management and cost allocation.
- **Security**: Configure bucket policies and security groups carefully to control access.
- **Backup and Archiving**: Use S3 for long-term storage of archived data.

## Learnings

By using both **Amazon S3** and **Amazon EFS**, I learned about different types of AWS storage services and their real-world applications. S3 is ideal for object storage like backups and static assets, while EFS is better suited for shared file systems where multiple systems or users need to access the same files.

## References
- [AWS S3 Documentation](https://aws.amazon.com/s3/)
- [AWS EFS Documentation](https://aws.amazon.com/efs/)
- [Datacamp Tutorial: AWS S3 & EFS](https://www.datacamp.com/tutorial/aws-s3-efs-tutorial)

### Author
This project was created by Zoumana Keita.

---

Feel free to reach out for any clarifications or feedback!
