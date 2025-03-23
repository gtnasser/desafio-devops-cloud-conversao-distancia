# imagem oficial do Python
FROM python:3.13.0

# define pasta do projeto
WORKDIR /app
COPY requirements.txt .

# instala dependencias
RUN python -m pip install -r requirements.txt
COPY . .

# inicia app
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]