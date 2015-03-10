TrafficSeparationService
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_TrafficSeparationService)

Тип: Feature

Вид обслуживания, которое предоставляет воздушным суднам в воздухе и на земле службы контроля и эшелонирования

## Наследование

#### Наследуется от класса:

- F Service

#### Родительский класс для:

- F AirTrafficControlService
- F GroundTrafficControlService

## Атрибуты

##### uuid

Наследуетcя из таблицы Service.

##### radarAssisted
Тип данных: CodeYesNoType

Код, показывающий, снабжена ли служба радиолокационным контролем.

##### dataLinkEnabled
Тип данных: CodeYesNoType

Показывает доступна ли связь «диспетчер-пилот» по линии передачи данных для данной службы.

##### dataLinkChannel
Тип данных: CodeCommunicationChannelType

Канал, по которому реализуется передача данных, если она имеется.

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

