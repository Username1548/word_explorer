# Захаров Михаил КИ22-17/1Б
Изначальные требования:
Приложение для для заучивания слов. Требования:
1. Регистрация и аутентификация пользователя.
2. Создания и управление профилем пользователя.
3. Добавление карточки.
4. Уведомления и напоминания.
5. Режим изучения слов.(Возможность перевернуть карточку чтобы увидеть определение)
6. Реализация трёх категорий слов:
- Изучаемые слова, которые только что добавили либо слова которые уже нужно повторить. - Знакомые слова, которые пользователь учит, но ещё не выучил.
- Знакомые слова, которые пользователь учит, но ещё не выучил.
- Выученные слова, которые пользователь уже знает очень хорошо.


В ходе разработки было принято решение отказаться от возможности реализации пунктов 2, 4 и 6.

Эти решения были приняты из-за трудностями со сроками выполнения.


# Паттерны:

## Использовался паттерн синглтон (Singletone) для работы с базой данных по двум причинам:

- Глобальный доступ к данным: Синглтон позволяет обеспечить глобальный доступ к данным базы данных из любой части приложения.
- Экономия ресурсов: Создание и уничтожение объекта базы данных может быть затратным в плане ресурсов. Используя паттерн синглтон, можно избежать создания множества экземпляров базы данных и сэкономить ресурсы мобильного устройства.

<img width="194" alt="Снимок экрана 2023-12-28 в 09 56 21" src="https://github.com/Username1548/word_explorer/assets/121106101/53213df8-e07c-49a8-8769-df9ce5899413">

## Точно не стоит использовать паттерн MVC (Model-View-Controller)

Так как Flutter предлагает свою собственную архитектуру под названием Flutter’s Widget Tree, которая представляет собой комбинацию паттернов MVC и композиционного паттерна. Использование MVC может создать дополнительную сложность и неудобство для разработчика.

# Установка приложения

## Сгенерировать .apk файл

- clone the application
- ```
  git clone https://github.com/Username1548/word_explorer.git
  ```  
- download [dart sdk](https://dart.dev/get-dart)
- download [flutter sdk](https://docs.flutter.dev/get-started/install)
- enter the comands into the terminal
```
  flutter pub get
  flutter build apk --release
  ```

Сгенерированный файл будет здесь: Project\build\app\outputs\apk\release\app-release.apk
## Установить сгенерированный файл на телефон (Android)

1. Скачать установочный файл на компьютер:

2. Если .apk файл был сгенерирова самостоятельно, то он будет здесь: **Project\build\app\outputs\apk\release\app-release.apk**
 
Либо скачать этот же файл с яндекс диска: **https://disk.yandex.ru/d/fNRvdnGoRbqC_w**

3. Переслать этот файл на мобильное устройство (либо скачивать сразу не него).

4. Установить скачанный файл (следовать указаниям системы).
