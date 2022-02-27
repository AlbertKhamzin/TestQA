﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Кнопки изменения текста

    Как разработчик
    Я хочу чтобы в редакторе можно было быстро комментировать выделенные строки и выполнять подобные действия
    Чтобы я мог быстро создавать сценарии

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'


Сценарий: Кнопка перевод текста

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor04"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient


	* Комментирование текущей строки
		
		И я перехожу к закладке с именем "ГруппаНастройки"
		И из выпадающего списка с именем "ЯзыкГенератораGherkin" я выбираю точное значение 'English'
		И Пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И я нажимаю на кнопку с именем 'VanessaEditorПеревестиТекстНаДругойЯзык'
		

	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(16, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"


	* Проверка результата
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(VanessaTabs.current.editor.getLineContent(VanessaTabs.current.editor.getPosition().LineNumber))'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		Тогда в логе сообщений TestClient есть строки:
			|'	And I save "1+1" in "ИмяПеременной1" variable'|






Сценарий: Обертка строки вертикальными линиями

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor04"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient



	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(16, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"


	* Комментирование текущей строки
		И я нажимаю на кнопку с именем 'VanessaEditorВыделитьСтрокиСценария'


	* Проверка результата
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(VanessaTabs.current.editor.getLineContent(VanessaTabs.current.editor.getPosition().LineNumber))'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		Тогда в логе сообщений TestClient есть строки:
			|'	\|\'И Я запоминаю значение выражения \\\'1+1\\\' в переменную "ИмяПеременной1"\'\|'|





Сценарий: Комментирование текста

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor04"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient



	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setSelection(16, 1, 17, 1);'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"


	* Комментирование текущей строки
		И я нажимаю на кнопку с именем 'VanessaEditorКомментироватьСтрокиСценария'

	* Проверка результата
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(VanessaTabs.current.editor.getLineContent(16));'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		Тогда в логе сообщений TestClient есть строки:
			|'//	И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"'|

	* Закрытие клиента тестирования
		И я закрыл все окна клиентского приложения
		И я закрываю сеанс TESTCLIENT

