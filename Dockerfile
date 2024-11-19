# Imagem base Python
FROM python:3.10-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto
COPY requirements.txt requirements.txt
COPY app.py app.py

# Instala dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expor a porta do Flask
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["python", "app.py"]