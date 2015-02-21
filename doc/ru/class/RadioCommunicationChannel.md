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

##### frequencyTransmission
Тип данных: ValFrequencyType

Значение частоты передачи.

##### frequencyReception
Тип данных: ValFrequencyType

Значение частоты приемника.

##### channel
Тип данных: CodeCommunicationChannelType

Идентификатор радиоканала, по которому осуществляется связь.

##### logon
Тип данных: TextDesignatorType

Код, используемый для связи данных, на подобии того, что используется для начала сеанса (logon) для объединения ATS.

##### emissionType
Тип данных: CodeRadioEmissionType

Код, обозначающий тип передачи, как обозначено в 1979 ITU World Administrative Radio Conference.

##### selectiveCall
Тип данных: CodeYesNoType

Код, показывающий работает ли частота с избирательным вызовом цифровым кодом.

##### flightChecked
Тип данных: CodeYesNoType

Показывает, является ли канал связи проверенным полетами (?).

##### trafficDirection
Тип данных: CodeCommunicationDirectionType

...

## Связи

### Один к одному:

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

- F Service

### Многие к одному:

- O ElevatedPoint

