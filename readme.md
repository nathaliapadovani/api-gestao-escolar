# API de Gestão Escolar

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?style=for-the-badge&logo=python)
![FastAPI](https://img.shields.io/badge/FastAPI-0.115-green?style=for-the-badge&logo=fastapi)
![Docker](https://img.shields.io/badge/Docker-Ready-blue?style=for-the-badge&logo=docker)

API desenvolvida com FastAPI para gerenciar alunos, cursos e matrículas em uma instituição de ensino, como parte da **Imersão DevOps da Alura + Google Cloud**.

---

## 🚀 Como Executar o Projeto

Existem duas maneiras de executar a aplicação: usando Docker (recomendado para simplicidade) ou localmente em um ambiente virtual (para desenvolvimento).

### Método 1: Usando Docker (Recomendado)

Este é o método mais simples e rápido para ter a aplicação rodando.

**Pré-requisitos:**
- [Docker](https://www.docker.com/get-started/)
- [Docker Compose](https://docs.docker.com/compose/install/)

**Passos:**

1.  **Clone o repositório:**
    ```sh
    git clone https://github.com/seu-usuario/seu-repositorio.git
    cd seu-repositorio
    ```
    *(Lembre-se de substituir `seu-usuario/seu-repositorio` pela URL do seu projeto no GitHub)*

2.  **Construa a imagem e inicie o container:**
    Na raiz do projeto, execute o comando:
    ```sh
    docker-compose up --build
    ```

3.  **Acesse a API:**
    A aplicação estará rodando e pronta para uso. Acesse a documentação interativa no seu navegador:
    http://127.0.0.1:8000/docs

---

### Método 2: Ambiente Virtual Local (Desenvolvimento)

Use este método se preferir rodar a aplicação diretamente na sua máquina.

**Pré-requisitos:**
- Python 3.10 ou superior
- Git

**Passos:**

1.  **Clone o repositório** (se ainda não o fez).

2.  **Crie e ative um ambiente virtual:**
    ```sh
    # Criar o ambiente
    python -m venv venv

    # Ativar no Windows (PowerShell)
    .\venv\Scripts\activate

    # Ativar no Linux/macOS
    source venv/bin/activate
    ```

3.  **Instale as dependências:**
    ```sh
    pip install -r requirements.txt
    ```

4.  **Execute a aplicação:**
    ```sh
    uvicorn app:app --reload
    ```

5.  **Acesse a API:**
    http://127.0.0.1:8000/docs

---

## 📝 Sobre o Banco de Dados

-   A aplicação utiliza um banco de dados **SQLite** (`escola.db`).
-   O arquivo do banco de dados será criado automaticamente na raiz do projeto na primeira execução.
-   Ao usar Docker, o arquivo `escola.db` é persistido na sua máquina local graças ao volume configurado no `docker-compose.yml`, então seus dados não serão perdidos ao reiniciar o container.
-   Para reiniciar o banco do zero, basta apagar o arquivo `escola.db`.

---
