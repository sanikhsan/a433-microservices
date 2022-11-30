#! /bin/bash

#Membuat docker image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

#Melihat daftar image di lokal
docker images

# #Mengubah nama image sesuai format Github Packages
docker tag item-app:v1 ghcr.io/sanikhsan/a433-microservices/item-app:v1

#Melakukan login ke Github Packages via terminal
  #Menyimpan data personal access token
  export CR_PAT=ghp_
  #Melakukan login ke Github Package / Container Registry
  echo $CR_PAT | docker login ghcr.io -u sanikhsan --password-stdin

#Mengunggah image ke Github Packages
docker push ghcr.io/sanikhsan/a433-microservices/item-app:v1