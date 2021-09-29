# Build infra
build-infra: build-packer build-terraform

# Buildar o packer para gerar uma AMI para a máquina
build-packer:
	cd packer; packer init .; packer build .

# Criar a infraestrutura da AWS EC2
build-terraform:
	cd terraform; terraform init; terraform plan && terraform apply

# Destruir a infraestrutura
destroy-infra:
	cd terraform; terraform destroy

