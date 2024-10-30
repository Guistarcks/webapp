# Usa la imagen oficial de Node.js como base
FROM node:14

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY . .

# Expone el puerto en el que la aplicación escucha
EXPOSE 3000

# Define el comando para ejecutar la aplicación
CMD ["npm", "start"]
