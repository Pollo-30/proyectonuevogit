#!/bin/bash

# Nombre del bucket S3
BUCKET_NAME="bucket-devops-1307"

echo "Iniciando despliegue a S3..."
echo "Sincronizando archivos con s3://$BUCKET_NAME/"

# Sincronizar todos los archivos al bucket S3
aws s3 sync . s3://$BUCKET_NAME/ --exclude ".git/*" --exclude "deploy.sh" --exclude "*.shes"

echo ""
echo "✅ Despliegue completado!"
echo "🌐 URL de tu sitio: http://$BUCKET_NAME.s3-website-us-east-1.amazonaws.com"
