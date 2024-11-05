🌐 Projeto DevOps e Cloud Computing 🚀
Provisão de Infraestrutura e Deploy com Docker Compose
📜 Descrição
Este projeto demonstra a configuração completa de uma solução de DevOps e Cloud Computing, incluindo a criação de uma máquina virtual na nuvem, instalação e configuração do Docker, e deploy de uma aplicação com Docker Compose. A aplicação é configurada para rodar em segundo plano, utilizando imagens Docker leves e eficientes, seguindo as melhores práticas de segurança.

🛠️ Pré-requisitos
Conta em provedor de nuvem com permissões para criação de máquinas virtuais.
Ferramenta de acesso SSH (ex: PuTTY para Windows, Terminal para Linux/Mac).
Docker e Docker Compose instalados na máquina virtual.
🌩️ Passo 1: Provisionamento da Máquina Virtual
Criação da VM: Configure uma máquina virtual Linux (Ubuntu 20.04 LTS recomendado).

Monitoramento: Ative o monitoramento de saúde da VM e configure as permissões de rede necessárias.
Acesso à VM:

bash
Copiar código
ssh usuario@ip-da-vm
Configuração Inicial:

bash
Copiar código
sudo apt update && sudo apt upgrade -y
🐳 Passo 2: Instalação do Docker e Docker Compose
Instalar o Docker:

bash
Copiar código
sudo apt install docker.io -y
Instalar o Docker Compose:

bash
Copiar código
sudo apt install docker-compose -y
Verifique as Instalações:

bash
Copiar código
docker --version
docker-compose --version
📦 Passo 3: Configuração e Deployment da Aplicação
Clone o Repositório:

bash
Copiar código
git clone https://github.com/Matheus-Silva-breck/sprint-devops.git
cd sprint-devops
Estrutura do Projeto:

O diretório padrão do projeto é /app. Certifique-se de que o Dockerfile e o docker-compose.yml estão na raiz do repositório.
Deploy da Aplicação:

bash
Copiar código
docker-compose up -d --build
Executando com Usuário Sem Privilégios:

O Dockerfile foi configurado para executar a aplicação com um usuário não-administrativo, reforçando a segurança do ambiente.
🔍 Teste e Validação
Verifique o Status do Contêiner:

bash
Copiar código
docker ps
Você verá o contêiner ativo na porta especificada (3000 por padrão).

Testar a Aplicação:

Acesse http://<IP-da-VM>:3000 no navegador para confirmar a execução.
🔄 Monitoramento e Deleção de Recursos
Monitoramento: Acompanhe o desempenho e os logs da VM pelo painel de controle do provedor de nuvem para garantir a estabilidade do serviço.

Deleção de Recursos:

Após os testes, exclua o grupo de recursos da VM para evitar cobranças adicionais. Capture uma captura de tela como evidência.
💾 Persistência de Dados na Nuvem
Os dados utilizados pela aplicação são persistentes enquanto o contêiner estiver ativo. Certifique-se de que o volume do Docker está configurado corretamente no docker-compose.yml para manter a persistência dos dados.

