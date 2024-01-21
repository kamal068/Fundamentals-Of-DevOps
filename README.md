# Release Notes: Fundamentals Of DevOps
•	Prepared Rest API using PHP language to have some health checks.
•	Containerize the application using Docker.
•	Create a GitHub Actions pipeline to build a PHP REST API-based Docker image and push it to Docker Set Up Docker Hub Credentials:
•	Kubernetes configuration
•	Terraform configuration.
•	Github action configuration

**Prepared Rest API using PHP language to have some health checks:**
Install php 7.2.
Create a file with .php extension.
**Containerize the application using Docker**
Create a dockerfile 
build the app by the dockerfile

**Prepare CI/CD pipelines for building the image and push to docker hub. **

Set Up Docker Hub Credentials:
1.Go to your GitHub repository.
2.Navigate to the "Settings" tab.
3. In the left sidebar, click on "Secrets."
4. Click on "New repository secret" and add the following secrets:
DOCKER_USERNAME: Your Docker Hub username.
DOCKER_PASSWORD: Your Docker Hub password or access token.
Create a GitHub Actions Workflow:
Create a new file in the repository under the path .github/workflows/

**Test cases covered:**
The REST API was running locally and got data successfully.
CI/CD pipeline builds the image and pushes it to the docker hub.
Using the docker image created a container and found it was running as expected.

**Implement EKS cluster by Terraform.**
VPC in AWS.
Security group & IAM role in AWS.
EKS
change the your organization name & workspace in terraform.tf file 
change the region in variables.tf file

**Test cases covered:**
Create a terraform cloud account.
Create an organization and workspace in the Terraform cloud.
Assign environment variables set in the Terraform cloud account under the organization.
**AWS_Access_key _ID = “Your Access Key ID”**
**AWS_Secret_Access_Key =  “Your IAM Key”**

Install terraform in AWS EC2 instance (Ubuntu).
Create terraform file with .tf extension.
main.tf, terraform.tf, variables.tf, outputs.tf
run “terraform login” to authenticate with the terraform cloud account. Then type 
Enter a value: yes
After that API token generator will prompt in the Terraform cloud account and create the API token. And paste them as Value.
Token for app.terraform.io:
  Enter a value:
**terraform init** to initialize a working directory.
Command **terraform validate** to check configuration.
**terraform plan** command creates an execution plan.
The **terraform apply** command executes the actions proposed in a Terraform plan to create.

**Deploying the app in EKS**
Creates manifest file for deploying the app to AWS EKS.
**Test cases covered:**
**Create GitHub Actions workflow for CI/CD pipelines step to deploying in EK**S.
Make sure to replace your-aws-region and your-eks-cluster-name with your actual AWS region and EKS cluster name with your actual region and cluster name.

**To configure secrets for your GitHub repository:**

1. Go to your GitHub repository.
2. Navigate to "Settings" > "Secrets".
3. Click on "New repository secret" and add secrets named **AWS_ACCESS_KEY_ID** and** AWS_SECRET_ACCESS_KEY** containing your AWS IAM user's access key ID and secret access key.
**Create a GitHub Actions Workflow:**
Create a new file in the repository under the path .github/workflows/

**Setup and Guideline:**
Install php7.4 or higher
Create a terraform cloud account.
Install terraform.
Modify the terraform variables 
Install docker 

**Limitattions:**
API key is plain text in application file.
