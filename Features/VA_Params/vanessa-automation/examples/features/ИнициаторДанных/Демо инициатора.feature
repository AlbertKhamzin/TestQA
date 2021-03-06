
# Как запустить сценарий: 
# 1) Сформировать тестовые базы ("..\vanessa-automation\tools\1 PrepareCheck.cmd")
# 2) Прописать, и запустить ..vanessa-automation\tools\ServiceBases\v83ServiceBase83xx
# 3) Открыть Ванессу, загрузить фичу, выполнить.
# Более подробно функционал здесь https://infostart.ru/public/1283198/

Функционал: Проверка и демонстрация методов плагина ИнициаторДанных

Как Разработчик
Я Хочу: 	- программно создавать ссылочные объекты при работе сценария
			- использовать имена переменных, а также идентификаторы предопределенных данных в качестве указателей на ссылку, при написании сценария
			- выполнять проверку заполненности реквизитов, движений, табличных частей, описывая эталон в теле скрипта

Сценарий: Подготовка окружения
Дано *Я создаю тестовые данные
	И я нахожу или создаю ссылки
		# Демонстрация создания группы справочника.
		# Здесь два параметра. Первый - имя менеджера, второй - имя переменной, для помещения созданной (или найденной) ссылки.
		И я нахожу или создаю группу объекта "Справочники.Контрагенты" с именем "ГруппаКонтрагентов"
		# Демонстрация создания элемента справочника, по аналогии с созданием группы.
		# Элементы создаются с автоматически генерируемым GUID, который привязан и уникален в разрезе:
		# - имени фичи (текст тега "Функционал")
		# - имени менеджера
		# - имени переменной				
		И я нахожу или создаю объект "Справочники.Контрагенты" с именем "Контрагент"
		#Демонстрация заполнения реквизитов ранее созданной ссылки по переданной таблице
		И я заполняю реквизиты объекта "Контрагент" по таблице:
		# При создании\проверке реквизитов всегда должна использоваться таблица с колонками "Имя, Значение" 
		|Имя		|Значение			|
		# Демонстрация использования переменной "ГруппаКонтрагентов" как ссылки в теле скрипта
		|Родитель	|ГруппаКонтрагентов	| 
		# Демонстрация функционала приведения идентификаторов предопределенных данных:
		# здесь "ЮридическоеЛицо" - значение перечисления "ЮридическоеФизическоеЛицо", однако в таблице можно указывать
		# идентификатор значения перечисления, либо ИмяПредопределенныхДанных.
		|ЮрФизЛицо	|ЮридическоеЛицо	|
		И я нахожу или создаю объект "Справочники.Организации" с именем "Организация"
		И я нахожу или создаю объект "Справочники.Товары" с именем "Товар1"
	И я устанавливаю константы
		И я устанавливаю константу "ОрганизацияПоУмолчанию" в значение переменной "Организация"

Сценарий: Проведение поступления с контрагентом, не включенным в черный список
Дано Я создаю тестовые данные
	# В одной фиче может быть несколько сценариев, при этом стоит стремиться какие-то основные вещи (Организации, 
	# Контрагенты, заполнение календаря, установка констант, etc) создавать в первом сценарии "ПодготовкаОкружения".
	#  В прочих же только контекст.
	И я нахожу или создаю ссылки
		# Демонстрация создания документа (объекта с поддержкой оси времени):	
		И я нахожу или создаю объект "Документы.ПоступлениеТоваров" с именем "ДокПТУ1" на дату 01.02.2020
		И я заполняю реквизиты объекта "ДокПТУ1" по таблице:
		|Имя		|Значение	|
		|Поставщик	|Контрагент	|
		И я заполняю табличную часть "Товары" объекта "ДокПТУ1" по таблице:
		|Номенклатура	|Количество	|Сумма	|
		|Товар1			|10			|100	|
# Демонстрация проверки заполнения - если проверка заполнения не будет выполнена, инициатор выбросит исключение. Текст
# исключения собирается из сообщений пользователю события системы "ОбработкаПроверкиЗаполнения"
Когда я выполняю проверку заполнения объекта "ДокПТУ1"
# Демонстрация проведения - если проведение завершилось с ошибкой, инициатор выбросит исключение. Текст
# исключения собирается из сообщений пользователю события системы "ОбработкаПроведения", а также описанием самой ошибки.
Тогда я записываю документ "ДокПТУ1" в режиме "Проведение"
# Демонстрация функционала проверки перечня реквизитов по таблице геркина:
И я проверяю реквизиты объекта "ДокПТУ1" по таблице:
|Имя		|Значение	|
|Проведен	|Истина		|
|Организация|Организация|

# Демонстрация проверки заполнения субколлекции объекта - табличной части, или движений как в этом случае
И Я проверяю, что движения документа "ДокПТУ1" по регистру "Запасы" идентичны таблице:
|Номенклатура	|Количество	|Поставщик	|
|Товар1			|10			|Контрагент	|

Сценарий: Проведение поступления с контрагентом, включенным в черный список
Дано Я создаю тестовые данные
	И я записываю документ "ДокПТУ1" в режиме "ОтменаПроведения"
	# Демонстрация создания записей регистра сведений:
	И я создаю записи регистра сведений "ЧерныйСписокКонтрагентов" по таблице:
	|Период		|Контрагент|Включен	|
	|01.01.2020	|Контрагент|Истина	|
	И я записываю документ "ДокПТУ1" в режиме "Проведение"
	И я проверяю реквизиты объекта "ДокПТУ1" по таблице:
	|Имя		|Значение	|
	|Проведен	|Ложь		|

Сценарий: Проведение поступления с контрагентом, исключенным из черного списка
Дано Я создаю тестовые данные
	И я записываю документ "ДокПТУ1" в режиме "ОтменаПроведения"
	# Демонстрация создания записей регистра сведений:
	И я создаю записи регистра сведений "ЧерныйСписокКонтрагентов" по таблице:
	|Период		|Контрагент|Включен	|
	|02.01.2020	|Контрагент|Ложь	|
	И я записываю документ "ДокПТУ1" в режиме "Проведение"
	И я проверяю реквизиты объекта "ДокПТУ1" по таблице:
	|Имя		|Значение	|
	|Проведен	|Истина		|
	
Сценарий: очистка окружения
Дано Я откатываю изменения