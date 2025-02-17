# PRÁCTICA MIGRACIÓN A LA NUBE: AWS - JUAN ARILLO
Práctica de Juan Arillo para el módulo de Migración a la nube - AWS

## TABLA DE CONTENIDOS

[Descripción](#descripción)  
[Requisitos](#requisitos)  
[Funcionamiento](#funcionamiento)  
[Ajustes](#ajustes)  
[Finalización despliegue](#finalización-despliegue)

# Descripción

Este proyecto utiliza **Terraform** para desplegar un sitio web estático en **Amazon S3**. Incluye la configuración necesaria para alojar una página web, aplicando políticas de seguridad adecuadas y generando un endpoint accesible públicamente.

```
juanarillo_aws_practica/
│── provider.tf         # Configuración del proveedor AWS
│── locals.tf           # Variables y valores locales
│── bucket.tf           # Creación del bucket S3 y su configuración web
│── security.tf         # Configuración de seguridad y políticas de acceso
│── content.tf          # Carga del contenido (index.html y style.css)
│── output.tf           # Definición de los outputs (endpoint del sitio web)
│── site/
│   ├── index.html      # Archivo HTML principal
│   ├── style.css       # Archivo CSS externo
│   ├── error.html      # Archivo HTML error
```

## Requisitos

Antes de ejecutar este proyecto, asegúrate de tener instalado:

- Git
- [Terraform](https://www.terraform.io/downloads.html)
- Una cuenta en [AWS](https://aws.amazon.com/)
- Configuración de credenciales de AWS en la terminal(CLI).

## Funcionamiento

### **Clonar el repositorio**

Clonar la url del repositorio en el lugar deseado.

```sh
git clone https://github.com/KeepCodingCloudDevops11/juanarillo_aws_practica.git
```

### **Inicializar el Proyecto**

En la terminal, cambiarse a la ruta donde se encuentre el proyecto.

Ejecuta el siguiente comando para inicializar Terraform y descargar los módulos necesarios:

```sh
terraform init
```

### **Planificar la Infraestructura**

Para ver los cambios que se aplicarán en AWS:

```sh
terraform plan
```

### **Aplicar la Configuración**

Ejecuta el siguiente comando para crear el bucket S3 y cargar los archivos del sitio web:

```sh
terraform apply -auto-approve
```

### **Obtener la URL del Sitio Web**

Al finalizar, Terraform mostrará la URL del sitio web desplegado.

Si se intenta acceder a otra ruta o archivo dentro de la url, aparecerá una página de error.

## Ajustes

- El bucket S3 está configurado para permitir acceso público.
- Puedes modificar los archivos en `site/` y volver a ejecutar `terraform apply` para actualizar el contenido del sitio web.

## Finalización despliegue

Si deseas eliminar los recursos creados, ejecuta:

```sh
terraform destroy -auto-approve
```
