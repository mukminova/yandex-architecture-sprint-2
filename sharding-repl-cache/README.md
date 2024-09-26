# mongo-sharding

## Как запустить

Запускаем приложение

```shell
docker compose up -d
```

Подключитесь к серверу конфигурации и сделайте инициализацию:

```shell
./scripts/configSrv-init.sh
```


Инициализируйте шард 1:

```shell
./scripts/shard1-init.sh
```

Инициализируйте шард 2:

```shell
./scripts/shard2-init.sh
```

Инцициализируйте роутер и наполните его тестовыми данными:

```shell
./scripts/mongo-init.sh
```

## Как проверить

Количество документов на shard1
```shell
./scripts/document-count-shard1.sh
```

Количество документов на shard2
```shell
./scripts/document-count-shard2.sh
```

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

### Если вы запускаете проект на предоставленной виртуальной машине

Узнать белый ip виртуальной машины

```shell
curl --silent http://ifconfig.me
```

Откройте в браузере http://<ip виртуальной машины>:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs