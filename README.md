# AzureDF_EG_Test_for_Bakery_DW

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