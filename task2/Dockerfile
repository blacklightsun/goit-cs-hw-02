# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.11.9

# Встановимо змінну середовища
ENV APP_HOME /app

EXPOSE 8000

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install pip requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR $APP_HOME
COPY . $APP_HOME

# Запустимо наш застосунок всередині контейнера
ENTRYPOINT ["python3", "main.py"]