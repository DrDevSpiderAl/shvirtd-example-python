#!/bin/bash

echo "Установка Docker"
if ! command -v docker &> /dev/null; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
fi

echo "Клонирование репозитория"
cd /opt
sudo rm -rf shvirtd-example-python
sudo git clone https://github.com/DrDevSpiderAl/shvirtd-example-python.git

echo "Запуск проекта"
cd shvirtd-example-python
sudo docker compose up -d

echo "Контейнеры развернуты"
