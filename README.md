# RECUC - Proyecto Full-Stack con React, Symfony, MySQL y Proxy con SSL

## 🔧 Requisitos

- Docker + Docker Compose

## 📁 Estructura

- `/frontend` → Aplicación React
- `/backend` → API Symfony
- `/proxy` → Nginx con SSL y redirecciones
- `/phpmyadmin` → Interfaz para MySQL
- `.env` → Variables de entorno (no se sube al repositorio)

## ✅ Configuración del archivo `.env`

Crea un archivo `.env` con este contenido:

MYSQL_ROOT_PASSWORD=rootpass
MYSQL_DATABASE=recucdb
MYSQL_USER=admin
MYSQL_PASSWORD=adminpass


## 🚀 Arrancar el proyecto

docker-compose up --build



⚠️ Si usas AWS, modifica el server_name en nginx.conf con la IP pública del servidor EC2.