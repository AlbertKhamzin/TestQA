# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

@IgnoreOnCIMainBuild


Функциональность: VAEditor34
 

Сценарий: VAEditor34
	// этот сценарий занимает строки 22 и 23 в своей фиче
	И Я вызываю экспортный сценарий, который не вызывает исключение



	//важно, чтобы строки 22 и 23 были заняты в этой фиче
	И Я запоминаю значение выражения '1+1' в переменную "ИмяПеременной1"
	И Я запоминаю значение выражения '2+2' в переменную "ИмяПеременной2"
	И Я запоминаю значение выражения '3+3' в переменную "ИмяПеременной3"
	
	
	