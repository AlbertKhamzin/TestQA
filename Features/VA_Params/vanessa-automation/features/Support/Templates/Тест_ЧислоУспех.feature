# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA43_Модульные_тесты

@IgnoreOnCIMainBuild
@tree
@classname=ModuleExceptionPath

Функционал: МодульныеТестыVA.Тест_ЧислоУспех
	Как Разработчик
	Я Хочу чтобы возвращаемое значение метода совпадало с эталонным
	Чтобы я мог гарантировать работоспособность метода

@OnServer
Сценарий: ПроверитьРавенствоЧислаНаИстину
	И я выполняю код встроенного языка на сервере
	| 'Тест_ЧислоУспех.ПроверитьРавенствоЧислаНаИстину(Контекст());' |

@OnServer
Сценарий: ПроверитьНеРавенствоЧислаНаИстину
	И я выполняю код встроенного языка на сервере
	| 'Тест_ЧислоУспех.ПроверитьНеРавенствоЧислаНаИстину(Контекст());' |

@OnServer
Сценарий: ПроверитьЧислоБольшеНаИстину
	И я выполняю код встроенного языка на сервере
	| 'Тест_ЧислоУспех.ПроверитьЧислоБольшеНаИстину(Контекст());' |

@OnServer
Сценарий: ПроверитьЧислоБольшеИлиРавноНаИстину
	И я выполняю код встроенного языка на сервере
	| 'Тест_ЧислоУспех.ПроверитьЧислоБольшеИлиРавноНаИстину(Контекст());' |

@OnServer
Сценарий: ПроверитьЧислоМеньшеНаИстину
	И я выполняю код встроенного языка на сервере
	| 'Тест_ЧислоУспех.ПроверитьЧислоМеньшеНаИстину(Контекст());' |

@OnServer
Сценарий: ПроверитьЧислоМеньшеИлиРавноНаИстину
	И я выполняю код встроенного языка на сервере
	| 'Тест_ЧислоУспех.ПроверитьЧислоМеньшеИлиРавноНаИстину(Контекст());' |

Сценарий: ПроверитьРавенствоЧислаНаИстину
	И я выполняю код встроенного языка
	| 'Тест_ЧислоУспех.ПроверитьРавенствоЧислаНаИстину(Контекст());' |

Сценарий: ПроверитьНеРавенствоЧислаНаИстину
	И я выполняю код встроенного языка
	| 'Тест_ЧислоУспех.ПроверитьНеРавенствоЧислаНаИстину(Контекст());' |

Сценарий: ПроверитьЧислоБольшеНаИстину
	И я выполняю код встроенного языка
	| 'Тест_ЧислоУспех.ПроверитьЧислоБольшеНаИстину(Контекст());' |

Сценарий: ПроверитьЧислоБольшеИлиРавноНаИстину
	И я выполняю код встроенного языка
	| 'Тест_ЧислоУспех.ПроверитьЧислоБольшеИлиРавноНаИстину(Контекст());' |

Сценарий: ПроверитьЧислоМеньшеНаИстину
	И я выполняю код встроенного языка
	| 'Тест_ЧислоУспех.ПроверитьЧислоМеньшеНаИстину(Контекст());' |

Сценарий: ПроверитьЧислоМеньшеИлиРавноНаИстину
	И я выполняю код встроенного языка
	| 'Тест_ЧислоУспех.ПроверитьЧислоМеньшеИлиРавноНаИстину(Контекст());' |