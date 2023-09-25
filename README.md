# Terraform AWS Infrastructure with IAM, S3, and DynamoDB

![Terraform](terraform-image.jpg)

This repository contains Terraform configurations to provision AWS resources for IAM, S3, and DynamoDB. These resources are designed to showcase how to set up basic infrastructure as code on AWS using Terraform.

## IAM Users - Winx Club Members

In the mystical world of the Winx Club, we have created IAM users for some of the club members. These IAM users will grant access to specific AWS services. Here are the IAM users we've conjured:

- Bloom
- Flora
- Musa
- Laila
- Technia

Remember, in a real-world scenario, you should define policies and permissions for these users, but for this demonstration, we're keeping it simple.

## S3 Bucket - Primary Demo Bucket

Our enchanted S3 bucket is named `primary-demo-bucketfor-use-234561`. This bucket is a container for storing your magical files and objects. In this repository, we've added a simple text file named `hello.txt` to the bucket. You can customize the contents and objects as needed.

## DynamoDB Table - My Library

In our mystical library, we have created a DynamoDB table named `collection`. This table uses the `PAY_PER_REQUEST` billing mode for simplicity.

Attributes in this table include:

- `book_name` (String)
- `author_name` (String)
- `year` (Number)

We've also created a Global Secondary Index called `AuthorIndex` for advanced querying. This index allows you to search for books by `author_name` and `year`. It projects all attributes for your convenience.

Additionally, we've added an item to this library. The item is a book titled "Dune," written by "Frank Herbert" in the year "1965." You can add more books and authors as needed.

## How to Use

1. Clone this repository to your local environment.

2. Install Terraform if you haven't already: [Terraform Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)

3. Initialize your working directory:
   ```bash
   terraform init
   ```

4. Review and customize the Terraform configurations as needed, especially when it comes to IAM policies and permissions.

5. Apply the Terraform configurations to create the AWS resources:
   ```bash
   terraform apply
   ```

6. After creating the resources, you can manage them through Terraform or AWS Management Console.

7. To destroy the resources when you're done:
   ```bash
   terraform destroy
   ```

## Be Mindful

Please be aware that this repository provides a simplified example for learning and experimentation. In a production environment, security and best practices should be a top priority. Ensure you have proper IAM policies, bucket policies, and DynamoDB access controls in place.

Enjoy exploring the magic of Terraform and AWS! ✨🪄

If you have any questions or need assistance, feel free to reach out to the DevOps community. Keep learning and mastering the art of infrastructure as code! 🚀👩‍💻👨‍💻
