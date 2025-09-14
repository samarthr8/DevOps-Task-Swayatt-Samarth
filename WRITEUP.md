# Short Write-up

## Tools Used
- **AWS Services**: VPC, EC2, EKS, IAM, S3, Load Balancer  
- **Docker**: For containerizing the application  
- **Jenkins**: CI/CD automation  
- **Kubernetes (K8s)**: Orchestration of containers  
- **GitHub**: Source code management and version control  

---

## Challenges Faced & Solutions
1. **Storing, Versioning, Backup, and Collaboration of Terraform State File**  
   - **Solution**: Stored the Terraform state file in an S3 bucket with state locking using DynamoDB for safe collaboration.

2. **Providing Jenkins Access to Connect to AWS EKS Cluster**  
   - **Solution**: Attached an IAM role with administrator access and ran the command:  
     ```bash
     aws eks update-kubeconfig --region us-east-1 --name devops-task-cluster
     ```
     to configure Jenkins access to the cluster.

3. **Docker Image Tagging**  
   - **Solution**: Tagged images with the Jenkins pipeline build number to ensure version tracking.

---

## Possible Improvements
1. Improve architecture using Terraform modules and best practices.  
2. Implement **Helm charts** and **Argo CD** for continuous deployment.  
3. Use **RBAC** in Jenkins and Kubernetes for better security.  
4. Store Kubernetes tokens in Jenkins credentials instead of using an IAM role to connect to EKS.

