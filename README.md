# real-time-project-aks-app
#Streamlined Deployment of Web Applications on Azure Kubernetes Service (AKS)

## Overview:

- This repository provides a streamlined approach for deploying web applications on Azure Kubernetes Service (AKS) using Continuous Integration (CI) and Continuous Deployment (CD) pipelines. The solution aims to automate the provisioning, deployment, scaling, monitoring, and security of web applications, enhancing agility, reliability, and scalability in cloud-native development workflows.


## Architecture Diagram:

<img width="854" alt="Screenshot 2024-03-13 at 18 18 01" src="https://github.com/RameshDevops55/real-time-project-aks-app/assets/142342787/92889c78-f842-4d57-addc-b082b3cd5291">





## Explanation of Architecture Diagram:

- The AKS (Azure Kubernetes Service) Cluster serves as the target environment for deploying the web application.
- The CI Pipeline triggers the build process which includes tasks like dependency installation, code compilation, testing, and artifact generation (typically Docker images).
- The generated artifact (Docker image) is then passed to the CD Pipeline.
- The CD Pipeline is responsible for deploying the application onto the AKS Cluster. It may involve tasks like container image deployment, Kubernetes manifest generation, and cluster configuration updates.
- The deployed application runs within the AKS Cluster.
      This diagram illustrates the flow from building the application to its deployment onto the AKS Cluster through the CI/CD pipelines.


## Key Components:

1.Azure Kubernetes Service (AKS): 
    Managed Kubernetes service for orchestrating containerized applications.

2.Azure DevOps/GitHub Actions: 
  CI/CD pipelines for automating the build, test, and deployment processes.


3.Terraform:
   Infrastructure as code tool for provisioning AKS clusters.

4.Web Application: 
   Containerised web application deployed onto the AKS cluster.

5.Azure Monitor and Log Analytics:
   Monitoring and logging solution for real-time insights into cluster health and application performance.

6.Azure Backup and Azure Site Recovery: 
   Backup and disaster recovery mechanisms for ensuring business continuity.

7.Security Measures:
   Network policies, pod security policies, and container image scanning for fortifying the AKS cluster and deployed applications against potential threats.


## Pre-requisites to run Application.

- Create Service Principal in App Registration.
- Add all the details to 'common' group variable in ADO
- Give contributor access to Service Principal
- Create a storage account, since we store terraform state file into storage account.
- Storage account details, store them into 'COMMON' group variable.

<img width="823" alt="671dc911-62c4-4c1f-9724-3f0809a85ab1" src="https://github.com/RameshDevops55/real-time-project-aks-app/assets/142342787/3efb55e8-ef6b-47ab-939f-46f696060d93">

 
ARM_CLIENT_ID

ARM_CLIENT_SECRET

ARM_TENANT_ID

ARM_SUBSCRIPTION_ID

tf_state_rg_name

tf_state_st_acc_name

tf_state_st_cont_name

tf_state_subscription_id

tf_state_tenant_id


## Create a Project Repository on Git Hub and work on Repository to push your code into it. 

- Clone the Repository to Local Machine.
- create branch and work on the branch to write the Scripts.
- push your Branch to Github Repository and Raise Pull Request after accepting request merge your branch to Main Branch.


## Setup Instructions

### 1. Provision AKS Cluster using Terraform:

- Navigate to the terraform directory.
- configure terraform.tfvars file with Azure subscription details and AKS cluster properties.
- Run terraform init, terraform plan, and terraform apply to provision the AKS cluster.
- Verify successful creation of the cluster.

### 2. Build Web Application - CI Pipeline:
   
- Set up a CI pipeline using Azure DevOps or GitHub Actions.
- Configure pipeline stages for tasks such as dependency installation, code compilation, testing, and artifact generation.
- Integrate code quality checks and static code analysis tools.
- Ensure successful execution of the CI pipeline by validating generated artifacts (Docker images).

### 3. Deploy CD Pipeline into AKS Cluster:
   
- Configure a CD pipeline to trigger on successful completion of the CI pipeline and changes in deployable artifacts.
- Define pipeline stages for tasks such as container image deployment, Kubernetes manifest generation, and cluster configuration updates.
- Implement blue-green or canary deployment strategies.
- Verify successful execution of the CD pipeline by validating the deployment of the web application onto the AKS cluster.

### 4. Interconnected User Story (Integration of CI/CD pipelines with AKS):
   
- Configure pipeline tasks to authenticate with the AKS cluster using service principals or Kubernetes credentials.
- Implement Kubernetes deployment manifests or Helm charts for defining the desired state of the application within the cluster.
- Enable pipeline tasks to interact with Kubernetes APIs for deploying, updating, and scaling application instances.
- Verify seamless integration of CI/CD pipelines with the AKS cluster by validating successful deployments and scaling operations without manual intervention.


## Conclusion

- By following the setup instructions provided in this repository, teams can streamline the deployment of web applications on Azure Kubernetes Service, empowering them with a scalable, reliable, and efficient platform for cloud-native development workflows.
