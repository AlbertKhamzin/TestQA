# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты
@tree

@IgnoreOnCIMainBuild

Функциональность: ПроверкаПопыткиИсключения1



Сценарий: ПроверкаПопыткиИсключения1
	Попытка
		И я вызываю исключение "Текст исключения"
		И Я запоминаю значение выражения '1+1' в переменную "ИмяПеременной"
	Исключение	
		И Я запоминаю значение выражения '2+2' в переменную "ИмяПеременной"
		И я запоминаю текст ошибки в переменную "ТекстОшибки"
		
	И я вывожу значение переменной "ИмяПеременной"
	
