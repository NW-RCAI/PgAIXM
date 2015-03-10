AirTrafficControlService
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirTrafficControlService)

Тип: Feature

Вид обслуживания, которое предоставляет воздушным суднам в воздухе службы контроля и эшелонирования

## Наследование

#### Наследуется от класса:

- F TrafficSeparationService

## Атрибуты

##### uuid

Наследуетcя из таблицы TrafficSeparationService.

##### type
Тип данных: CodeServiceATCType

Тип предоставляемой службы контроля воздушным движением.

##### radarAssisted
Тип данных: CodeYesNoType

Наследуетcя из таблицы TrafficSeparationService.

##### dataLinkEnabled
Тип данных: CodeYesNoType

Наследуетcя из таблицы TrafficSeparationService.

##### dataLinkChannel
Тип данных: CodeCommunicationChannelType

Наследуетcя из таблицы TrafficSeparationService.

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

- O ~~Note~~

### Многие ко многим:

- O ContactInformation
- O CallsignDetail
- F RadioCommunicationChannel
- F ~~VerticalStructure~~
- F Airspace
- F ~~AerialRefuelling~~
- O ~~RoutePortion~~

### Многие к одному:

- F Unit
- O ~~ServiceOperationalStatus~~

