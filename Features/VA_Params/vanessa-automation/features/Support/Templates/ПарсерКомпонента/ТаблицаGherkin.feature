# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты

@IgnoreOnCIMainBuild
@tree

//Комментарий фичи
Функционал: Таблица Gherkin

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 


Сценарий: Сценарий таблица Gherkin
	И шаг VA проверяющий тип параметров в таблице
		|'Колонка1'|'Колонка2' |
		|'Значение1'|'Значение2'|
		
		|'Колонка3'|"Колонка4" |
		|  1       |     2    |
		
		|'Колонка5'|'Колонка6' |
		|  08.04.81|  08.04.1981|
