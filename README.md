# mist-zsh
Простой скрипт для устновки OhMyZsh и личной кастомной темы. Написан для быстрой установки и конфигурации zsh на новые сервера:
- Меняет внешний вид терминала
- Добавляет подсветку синтаксиса
- Добавляет автодополнение
 

-----

### Как выглядит тема:
![alt text](./images/pic1.png)

-----

### Установка:
Чтобы установить на сервер, выполните на нем эту команду:
```
curl -o /tmp/script.sh https://raw.githubusercontent.com/its-mist/zsh/refs/heads/main/script.sh
bash /tmp/script.sh
rm /tmp/script.sh
```

-----

### Плагины:

Список устонавливаемых плагинов:
- zsh-syntax-highlighting
- zsh-autosuggestions
- docker
- docker-compose
