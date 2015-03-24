Navaid
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Navaid)

Тип: Feature

Служба, предоставляющая руководящую информацию или данные о местоположении для эффективных и безопасных операций на воздушном судне, обеспеченная одним или более радионавигационным средством.

## Атрибуты

##### uuid

##### type
Тип данных: CodeNavaidServiceType

Типы служб навигационных средств.

##### designator
Тип данных: CodeNavaidDesignatorType

Идентификатор РНС.

##### name
Тип данных: TextNameType

Полное наименование сложного РНС.

##### flightChecked
Тип данных: CodeYesNoType

Проверено ли РНС полетами.

##### purpose
Тип данных: CodeNavaidPurposeType

Цели использования РНС (маршрутные или терминальные).

##### signalPerformance
Тип данных: CodeSignalPerformanceILSType

Уровень исполнения сигнала, показывающий точность ILS или MLS систем.

##### courseQuality
Тип данных: CodeCourseQualityILSType

Качество сигнала по курсу системы посадки по приборам (ILS), основанное на местоположении, где этот сигнал будет использоваться.

##### integrityLevel
Тип данных: CodeIntegrityLevelILSType

...

## Связи

### Один к одному:

- O ElevatedPoint

### Один ко многим:

- F ~~NavaidEquipment~~
- F ~~NavaidOperationalStatus~~
- O ~~Note~~

### Многие ко многим:

- F AirportHeliport

### Многие к одному:


