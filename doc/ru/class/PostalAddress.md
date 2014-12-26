PostalAddress
====
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_PostalAddress)

Тип: Object

Физический адрес организации или физического лица. Основан на ISO19115-2003.

## Атрибуты

##### id

##### deliveryPoint
Тип данных: TextAddressType

Адрессная строка. Можно использовать несколько строк.

##### city
Тип данных: TextNameType

Город расположения.

##### administrativeArea
Тип данных: TextNameType

Страна или провинца.

##### postalCode
Тип данных: TextNameType

Почтовый индекс.

##### country
Тип данных: TextNameType

Страна. Полное наименование, а не сокращение по стандарту ISO 3166.

## Связи

### Один к одному:

- отсутствуют

### Один ко многим:

- отсутствуют

### Многие ко многим:

- O ~~Timesheet~~
- O ~~ContactInformation~~
- F ~~OrganisationAuthority~~
- O ~~Note~~

### Многие к одному:

- отсутствуют
