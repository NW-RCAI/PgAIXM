Navaid
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Navaid)

Тип: Feature

Радионавигационное средство, предоставляющее руководящую информацию или данные о местоположении для эффективной и безопасной эксплуатации воздушного судна, состоящий из одного или более компонентов.

## Атрибуты

##### uuid

##### type
Тип данных: CodeNavaidServiceType

Тип РНС (ILS, MLS, VORTAC, VOR/DME и др.).

##### designator
Тип данных: CodeNavaidDesignatorType

Идентификатор РНС.

##### name
Тип данных: TextNameType

Полное наименование составного РНС.

##### flightChecked
Тип данных: CodeYesNoType

Индикатор, который показывает был ли РНС опробовон в полете.

##### purpose
Тип данных: CodeNavaidPurposeType

Цели использования РНС (маршрутные или аэродромные).

##### signalPerformance
Тип данных: CodeSignalPerformanceILSType

Уровень Производительности сигнала, показывающий точность ILS или MLS систем.

##### courseQuality
Тип данных: CodeCourseQualityILSType

Качество сигнала по курсу системы посадки по приборам (ILS), основанное на местоположении, где этот сигнал будет использоваться.

##### integrityLevel
Тип данных: CodeIntegrityLevelILSType

That quality which relates to the trust which can be placed in the correctness of the information supplied by the ILS facility.

## Связи

### Один к одному:

- O ElevatedPoint

### Один ко многим:

- F ~~NavaidOperationalStatus~~
- O ~~Note~~

### Многие ко многим:

- F AirportHeliport
- F TouchDownLiftOff
- F ~~NavaidEquipment~~
- F ~~RunwayDirection~~

### Многие к одному:


