﻿# language: ru

@lessons

Функционал: Интерактивная справка. Условия.

Сценарий: Условия.

	* Привет! В этом уроке я расскажу тебе про особенности использования условий в сценариях. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения

	* И загр^узим тестовый пример.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерУсловия1.feature"

	* Первый момент. Шаг, который является условием должен начинаться с ключевого сл^ова Если, и заканчиваться сл^овом - Тогда.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Если текущее окно имеет заголовок "Заголовок окна" Тогда' 'Пример шага-условия'
	* Если шаг является условием, то он помечается в редакторе специальной пометкой слева.	
	* Шаги, которые находятся внутри условия отделяются дополнительным отступом.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'И Пауза 1' 'Шаг внутри условия'

	* Второй момент. Есть шаги, которые специально созданы как условия.
	* Такие шаги помечаются специальной пометкой когда они объявляются в epf файлах.
	* Такие шаги выделены зеленым цветом в дереве известных шагов Vanessa Automation.
	* Вот примеры таких шагов.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 14 строку подсценарий "Шаги-условия"

	* Начиная с определенной версии в Vanessa Automation появилась возможность любой шаг выполнить как условие.
	* Для этого нужно в начале шага использовать ключевое слово Если. А в конец шага дописать слово Тогда.
	* Вот пример обычного шага который не является условием.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Дано Табличный документ "ИмяРеквизита" равен макету "ИмяМакета"' 'Обычный шаг'
	* А вот пример этого же шага, когда он используется как условие.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'Если Табличный документ "ИмяРеквизита" равен макету "ИмяМакета" Тогда' 'Обычный шаг стал условием'

	* Т.е. в шаге используется ключевое слово Если.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 22 "Если" 'Ключевое слово Если'
	* И в конце к тексту шага добавлено слово Тогда
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 22 "Тогда" 'Добавлено слово "Тогда" в конце шага'
	* Теперь этот шаг будет выполняться как условие.
	* Это значит, что если шаг во время выполнения вызовет исключения, то результат условия будет Ложь.
	* Иначе результат условия будет Истина.

	* Давай ещё рассмотрим один момент.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерУсловия2.feature"

	* Самый полный вариант как можно использовать условия показан в данном примере.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 17 строку подсценарий "Использование условий"

	* Синтаксис языка Vanessa Automation позволяет использовать ключевое слово ИначеЕсли.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 12 "ИначеЕсли" 'Ключевое слово ИначеЕсли'
	* А также ключевое слово Иначе
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 16 "Иначе" 'Ключевое слово Иначе'

	* Важный момент. Использование условий в тексте сценария должно быть обосновано.
	* Стоит избегать использование условий там, где без них можно обойтись.

	* На этом всё, переходи к следующему уроку интерактивной справки.
