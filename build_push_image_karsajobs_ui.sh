#! /bin/bash
# Membuat Shell Script untuk Build dan Push Docker Image

# Perintah untuk Build Docker image dari berkas Dockerfile yang disediakan
# sesuai dengan format Github Packages
docker build -t ghcr.io/sanikhsan/a433-microservices/karsajobs-ui:latest .

# Perintah untuk login ke Github Packages
  #Menyimpan data personal access token
  export CR_PAT=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
  #Melakukan login ke Github Package / Container Registry
  echo $CR_PAT | docker login ghcr.io -u sanikhsan --password-stdin

# Perintah untuk push image ke Github Packages
docker push ghcr.io/sanikhsan/a433-microservices/karsajobs-ui:latest