# language: ru
# encoding: utf-8
#parent uf:
@UF2_запуск_сценариев_на_выполнение
#parent ua:
@UA11_запускать_сценарии_на_выполнение

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839

@tree

Функционал: Перейти к строке с ошибкой
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Перейти к строке с ошибкой
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДляПроверкиПереходаКОшибке"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	
	И в таблице "ДеревоТестов" я перехожу к строке:
		| 'Наименование'                       |
		| 'ДляПроверкиПереходаКОшибке.feature' |

	
	И я выбираю пункт контекстного меню с именем 'ДеревоПерейтиКСтрокеСОшибкой' на элементе формы с именем "ДеревоТестов"
	И в таблице "ДеревоТестов" поле "Наименование" имеет значение "ДляПроверкиПереходаКОшибке01"

	
	И я выбираю пункт контекстного меню с именем 'ДеревоПерейтиКСтрокеСОшибкой' на элементе формы с именем "ДеревоТестов"
	И в таблице "ДеревоТестов" поле с именем "ДеревоТестовИмя" имеет значение 'И я вызываю исключение "Исключение01"'
	
	И я выбираю пункт контекстного меню с именем 'ДеревоПерейтиКСтрокеСОшибкой' на элементе формы с именем "ДеревоТестов"
	И в таблице "ДеревоТестов" поле "Наименование" имеет значение "ДляПроверкиПереходаКОшибке02"
	
	И я выбираю пункт контекстного меню с именем 'ДеревоПерейтиКСтрокеСОшибкой' на элементе формы с именем "ДеревоТестов"
	И в таблице "ДеревоТестов" поле с именем "ДеревоТестовИмя" имеет значение 'И я вызываю исключение "Исключение02"'	