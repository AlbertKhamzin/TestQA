#language: ru

@tree
@ПроверкаОтчетов

Функционал: <описание фичи>

Как Тестировщик я хочу
протестировать отчеты 
чтобы у пользователя не возникнет проблем с отчетами

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	
Сценарий: _0901 подготовительный сценарий
	Когда экспорт основных данных
	Когда экспорт документов закупок
	И я выполняю код встроенного языка на сервере без контекста
	"""bsl
		РежимПроведение = РежимЗаписиДокумента.Проведение;
		Для НомерДокумента = 1 По 3 Цикл
			Документы.PurchaseOrder.НайтиПоНомеру(НомерДокумента).ПолучитьОбъект().Записать(РежимПроведение);
		КонецЦикла;
		Для НомерДокумента = 1 По 2 Цикл
			Документы.PurchaseInvoice.НайтиПоНомеру(НомерДокумента).ПолучитьОбъект().Записать(РежимПроведение);
		КонецЦикла;
	"""
	
Сценарий: _0902 Проверка отчета D0010_ItemsInfo (Информация о номенклатуре)
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/app/Report.D0010_ItemsInfo"
	И я нажимаю на кнопку с именем 'FormGenerate'
	Дано табличный документ "Result" равен макету "Информация о номенклатуре" по шаблону
	И в табличном документе "РеквизитТабличныйДокумент" ячейка с адресом "R8C3" равна "787889899" по шаблону
	
Сценарий: _0903 Проверка отчета D1001_Purchases (Отчет по закупкам)
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/app/Report.D1001_Purchases"
	И я нажимаю на кнопку с именем 'FormGenerate'
	И я жду когда в табличном документе "Result" заполнится ячейка "R2C1" в течение 60 секунд
	И я жду, что в табличном документе "Result" ячейка "R2C2" станет равна "Период: 01.01.2022 - 31.01.2022" в течение 60 секунд
	Дано табличный документ "Result" равен макету "Отчет по закупкам" по шаблону
		
