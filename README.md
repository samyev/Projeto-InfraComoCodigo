# Desafio infra como código Pagar.me

## Requisitos 
- AWS CLI 1.20.42
- Terraform >= v1.0.0
- Packer 1.7.5

## Sobre o Desafio
Neste projeto temos uma EC2, construída através do terraform na qual utiliza uma AMI criada a partir do packer. Na AWS contém uma aplicação bem simples feita em python, na qual utiliza containers docker para ser executada.

## Arquitetura do Projeto

![image](https://user-images.githubusercontent.com/37720085/135367187-068752ec-3246-4809-aa06-a52e0ed0c91c.png)

## Iniciando as configurações para a sua Infraestrutura
Configure as credenciais da AWS em sua máquina utilizando o AWS CLI, em seguida, execute o comando abaixo e siga as instruções:

~~~shell
$ aws configure
~~~
~~~shell
AWS Access Key ID : 
AWS Secret Access Key : 
Default region name : 
Default output format :
~~~

Ou, caso não queira utilizar o AWS CLI, apenas exporte as chaves de configuração em sua máquina para que você possa executar o projeto:

~~~shell
$ export AWS_ACCESS_KEY_ID=" "
~~~
~~~shell
$ export AWS_SECRET_ACCESS_KEY=" "
~~~

## Executando o Projeto
Executando o comando abaixo, você vai gerar uma AMI contendo a aplicação dockerizada e em seguida criar uma infraestrutura EC2 na AWS que será disponibilizada em um ip público na porta 80.

~~~shell
$ make build-infra
~~~

Ao final da execução do comando, será disponibilizado o ip público que dará acesso a aplicação.

~~~shell
instance_public_ip = " "
~~~

## Encerrando a Infraestrutura
Para encerrar a infraestrutura, basta executar o comando abaixo e sua máquina será encerrada.

~~~shell
$ make destroy-infra
~~~