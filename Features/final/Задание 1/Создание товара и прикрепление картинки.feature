#language: ru

@tree

Функционал: Создание товара и прикрепление картинки

Как Тестироващик я хочу
Создать товар 
чтобы прикрепить к нему картинку

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание товара и прикрепление картинки
	Дано Я открываю навигационную ссылку "e1cib/list/Справочник.Товары"
	
	*Создание и заполнение карточки
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И в поле с именем 'Наименование' я ввожу текст 'Товар'
	И в поле с именем 'Артикул' я ввожу текст '1234'

	
	И я нажимаю кнопку выбора у поля с именем "Поставщик"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке
		| 'Наименование'           |
		| 'Магазин "Мясная лавка"' |
	И в таблице "Список" я выбираю текущую строку
	
	*Запись элемента
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
		
	*Добавление картинки
	И В текущем окне я нажимаю кнопку командного интерфейса 'Файлы'
	И я нажимаю на кнопку с именем 'Создать'
	Тогда открылось окно 'Файл (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'Картинка'
	И я выбираю файл "$КаталогПроекта$\Features\final\Задание 1\Картинка.jpg" 
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я закрываю все окна клиентского приложения
	
	
			
		 
		

 		
		
	 