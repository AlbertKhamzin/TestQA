# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA42_Тестовые_фичи

@IgnoreOnCIMainBuild


Функциональность: ФичаДляПроверкиОшибокВФорматеСППР01
 

Сценарий: ФичаДляПроверкиОшибокВФорматеСППР01
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я вызываю исключение "Тест формирования ошибки для СППР."