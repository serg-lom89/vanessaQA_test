#language: ru

@tree

Функционал: Создание номенклатуры
Переменные:
	
	КоличествоЭлементов = 10;
    СсылкаЕдИзм         =     "e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b";
	ВидНоменклатуры     = "e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878";

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Создание номенклатуры
	И Я запоминаю в переменную "НомерШага" значение 0
	И Я делаю "КоличествоЭлементов" раз
		И Я запоминаю значение выражения '$НомерШага$+1' в переменную "НомерШага"
		И Я запоминаю значение выражения '"Товар №"+$НомерШага$' в переменную "НазваниеТовара"

		И я проверяю или создаю для справочника "Items" объекты:
			| 'Description_en'   | 'Description_ru'   | 'Ref'                                                             | 'ItemType'          | 'Unit'          |
			| '$НазваниеТовара$' | '$НазваниеТовара$' | '{"e1cib/data/Catalog.Items?ref="+StrReplace(New UUID, "-", "")}' | '$ВидНоменклатуры$' | '$СсылкаЕдИзм$' |

	