# Docker commands

## Comandos para rodar containers únicos
### Criar container baseado em uma imagem
```bash
docker run nome/imagem
```

### mapear volumes entre a maquina hospedeira e o container
```bash
docker run ngix -v caminho/hospedeiro:caminho/no/container`
```


### mapear portas enre a maquina hospedeira e o container
```bash
docker run ngix -p 8080:80
```
- 8080 é a porta na maquina hospedeira
- 80 é a posta vinculada no container

### Rodar o contaner em segundo plano
A opção `-d` ou `--detach` no Docker é usada para rodar o container em segundo plano (ou seja, em modo "detached"). Quando você inicia um container com essa opção, o Docker retorna o controle do terminal para você e executa o container em segundo plano.

Por exemplo, o comando `docker run -d nome/imagem` iniciará o container `nome/imagem` em segundo plano. Você não verá nenhuma saída no terminal porque o container está rodando em segundo plano, mas você pode usar o comando `docker ps` para ver os containers que estão atualmente rodando.

### Acessar o terminal dentro de um container
```bash
docker exec -it eager_chebyshev /bin/bash
```

### Visualizar os containers em execução
```bash
docker ps
```

### Parar os containers em execução
```bash
docker stop nome-container
```

## Resumo:
- **Dockerfile**: criar imagens personalizadas
- **Imagem**: cria containers
- **Container**: maquina virtual
- **Docker Compose**: automatização da criação dos container utilizando as imagens