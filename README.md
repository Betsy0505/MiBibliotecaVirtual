# Biblioteca Virtual

<img width="1307" height="604" alt="image" src="https://github.com/user-attachments/assets/1c543dd4-bed2-4565-a17b-171d4d6b7284" />

Bienvenida al repositorio oficial de la **Biblioteca Virtual**. Esta aplicación es una solución completa construida con **Blazor WebAssembly** y **.NET 8**, diseñada para la gestión eficiente de libros y recursos bibliográficos.

## 🚀 Acceso al Sitio
Puedes visitar la versión en línea del proyecto aquí:
[https://bibliotecavirtual.myownvps.site](https://bibliotecavirtual.myownvps.site)

## 🛠️ Tecnologías Utilizadas
* **Frontend:** Blazor WebAssembly (.NET 8)
* **Backend:** ASP.NET Core API
* **Base de Datos:** SQL Server
* **Contenedor:** Docker
* **Despliegue:** Dokploy

## 📦 Estructura del Proyecto
* `BibliotecaVirtual`: Proyecto principal (Server API).
* `BibliotecaVirtual.Client`: Interfaz de usuario (Blazor).
* `BibliotecaVirtual.Shared`: Modelos y clases compartidas.
* `Dockerfile`: Configuración para el despliegue en contenedores.

## ⚙️ Configuración para Desarrollo Local
1. Clona este repositorio.
2. Abre la solución `BibliotecaVirtual.slnx` en Visual Studio 2022.
3. Asegúrate de tener instalado el SDK de .NET 8.
4. Configura tu cadena de conexión en el archivo `appsettings.json` local.
5. Ejecuta el proyecto seleccionando la solución `BibliotecaVirtual`.

## 🐳 Despliegue (Docker)
El proyecto incluye un `Dockerfile` optimizado para entornos de producción. 
Para construir la imagen localmente:
```bash
docker build -t bibliotecavirtual .
docker run -p 8080:8080 bibliotecavirtual
