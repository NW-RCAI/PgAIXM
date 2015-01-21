SearchRescueService
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SearchRescueService)

Тип: Feature

Исполнение мониторинга бедствий, функции мониторинга, связи, координации, поисковые и спасательные функции, первая медицинская помощь или эвакуация посредством использования общественных и частных ресурсов, включая спсастельно воздушное судно и другой транспорт и оборудование.

## Наследование

#### Наследуется от класса:

- F Service

## Атрибуты

##### uuid

Наследуетcя из таблицы Service.

##### type
Тип данных: CodeServiceSARType

Тип предоставляемого обслуживания по управлению воздушными потоками.

##### flightOperations
Тип данных: CodeFlightDestinationType

Наследуетcя из таблицы Service.

##### rank
Тип данных: CodeFacilityRankingType

Наследуетcя из таблицы Service.

##### compliantICAO
Тип данных: CodeYesNoType

Наследуетcя из таблицы Service.

##### name
Тип данных: TextNameType

Наследуетcя из таблицы Service.

## Связи

### Один к одному:

- O ElevatedPoint

### Один ко многим:

- O ContactInformation
- O ~~Note~~

### Многие ко многим:

- O ~~CallsignDetail~~
- F ~~RadioCommunicationChannel~~
- F ~~Airspace~~
- O ~~RoutePortion~~

### Многие к одному:

- F ~~Unit~~
- O ~~ServiceOperationalStatus~~

