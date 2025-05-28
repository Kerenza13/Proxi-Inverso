# DespliegueCompletoRECUC con proxy inverso
## Cómo crear el .env y con qué contenido para que todo funcione correctamente
Se crea el archivo .env en la raíz del proyecto. Contiene:

- MYSQL_ROOT_PASSWORD=root
- MYSQL_DATABASE=RECUC_BD
- MYSQL_USER=alumnoDAW
- MYSQL_PASSWORD=passRECUC
- PMA_HOST=database

Luego cambiamos environment por env_file y usamos esos nombres como valores en el docker-compose.
Ejecutamos docker compose --env-file .env up
## Pasos
Reutilizando archivos de DespliegueCompletoRECUC:
1. En la carpeta web cambiar default.conf. Definimos cada servicio del servidor
2. En la carpeta web crear el archivo entrypoint.sh
3. En el archivo entrypoint.sh cambiamos /C=US/ST=Estado/L=Ciudad... a nuestros datos
4. Modifo el DockerfileWeb añadiendo lo que corresponda
5. Modifico de nuevo el default.conf añadiendo el server con listen 443 ssl, etc
6. Modifico el docker-compose añadiendo el 443:443 como puerto al servicio web, etc
7. En la carpeta web creamos la carpeta certs y dentro un .gitignore
## Autor
Carlos Morillas Delgado
