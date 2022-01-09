﻿#language: ru

@tree

Функционал: проверка создания клиента

Как Оператор я хочу
Создать клиента 
чтобы вести клиентскую базу 

Сценарий: проверка создания клиента

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

* Открытие формы создания клиента
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Контрагенты'
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Контрагент (создание)'
	
* Заполнение наименования клиента
	И В поле с именем 'Наименование' я ввожу текст 'Безенчук и сыновья'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
		
* Заполнение номера телефона клиента
	Когда открылось окно 'Контрагент (создание) *'
	И в поле с именем 'Телефон' я ввожу текст '11111111111111'
		
* Сохранение
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля "Код" как "Код"  
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'

* Проверка сохранения по коду
	И я жду закрытия окна 'Контрагент (создание) *' в течение 20 секунд
	Тогда таблица "Список" содержит строки:
		| 'Код'   |
		| '$Код$' |
