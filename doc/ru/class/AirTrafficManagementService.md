AirTrafficManagementService
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirTrafficManagementService)

Тип: Feature

Разновидность обслуживания, обеспечивающая планирование полетов и регулирование потоков.

## Наследование

#### Наследуется от класса:

- F Service

## Атрибуты

##### uuid

Наследуетcя из таблицы Service.

##### type
Тип данных: CodeServiceATFMType

Тип предоставляемого обслуживания по регулированию потоков воздушного движения.

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
- F ~~Airspace~~
- F ~~AerialRefuelling~~
- O ~~RoutePortion~~

### Многие к одному:

- F ~~Unit~~
- O ~~ServiceOperationalStatus~~

