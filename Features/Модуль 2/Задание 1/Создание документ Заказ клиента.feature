﻿#language: ru
@дерево
@ExportScenarios

Функционал: Создание документ Заказ клиента

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание документ Заказ клиента

	И я проверяю или создаю для документа "Заказ" объекты:
		| 'Ссылка'                                                         | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта' | 'ВидЦен'                                                             | 'Организация'                                                            | 'СостояниеЗаказа'              | 'Автор'                                                                   | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=b9b818c04d9a1a6e11ed514ac429e30d' | 'False'           | '000000046' | '21.10.2022 17:17:25' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=b9b818c04d9a1a6e11ed514ac429e30c' | 'e1cib/data/Справочник.Склады?ref=b9b818c04d9a1a6e11ed514ac429e30e' | ''       | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'Enum.СостоянияЗаказов.Открыт' | 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76a026436bc' | 10      |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                         | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=b9b818c04d9a1a6e11ed514ac429e30d' | 'e1cib/data/Справочник.Товары?ref=b9b818c04d9a1a6e11ed514ac429e30b' | 10     | 1            | 10      |

