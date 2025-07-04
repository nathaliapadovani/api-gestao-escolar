# Usa a imagem oficial do Python como base.  Escolhemos a versão Alpine por ser mais leve.
FROM python:3.13.5-alpine3.22

# Define o diretório de trabalho dentro do container.
WORKDIR /app

# Copia o arquivo de requirements para o diretório de trabalho.
COPY requirements.txt .

# Instala as dependências do projeto listadas no requirements.txt.
# A flag --no-cache-dir evita o armazenamento de cache do pip, reduzindo o tamanho da imagem.
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código do projeto para o diretório de trabalho.
COPY . .

# Define o comando a ser executado quando o container for iniciado.
# Uvicorn é um servidor ASGI para Python, utilizado para rodar aplicações FastAPI.
# "app:app" especifica o módulo (app.py) e a instância do app FastAPI.
# "--host 0.0.0.0" permite que o app seja acessível de fora do container.
# "--port 8000" define a porta em que o app vai escutar.
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

