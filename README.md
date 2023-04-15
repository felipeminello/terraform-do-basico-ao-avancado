# Curso: Terraform - Do Básico ao Avançado

[Link do curso](https://uciandt.udemy.com/course/terraform-do-basico-ao-avancado)

## Links
- [Terraform](https://www.terraform.io/)
- [Providers](https://registry.terraform.io/browse/providers)

## Instruções
- Criar bucket na AWS pelo Console com o nome "felipeminello-terraform-import"
- Executar no terminal:
  ```bash
  terraform import aws_s3_bucket.bucket_terraform_import felipeminello-terraform-import
  ```
- Destruir o bucket:
  ```bash
  terraform destroy
  ```