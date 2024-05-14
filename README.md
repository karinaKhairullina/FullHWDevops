# Итоговая работа
## Задание:
### запаковать ваше любое веб приложение в контейнеры с использованием compose/minikube
### обеспечить логирование вашего приложения (loki/elasticksearch/clickhouse любой продукт на выбор даже не из списка, главное чтобы поддерживался как источник данных в grafana)
### сделать возможность просмотров ваших логов через grafana
### сборка зависимостей кода должна быть описана через multistage если зависимости имеются
### сборка и развертывание контейнеров должно быть реализовано через bash скрипты. Скрипты должны иметь параметр запуска -t который задает тег образа который будет собран или запущен

## Шаги:
Веб-приложение написано на python(django)

### 1. Запаковать веб-приложение в контейнеры с использованием compose/minikube
``` minikube start ```
``` kubectl apply -f deployment.yaml ```
``` kubectl get pods ```
### 2.Логирование+отображение логов в Grafana
Использовала Loki(дополнительно: prometheus)
+логи отображены в файле "file.log"
![Screen](https://github.com/karinaKhairullina/FullHWDevops/blob/main/Снимок%20экрана%202024-05-14%20в%2016.27.45.png)
![Screen](https://github.com/karinaKhairullina/FullHWDevops/blob/main/Снимок%20экрана%202024-05-14%20в%2020.54.01.png)

### 3.Сборка зависимостей кода через multistage
В Dockerfile содержится 2 stage

### 4.Bash скрипты
#### Скрипт для образа: build_image.sh
#### Скрипт для контейнера: deploy_container.sh
``` ./build_image.sh -t latest ```
``` ./deploy_container.sh -† latest ```
Запущенные скрипты:
![Screen](https://github.com/karinaKhairullina/FullHWDevops/blob/main/Снимок%20экрана%202024-05-14%20в%2018.45.25.png)

Рабочий вариант приложения:
![Screen](https://github.com/karinaKhairullina/FullHWDevops/blob/main/Снимок%20экрана%202024-05-14%20в%2021.04.50.png)











