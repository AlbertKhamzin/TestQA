#language: ru

@Продажи
@tree

Функционал: Загрузка НСИ для тестирования заказов

Как Менеджер по продажам я хочу
создавать документы Заказ клиента 
чтобы управлять продажами 

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

@Продажи
Сценарий: Загрузка НСИ для тестирования заказов
* Загрузка необходимых НСИ
	И заполняю значение всех констант значениями по умолчанию
	И загружаю тестовый набор элементов справочника Организации
	И загружаю элементы справочника Склады
	И загружаю тестовый набор элементов справочника Контрагенты из папки 'Покупатели'
	И загружаю тестовый набор элементов справочника Товары

