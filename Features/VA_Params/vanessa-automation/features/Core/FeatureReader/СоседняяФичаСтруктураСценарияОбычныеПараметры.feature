# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA27_Макеты_для_проверки_парсинга

@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Подключение сценария как шага 4
	Как Разработчик
	Я Хочу чтобы я мог в качестве шага указывать уже существующий сценарий из соседней фичи
	Чтобы можно было проще использовать шаги фичи
 

Структура сценария: Я вызываю шаг из соседней ФИЧИ содержащей структуру сценария проверка передачи обычных параметров "ОбычныйПараметр"

#	Когда я вызвал обычный шаг сценария
	И в структуре сценария есть шаг с обычным параметром "ОбычныйПараметр" и с параметром <Параметр> и значением <Значение>
	
Примеры:
  | Параметр | Значение          |
  | Парам1   | 3                 |
  | Парам2   | 4                 |
  | Парам3   | "ОбычныйПараметр" |