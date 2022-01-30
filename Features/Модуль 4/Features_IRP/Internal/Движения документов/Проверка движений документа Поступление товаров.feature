﻿#language: ru

@tree
@ДвиженияДокументов

Функционал: Проверка движения документа Поступление товаров

Как Тестировщик я хочу
проверить движения документа Поступление товаров 
чтобы убедиться что документ делает движения по нужным регистрам 

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: _0501 подготовительный сценарий (движения документа Поступление товаров)
	Когда экспорт основных данных
	Когда загрузка документа ПТиУ
	И я закрываю все окна клиентского приложения
	Когда Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	И в таблице 'List' я выделяю все строки
	И в таблице "List" я нажимаю на кнопку с именем 'ListContextMenuPost'
	Тогда не появилось окно предупреждения системы
	И я выполняю код встроенного языка на сервере без контекста
		|'Документы.PurchaseInvoice.НайтиПоНомеру(100001).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		
Сценарий: _0502 проверка движений документа ПТиУ по регистру R1001 Закупки
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	Когда открылось окно 'Поступления товаров и услуг'
	И в таблице "List" я перехожу к строке
		|'Номер'  |
		|'100 001'|
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	Тогда открылось окно 'Движения документа'
	И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1001 Закупки'
	И я нажимаю на кнопку с именем 'GenerateReport'
	Тогда табличный документ "ResultTable" равен:
		| 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                           | ''                        | ''                                     | ''                  |
		| 'Движения документа по регистрам'                            | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                           | ''                        | ''                                     | ''                  |
		| 'Регистр  "R1001 Закупки"'                                   | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                           | ''                        | ''                                     | ''                  |
		| ''                                                           | 'Period'              | 'Resources'  | ''      | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                           | ''                        | ''                                     | 'Attributes'        |
		| ''                                                           | ''                    | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                                     | 'Характеристика'          | 'Ключ строки'                          | 'Отложенный расчет' |
		| ''                                                           | '29.01.2022 11:57:14' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | 'Услуга'                  | 'd71ed3cd-5f08-4e68-a856-e838c1264c85' | 'Да'                |
		| ''                                                           | '29.01.2022 11:57:14' | '1'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | 'Услуга'                  | 'd71ed3cd-5f08-4e68-a856-e838c1264c85' | 'Нет'               |
		| ''                                                           | '29.01.2022 11:57:14' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru description is empty'      | 'USD'    | 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | 'Услуга'                  | 'd71ed3cd-5f08-4e68-a856-e838c1264c85' | 'Нет'               |
		| ''                                                           | '29.01.2022 11:57:14' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | 'Услуга'                  | 'd71ed3cd-5f08-4e68-a856-e838c1264c85' | 'Нет'               |
		| ''                                                           | '29.01.2022 11:57:14' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | 'Услуга'                  | 'd71ed3cd-5f08-4e68-a856-e838c1264c85' | 'Нет'               |
		| ''                                                           | '29.01.2022 11:57:14' | '2'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | 'Товар без характеристик' | '9ad6fce3-fa07-449c-b75a-5ce20598f603' | 'Да'                |
		| ''                                                           | '29.01.2022 11:57:14' | '2'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | 'Товар без характеристик' | '9ad6fce3-fa07-449c-b75a-5ce20598f603' | 'Нет'               |
		| ''                                                           | '29.01.2022 11:57:14' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru description is empty'      | 'USD'    | 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | 'Товар без характеристик' | '9ad6fce3-fa07-449c-b75a-5ce20598f603' | 'Нет'               |
		| ''                                                           | '29.01.2022 11:57:14' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | 'Товар без характеристик' | '9ad6fce3-fa07-449c-b75a-5ce20598f603' | 'Нет'               |
		| ''                                                           | '29.01.2022 11:57:14' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | 'Товар без характеристик' | '9ad6fce3-fa07-449c-b75a-5ce20598f603' | 'Нет'               |
	
	И я закрываю все окна клиентского приложения

Сценарий: _0502 проверка движений документа ПТиУ по регистру R1021 Взаиморасчеты с поставщиками
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	Когда открылось окно 'Поступления товаров и услуг'
	И в таблице "List" я перехожу к строке
		|'Номер'  |
		|'100 001'|
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	Тогда открылось окно 'Движения документа'
	И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1021 Взаиморасчеты с поставщиками'
	И я нажимаю на кнопку с именем 'GenerateReport'
	Тогда табличный документ "ResultTable" содержит строки по шаблону:
		| 'Поступление товаров и услуг 100 001 от 29.01.2022 11:57:14' | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| 'Движения документа по регистрам'                            | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| 'Регистр  "R1021 Взаиморасчеты с поставщиками"'              | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| ''                                                           | 'Record type' | 'Period'              | 'Resources' | 'Dimensions'             | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | 'Attributes'        | ''                             |
		| ''                                                           | ''            | ''                    | 'Сумма'     | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Контрагент'  | 'Партнер'     | 'Соглашение'                 | 'Документ основание' | 'Отложенный расчет' | 'Закрытие авансов поставщиков' |
		| ''                                                           | 'Приход'      | '29.01.2022 11:57:14' | ''          | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Да'                | ''                             |
		| ''                                                           | 'Приход'      | '29.01.2022 11:57:14' | '343,6'     | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                           | 'Приход'      | '29.01.2022 11:57:14' | '400'       | 'Собственная компания 1' | ''                          | 'ru description is empty'      | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                           | 'Приход'      | '29.01.2022 11:57:14' | '400'       | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                           | 'Приход'      | '29.01.2022 11:57:14' | '400'       | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
	И я закрываю все окна клиентского приложения
	
		
