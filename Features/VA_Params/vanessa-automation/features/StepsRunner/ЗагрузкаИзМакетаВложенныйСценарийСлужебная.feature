# language: ru
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA1_Работать_с_макетами_данных

@IgnoreOnCIMainBuild
@ExportScenarios


Функциональность: Проверка работы загрузки из макета, когда используется вложенный сценарий служебная фича
 

Сценарий: Я вызываю вложенный сценарий содержащий загрузку из макета

	Когда я создаю fixtures по макету "Макет"