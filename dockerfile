# Usar la imagen base de Ubuntu
FROM ubuntu:latest as base

# Actualizar e instalar curl y git
RUN apt-get -y update && apt-get -y install curl git

# Instalar Node.js desde Nodesource
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash && \
    apt-get -y install nodejs

# Clonar el repositorio en la carpeta /repositorio
RUN git clone https://github.com/SonerXD/Docker-Ejem.git /repositorio

# Cambiar al directorio donde se clonó el repositorio
WORKDIR /repositorio

# Ejecutar el archivo print.js
CMD ["node", "print.js"]
