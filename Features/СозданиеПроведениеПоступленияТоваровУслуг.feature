#language: ru

@tree

Функционал: Создание поступления

Как Менеджер по продажам я хочу
создание документа документа 

Контекст: Дано Я открыл новый сеанс TestClient или подключил уже существующий
//тут должно быть что то красивое
Сценарий: создание документа Поступление товаров услуг
*Открытие формы документа
	И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров'
	Тогда открылось окно 'Поступления товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Поступление товара (создание)'
*Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И из выпадающего списка с именем "Поставщик" я выбираю точное значение 'Мосхлеб ОАО'
*Заполнение табличной части 
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Торт '
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1,00'
	И в таблице "Товары" я завершаю редактирование строки
*Запись документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля "Номер" как "$Номер$"	
*Проведение
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Поступление товара (создание) *' в течение 20 секунд
*Проверка что документ создан
	И таблица "Список" содержит строки:
		| 'Номер' |
		| '$Номер$' |
		
