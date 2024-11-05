## 🌐 Sprint DevOps 🚀
## Provisão de Infraestrutura e Deploy com Docker Compose
## 📜 Descrição
Este projeto demonstra a configuração completa de uma solução de DevOps e Cloud Computing, incluindo a criação de uma máquina virtual na nuvem, instalação e configuração do Docker, e deploy de uma aplicação com Docker Compose. A aplicação é configurada para rodar em segundo plano, utilizando imagens Docker leves e eficientes, seguindo as melhores práticas de segurança.

## 🛠️ Pré-requisitos
Conta em provedor de nuvem com permissões para criação de máquinas virtuais.
Ferramenta de acesso SSH (ex: PuTTY para Windows, Terminal para Linux/Mac).
Docker e Docker Compose instalados na máquina virtual.

## 🌩️ Passo 1: Provisionamento da Máquina Virtual
1. Criação da VM: Configure uma máquina virtual Linux (Ubuntu 20.04 LTS recomendado).
2. 
3. Acesso à VM:
ssh usuario@ip-da-vm

4. Configuração Inicial:
sudo apt update && sudo apt upgrade -y

## 🐳 Passo 2: Instalação do Docker e Docker Compose
1.Instalar o Docker:
sudo apt install docker.io -y

2. Instalar o Docker Compose:
sudo apt install docker-compose -y

4. Verifique as Instalações:
docker --version
docker-compose --version

## 📦 Passo 3: Configuração e Deployment da Aplicação
1. Clone o Repositório:
git clone https://github.com/Matheus-Silva-breck/sprint-devops.git
cd sprint-devops

2. Estrutura do Projeto:
O diretório padrão do projeto é /app. Certifique-se de que o Dockerfile e o docker-compose.yml estão na raiz do repositório.

3. Deploy da Aplicação:
docker-compose up -d --build

4. Executando com Usuário Sem Privilégios:
O Dockerfile foi configurado para executar a aplicação com um usuário não-administrativo, reforçando a segurança do ambiente.

## 🔍 Teste e Validação
1. Verifique o Status do Contêiner:
docker ps

## 🔄 Monitoramento
1. Monitoramento: Acompanhe o desempenho e os logs da VM pelo painel de controle do provedor de nuvem para garantir a estabilidade do serviço.

## 💾 Persistência de Dados na Nuvem
Os dados utilizados pela aplicação são persistentes enquanto o contêiner estiver ativo. Certifique-se de que o volume do Docker está configurado corretamente no docker-compose.yml para manter a persistência dos dados.

## 👥 Integrantes do grupo
Nome: Eduardo Rodrigues Shiraga
RM: 553705
Giovani Shiraishi Borba
RM: 553724
Nome: Matheus Rodrigo da Silva 
RM: 553180



