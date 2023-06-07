# Live 2 do aquecimento para imersão cloud 
terraform {
    required_providers {
        aws = {
            source = "hashicorpo/aws"
            version = "~> 4.16"
        }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "tcb-app-qa-jr10"
  
}

# Subimos o arquivo para o CloudShell
# Lá utilizamos os comandos:
#   terraform init - Provisiona a estrutura no CloudShell
#   terraform plan - Compara o arquivo com o state file e com base nisso informa o que o terraform ira fazer na nuvem
#   terraform apply - Confirma o que será aplicado na nuvem