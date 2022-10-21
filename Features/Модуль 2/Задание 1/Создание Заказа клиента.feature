﻿#language: ru
@дерево

Функционал: Создание Заказа клиента(общая фича)

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание Заказа клиента(общая фича)

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель' | 'ЭтоГруппа' | 'Код'       | 'Наименование'       | 'Регион' | 'Индекс' | 'Страна' | 'Город' | 'Улица' | 'Дом' | 'Телефон' | 'ЭлектроннаяПочта' | 'Факс' | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта' | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=b9b818c04d9a1a6e11ed514ac429e30c' | 'False'           | ''         | 'False'     | '000000018' | 'Покупатель оптовый' | ''       | ''       | ''       | ''      | ''      | ''    | ''        | ''                 | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | ''               |          |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=b9b818c04d9a1a6e11ed514ac429e30a' | 'False'           | ''         | 'False'     | '000000017' | 'Поставщик оптовый'  | ''       | ''       | ''       | ''      | ''      | ''    | ''        | ''                 | ''     | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | ''               |          |           |

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |

	// Справочник.Пользователи

	И я проверяю или создаю для справочника "Пользователи" объекты:
		| 'Ссылка'                                                                  | 'ПометкаУдаления' | 'Код'           | 'Наименование'  | 'ИдентификаторПользователяИБ'          |
		| 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76a026436bc' | 'False'           | 'Администратор' | 'Администратор' | '0f42f230-0f1f-42db-b5f3-f7b2b01f2aec' |

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=b9b818c04d9a1a6e11ed514ac429e30e' | 'False'           | '000000006' | 'Центральный'  | 'False'          |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель' | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                    | 'Штрихкод' | 'Описание' | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=b9b818c04d9a1a6e11ed514ac429e30b' | 'False'           | ''         | 'False'     | '000000100' | 'Товар'        | '1111'    | 'e1cib/data/Справочник.Контрагенты?ref=b9b818c04d9a1a6e11ed514ac429e30a' | ''             | 'Enum.ВидыТоваров.Товар' | ''         | ''         | 1        |

	// Документ.Заказ

	И я проверяю или создаю для документа "Заказ" объекты:
		| 'Ссылка'                                                         | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта' | 'ВидЦен'                                                             | 'Организация'                                                            | 'СостояниеЗаказа'              | 'Автор'                                                                   | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=b9b818c04d9a1a6e11ed514ac429e30d' | 'False'           | '000000046' | '21.10.2022 17:17:25' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=b9b818c04d9a1a6e11ed514ac429e30c' | 'e1cib/data/Справочник.Склады?ref=b9b818c04d9a1a6e11ed514ac429e30e' | ''       | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'Enum.СостоянияЗаказов.Открыт' | 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76a026436bc' | 10      |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                         | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=b9b818c04d9a1a6e11ed514ac429e30d' | 'e1cib/data/Справочник.Товары?ref=b9b818c04d9a1a6e11ed514ac429e30b' | 10     | 1            | 10      |

