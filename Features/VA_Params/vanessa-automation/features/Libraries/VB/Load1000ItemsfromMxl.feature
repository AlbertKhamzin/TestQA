# language: ru
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA1_Работать_с_макетами_данных

@IgnoreOnWeb

Функционал: Загрузка тысячи элементов справочника из Макета
	Как Пользователь VB
 	Я хочу загружать большое количество однотипных элементов из макета
    Чтобы Автоматизировать рутинную деятельность разработчика


Контекст:
 	Дано:  Имеется метаданное "Справочник.Справочник1"
	и существует макет "ТысячаЭлементовСправочника1"


Сценарий: Загрузка тысячи элементов справочника с одинаковым наименованием из Макета
    Когда я удаляю все элементы справочника "Справочник1"
    И я загружаю макет "ТысячаЭлементовСправочника1"
    Тогда В списке элементов справочника "Справочник1" существует не менее 1000 элементов