AirportGroundService
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportGroundService)

Тип: Feature

Службы, поддерживающие инфраструктуру аэропорта и непосредственную помощь воздушному судну на земле.

## Наследование

#### Наследуется от класса:

- F Service

## Атрибуты

##### uuid

Наследуетcя из таблицы Service.

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
- F ~~VerticalStructure~~
- F AirportHeliport

### Многие к одному:

- F ~~Unit~~
- O ~~ServiceOperationalStatus~~

