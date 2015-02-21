Service
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Service)

Тип: Feature

Обеспечение материальными благами, информацией, инструкциями, управлением и т.д. пилотов, полетов, операторов воздушного суда и другой персонал и организации, относящиеся к обеспечению полетов.

## Наследование

### Родительский класс для:

- F ~~AirTrafficManagementService~~
- F ~~AirportGroundService~~
- F ~~InformationService~~
- F ~~SearchRescueService~~
- F ~~TrafficSeparationService~~

## Атрибуты

##### uuid

##### flightOperations
Тип данных: CodeFlightDestinationType

Цель (прибытие, вылет и т.д.) полетов, для которых предоставляется информация.

##### rank
Тип данных: CodeFacilityRankingType

Порядок обслуживания по приоритету, такой как "первоначальный" или "альтернативный".

##### compliantICAO
Тип данных: CodeYesNoType

Код, обозначающий, совместима ли служба сервиса со стандартами ИКАО и рекомендованными инструкциями, заднными для этого типа обслуживания.

##### name
Тип данных: TextNameType

Свободное текстовое имя, по которому идентифицируется сервис (обслуживание).

##### uuidUnit
Ссылка на: Unit(uuid)

Объедиение, предоставляющее обслуживание.

##### idElevatedPoint
Ссылка на: ElevatedPoint (id)

Местоположение, откуда предосталяется обслуживание.

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

### Многие к одному:

- F Unit
- O ~~ServiceOperationalStatus~~

