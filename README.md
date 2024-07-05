# Terraform

## O que é?

Com o Terraform, é possível descrever a infraestrutura desejada em arquivos de configuração, chamados
de `código Terraform`, e o Terraform se encarrega de **criar e gerenciar** esses recursos de forma **eficiente e escalável**.

Ele **suporta diversos provedores de nuvem**, como AWS, Azure, Google Cloud, entre outros, **facilitando a criação e manutenção**
de ambientes de infraestrutura de maneira consistente e reprodutível.

## Instalando o Terraform

Download: https://developer.hashicorp.com/terraform/install?ajs_aid=c91f7989-f34f-46bf-86f8-a2a8f8e103d4&product_intent=terraform

**Caso seja Windows, siga os passos abaixo:**

- Extraia a pasta do Terraform e copie o diretório.
- Abra as variáveis de ambiente e em `Variáveis do sistema`, abra a variável `Path`.
- Cole o caminho do diretório em uma nova linha do `Path`.
- Abra o Prompt de Comando e digite `terraform -v` para checar a instalação.

## Iniciando...

Vamos utilizar o arquivo `local.tf`, em que ele vai criar um resource de `local_file`.

Para rodar o terraform, vamos utilizar o comando: `terraform init`.
> Com isso, ele baixará o resource `local_file` do hashicorp e criará uma pasta oculta para salvar os dados baixados.

Para ver os providers que serão gerados, podemos executar o comando: `terraform plan`, e ele informará qual a ação de cada recurso:
![img.png](readme_images/img.png)

Para aplicarmos esse recurso, utilize o comando: `terraform apply` e digite `yes` para confirmar.
![img_1.png](readme_images/img_1.png)

Com isso, podemos verificar na **raiz do projeto** que foi criado um arquivo: `exemplo.txt` com o conteúdo que especificamos no `local.tf`.

**Observações:**

O arquivo `terraform.tfstate`, armazena informações sobre os recursos criados, suas configurações e dependências.

Já o arquivo `terraform.tfstate.backup`, é uma cópia de segurança do arquivo `terraform.tfstate`.

