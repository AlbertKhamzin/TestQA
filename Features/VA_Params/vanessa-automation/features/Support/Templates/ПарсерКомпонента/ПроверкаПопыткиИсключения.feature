# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты

@IgnoreOnCIMainBuild
@tree

Функционал: Проверка попытки исключения





Сценарий: Проверка попытки исключения
	Попытка
		И Я запоминаю значение выражения '1' в переменную "ИмяПеременной1"
		Тогда я вызываю исключение "Текст исключения"
		И Я запоминаю значение выражения '2' в переменную "ИмяПеременной2"
	Исключение	
		И Я запоминаю значение выражения '3' в переменную "ИмяПеременной3"


	Попытка
		И Я запоминаю значение выражения '1' в переменную "ИмяПеременной1"
		И Я запоминаю значение выражения '2' в переменную "ИмяПеременной2"
	Исключение	
		И Я запоминаю значение выражения '3' в переменную "ИмяПеременной3"

	И Я запоминаю значение выражения '4' в переменную "ИмяПеременной4"
