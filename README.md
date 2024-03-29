# Prueba de Azure Data Factory con Event Grid para Almacen de Datos de Panaderia

Prueba de Azure Data Factory con Event Grid para crear un almacen de datos para una Panaderia
Se uso datos sinteticos de https://www.mockaroo.com/ y me base en el contenido del libro
Azure Date Engineering Cookbook Second Edition

https://www.packtpub.com/en-nl/product/azure-data-engineering-cookbook-9781803246789?=type=ebook

Se necesitaran ejecutar los siguientes comandos en Azure CLI para que el ejemplo funcione

### PowerShell
Register-AzResourceProvider -ProviderNamespace Microsoft.EventGrid

### Azure CLI
az provider register --namespace Microsoft.EventGrid

## Pipeline Principal

![Pipeline Principal](https://images4.imagebam.com/f7/97/8d/MERZ7RY_o.JPG)

## Pipeline de Tablas de Dimensiones

![Pipeline Tabla Dimensiones](https://images4.imagebam.com/f3/31/7a/MERZ7RZ_o.JPG)

## Pipeline de Tabla de Hecho

![Pipeline Tabla Hecho](https://images4.imagebam.com/36/bb/38/MERZ7S0_o.JPG)

## Consulta a Tabla Stage

![Consulta a Tabla Stage](https://images4.imagebam.com/41/70/c1/MERZ7S1_o.JPG)

## Primera Consulta de Filas

![Primera Consulta de Filas](https://images4.imagebam.com/36/cf/3d/MERZ7S2_o.JPG)

## Primera Consulta de Ganancia Total

![Primera Consulta de Ganancia Total](https://images4.imagebam.com/7a/90/69/MERZ7S3_o.JPG)

## Ejecución de Trigger

![Ejecución de Trigger](https://images4.imagebam.com/10/29/5e/MERZ7S4_o.JPG)

## Ejecución de Pipeline por el Trigger 

![Ejecución de Pipeline por el Trigger](https://images4.imagebam.com/f2/41/25/MERZ7S5_o.JPG)

## Consulta Final de Ganancia Total

![Consulta Final de Ganancia Total](https://images4.imagebam.com/9e/54/4e/MERZ7S6_o.JPG)