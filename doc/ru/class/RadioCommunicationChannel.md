RadioCommunicationChannel
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RadioCommunicationChannel)

Тип: Feature

Полоса радиочастот достаточной ширины и связанная с ней идентификационная информация, использумая для одно- или двухсторонней связи с радиопередатчиком в воздухе или на земле.

## Атрибуты

##### uuid

##### mode
Тип данных: CodeCommunicationModeType

Тип канала связи.

##### rank
Тип данных: CodeFacilityRankingType

Порядок обслуживания по приоритету, такой как "первоначальный" или "альтернативный".

##### compliantICAO
Тип данных: CodeYesNoType

Код, обозначающий, совместима ли служба сервиса со стандартами ИКАО и рекомендованными инструкциями, заднными для этого типа обслуживания.

##### name
Тип данных: TextNameType

Свободное текстовое имя, по которому идентифицируется сервис (обслуживание).

## Связи

### Один к одному:

- O ElevatedPoint

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

- O ContactInformation
- O CallsignDetail
- F ~~RadioCommunicationChannel~~
- F ~~VerticalStructure~~

### Многие к одному:

- F ~~Unit~~
- O ~~ServiceOperationalStatus~~

