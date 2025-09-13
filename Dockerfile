FROM python:3.12-slim

# Définir le dossier de travail
WORKDIR /app

# Copier les dépendances et installer
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code source
COPY app/ .

# Lancer l'application
CMD ["python", "app.py"]
