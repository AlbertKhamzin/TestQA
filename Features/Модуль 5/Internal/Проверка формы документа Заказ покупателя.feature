﻿#language: ru

@tree

Функционал: Проверка формы документа Заказ покупателя

Как Тестировщик я хочу
Проверить что форма документа Заказ покупателя функционирует без сбоев 
чтобы обеспечить надлежащий уровень качества собираемых релизов 

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения
	
Сценарий: Проверка шапки
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'            |
		| 'Клиент 1 (1 соглашение)' |
	И в таблице "List" я выбираю текущую строку
	Если элемент формы с именем "Company" Стал равен '' Тогда
		И я нажимаю кнопку выбора у поля с именем "Company"
		И в таблице "List" я перехожу к строке:
			| 'Код' |
			| '1'   |
		И в таблице "List" я выбираю текущую строку
