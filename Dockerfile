FROM python:latest
RUN mkdir -p /opt/app

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create workdir and copy project to container workdir
WORKDIR /opt/app
COPY requirements.txt /opt/app
COPY . /opt/app

# Run commands
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
RUN chmod +x /opt/app/startup.sh
ENTRYPOINT [ "/opt/app/startup.sh" ]