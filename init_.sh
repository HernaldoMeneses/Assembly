#!/bin/bash
#Iniciar diretorio como repositorio git
git init
# Adicionar origin
# Requer:
# #	Repositório Criado no GitHub
# #	Conexão ssh configurada
echo "digite usuario Git para o link"
read user
echo "Digite nome do Repositório Git"
read repositorio
git remote add origin git@github.com:$user/$repositorio.git
