# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA46_Макеты_для_загрузки_и_обработки_фич

@IgnoreOnCIMainBuild



Функциональность: Пример работы с VA Editor.


Сценарий: Демо сценарий 01.
	И Я запоминаю значение выражения '1+1' в переменную "ИмяПеременной"
	И Я запоминаю значение выражения '2+2' в переменную "ИмяПеременной"
	Затем Я вызываю подсценарий
	И Я запоминаю значение выражения '5+5' в переменную "ИмяПеременной"
	И Я запоминаю значение выражения '6+6' в переменную "ИмяПеременной"
	И Я запоминаю значение выражения '7+7' в переменную "ИмяПеременной"
	
