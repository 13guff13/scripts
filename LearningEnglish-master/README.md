LearningEnglish
===============
Работает приложение очень просто - вы создаете словарь, оно "прогоняет" вас по этому словарю, поправляя при необходимости. При каждом запуске нужно ответить правильно определенное кол-во раз, после чего программа скроется и через настроенный промежуток времени появиться вновь. Если вы перевели какое-то слово неверно, то оно будет повторяться снова и снова до тех пор, пока не будет введен верный ответ, причем повторные ответы правильные или нет - на статистику не влияют.
Для контроля процесса изучения в правом верхнем углу есть кнопка для просмотра статистики по словам.
Более подробно описание того зачем все это нужно, можно почитать [в статье на habrahabr.ru](http://habrahabr.ru/post/152831/)

## Настройки
Полный список умолчательных настроек можно найти в файле [config.json](https://github.com/ReanGD/LearningEnglish/blob/master/config.json). Если нужно что-то изменить, желательно делать это в config_user.json, который создается при запуске программы в корне проекта. Вынесение настроек в config_user.json - гарантирует, что они не будут перезатираться при обновлении.

[Подробнее в документации](https://github.com/ReanGD/LearningEnglish/wiki/Настройки)  
 
## Словарь
В словаре есть возможность:
* указывать несколько вариантов перевода через запятую
* использовать уточнения в круглых скобках
* заключать необязательную часть в квадратные скобки
* Импортировать слова из Lingualeo, [подробнее](https://github.com/ReanGD/LearningEnglish/wiki/Импорт)

[Подробнее в документации](https://github.com/ReanGD/LearningEnglish/wiki/Словарь)  

## Выбор слов для изучения
Случайным образом из словаря выбирается 50 (настраивается) неизученных слов + все изученные. Каждому из слов проставляется рейтинг, зависящий от того, насколько давно это слово повторялось, какой процент правильных ответов по этому слову, правильно ли вы в последний раз его перевели, в итоге чем хуже вы слово знаете тем выше у него проставляется рейтинг. Из полученного списка случайным образом выбираются слова для урока, причем, чем выше рейтинг, тем больше вероятность, что именно оно будет вам предложено для перевода.

## Установка и запуск
Работа проверялась на Windows-7 / Ubuntu-12 / MacOs-10

Необходимы:
* python 2.6 или 2.7
* tkinter

Запуск осуществляется через скрипт main.pyw(находится в корне проекта) без параметров.

[Подробнее в документации](https://github.com/ReanGD/LearningEnglish/wiki/Установка-и-запуск)  

## Синхронизация
Если скрипт используется одновременно на разных компьютерах, то его можно переместить в папку dropbox'а или аналогичного сервиса (в принципе достаточно выложить туда только словарь и файл со статистикой настроив соответственно пути в конфиге). Скрипт достаточно интеллектуален, что бы не затирать результаты уроков записанных другой копией и автоматически в начале каждого урока перечитывать словарь.

## Версии
Описание изменений и исправленных ошибок можно [посмотреть тут](https://github.com/ReanGD/LearningEnglish/wiki/Список-версий-с-описанием-всех-изменений-в-них)