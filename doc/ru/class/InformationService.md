InformationService
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_InformationService)

Тип: Feature

Вид обслуживания, состоящий из обеспечения команды воздушного судна и других участников полетных операций в полете и на земле авиационной, метеорологической информацией, информацией о движении и связанной информацией.

## Наследование

#### Наследуется от класса:

- F Service

## Атрибуты

##### uuid

Наследуетcя из таблицы Service.

##### type
Тип данных: CodeServiceInformationType

Тип предоставляемой службой информации.

##### voice
Тип данных: CodeYesNoType

Обеспечена ли служба голосовым сообщением.

##### dataLink
Тип данных: CodeYesNoType

Доступна ли служба по каналу передачи данных.

##### recorded
Тип данных: CodeYesNoType

Передача информации записывается и проигрывается заново, в отличие от прямой трансляции.

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
- F ~~VOR~~
- F ~~Airspace~~
- F AirportHeliport
- O ~~RoutePortion~~
- F ~~Procedure~~
- F ~~HoldingPattern~~
- F ~~AerialRefuelling~~

### Многие к одному:

- F ~~Unit~~
- O ~~ServiceOperationalStatus~~

