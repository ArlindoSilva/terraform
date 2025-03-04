# Terraform

Repositório com um exemplo básico da criação de um projeto com [terraform](https://www.terraform.io/).

Utilize os comando abaixo para aplicar as configurações definidas no arquivo main.tf.

- Baixa tudo o que é necessário para criar o projeto.

 ```bash 
 terraform init 
 ```
 - Formata o código
 ```bash 
 terraform fmt
 ```
 - Verifica se o código está correto e valida o código.
 ```bash 
 terraform validate
 ```
- Aplica o plano
 ```bash 
 terraform apply 
 ```

As informações para preencher os dados do droplet como size, region e images estão disponíveis em [
DigitalOcean API Slugs](https://slugs.do-api.dev/)