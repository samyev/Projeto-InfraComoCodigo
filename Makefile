# Buildar o packer para gerar uma AMI para a máquina
build-ami:
	cd packer; packer init .; packer build .

# Criar a infraestrutura da AWS EC2
build-infra:
	cd terraform; terraform init; terraform plan && terraform apply

# Destruir a infraestrutura
destroy-infra:
	cd terraform; terraform destroy

