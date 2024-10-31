# Projeto Jellyfin com Docker

Este repositório contém a configuração para executar o servidor Jellyfin em um contêiner Docker. O Jellyfin é um servidor de mídia que permite o gerenciamento e o streaming de arquivos de mídia como vídeos, músicas e fotos.

# Build
Com o Dockerfile localizado no diretório atual, construa a imagem Docker usando o comando:

```
docker build -t jellyfin-server .
```

Depois de construir a imagem, execute o contêiner com o seguinte comando:

```
docker run -d \
  --name jellyfin-server \
  -p 8096:8096 \
  -p 8920:8920 \
  -v $(pwd)/config:/config \
  -v $(pwd)/Music:/media/Music \
  -v $(pwd)/Video:/media/Video \
  jellyfin-server
```


Onde media/Music e media/Video são apenas diretórios de exemplo para serem usado no jellyfin
A porta 8096 permite o acesso HTTP e a porta 8920 permite o acesso HTTPS.