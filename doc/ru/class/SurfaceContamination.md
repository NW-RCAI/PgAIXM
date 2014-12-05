SurfaceContamination
====
Тип: Feature

Наличие неблагоприятных условий в виде снега, льда, грязи, воды.

## Наследования:

#### Родительский класс для:

- ~~AircraftStandContamination~~
- AirportHeliportContamination
- ~~ApronContamination~~
- RunwayContamination
- RunwaySectionContamination
- ~~TaxiwayContamination~~
- ~~TouchDownLiftOffContamination~~


## Атрибуты

##### uuid

##### observationTime
Тип данных: DateTimeType

Дата и время произведения измерений (UTC).

##### depth
Тип данных:  ValDepthType

Глубина загрязнения на поверхности.

##### frictionCoefficient
Тип данных: ValFrictionType

Средний коэффициент трения.

##### frictionEstimation
Тип данных: CodeFrictionEstimateType

Качественная оценка трения.

##### frictionDevice
Тип данных: CodeFrictionDeviceType

Тип оборудования, использованного для определения объявленного коэффициента трения.

##### obscuredLights
Тип данных: CodeYesNoType

Неясное освещение поверхности

##### furtherClearanceTime
Тип данных: TimeType

Дата и время (UTC), когда ожидается.

##### furtherTotalClearance
Тип данных: CodeYesNoType

Показывает, что ожидается общая очистка территории.

##### nextObservationTime
Тип данных: DateTimeType

Дата и время следующего планируемого отчета по измерениям (UTC).

##### proportion
Тип данных: ValPercentType

Процент загрязнённой площади от всей территории.


## Связи

### Один к одному:

- отсутствуют

### Один ко многим:
- O ~~Ridge~~
- O ~~SurfaceContaminationLayer~~
- O ~~Note~~

### Многие ко многим:

- отсутствуют

### Многие к одному:

- отсутствуют
