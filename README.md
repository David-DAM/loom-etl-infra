# Loom ETL Infrastructure

## Descripción General

Este proyecto contiene la infraestructura como código (IaC) para el sistema ETL de Loom, utilizando Terraform para
gestionar recursos en la nube de manera modular, escalable y reutilizable.

## Módulos Disponibles

### 📦 S3 (Simple Storage Service)

- **Propósito**: Almacenamiento de objetos para datos del ETL
- **Ubicación**: `terraform/modules/s3/`

### 📬 SQS (Simple Queue Service)

- **Propósito**: Gestión de colas de mensajes para el procesamiento ETL
- **Ubicación**: `terraform/modules/sqs/`

### 🗄️ DynamoDB

- **Propósito**: Base de datos NoSQL para metadatos y control del ETL
- **Ubicación**: `terraform/modules/dynamodb/`

## Ambientes

### Desarrollo (dev)

- Configuración optimizada para pruebas y desarrollo
- Backend remoto configurado
- Variables específicas del ambiente en `terraform.tfvars`

### Producción (pro)

- Configuración para ambiente productivo
- (En proceso de configuración)

## Prerequisitos

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [AWS CLI](https://aws.amazon.com/cli/) configurado con credenciales válidas
- Permisos apropiados en AWS para crear recursos

## Instalación y Configuración

### 1. Clonar el Repositorio

```bash
git clone https://github.com/David-DAM/loom-etl-infra.git
cd loom-etl-infra
``` 

### 2. Configurar Terraform

```bash
cd terraform/environments/dev terraform init
``` 

### 3. Configurar Variables

Edita el archivo `terraform.tfvars` en el ambiente correspondiente con tus valores específicos.

### 4. Planificar Despliegue

```bash
terraform plan
``` 

### 5. Aplicar Configuración

```bash
terraform apply
``` 

## Uso de Módulos

### Personalizar Configuración

Cada módulo puede ser personalizado mediante variables. Consulta los archivos `variables.tf` en cada módulo para ver las
opciones disponibles.

## Comandos Útiles

| Comando              | Descripción                             |
|----------------------|-----------------------------------------|
| `terraform init`     | Inicializa el directorio de trabajo     |
| `terraform plan`     | Muestra los cambios que se aplicarán    |
| `terraform apply`    | Aplica los cambios a la infraestructura |
| `terraform destroy`  | Elimina todos los recursos gestionados  |
| `terraform fmt`      | Formatea los archivos .tf               |
| `terraform validate` | Valida la configuración                 |

## Convenciones

- **Nomenclatura**: Utilizar snake_case para nombres de recursos
- **Tags**: Todos los recursos deben incluir tags apropiados
- **Versiones**: Especificar versiones exactas de proveedores
- **Documentación**: Documentar variables y outputs en todos los módulos

## Seguridad

- 🔐 Nunca commitear credenciales o secrets
- 🔒 Utilizar backend remoto para el state de Terraform
- 🛡️ Aplicar principio de menor privilegio en políticas IAM
- 📋 Revisar cambios en infraestructura antes de aplicar

