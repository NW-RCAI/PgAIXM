RunwayContamination
===============
Тип: Object

Присутствие или приближение неблагоприятных условий в виде снега, дождя, грязи, воды и т.д. на поверхности ВПП.

## Наследование

#### Наследуется от класса:
- O SurfaceContamination

## Атрибуты

##### uuid

##### clearedLength
Тип данных: ValDistanceType

Длина ВПП, очищенная от загрязнений, если она меньше общей длины.

##### clearedWidth
Тип данных: ValDistanceType

Ширина ВПП, очищенная от загрязнений, если она меньше общей ширины.

##### clearedSide
Тип данных: CodeSideType

Показывает, что очищенная полоса расположена справа, слева или по центру линии.

##### furtherClearanceLength
Тип данных: ValDistanceType

Длина ВПП, которая будет очищеена от загрязнения (в случае, если она меньше общей длины).

##### furtherClearanceWidth
Тип данных: ValDistanceType

Ширина ВПП, которая будет очищеена от загрязнения (в случае, если она меньше общей ширины).

##### obscuredLightsSide
Тип данных: CodeSideType

Показывает сторону, на которой свет тусклый.

##### clearedLengthBegin
Тип данных: ValDistanceType

Расстояние от начала с наименьшим определителем (designator) до точки, где начинается очищенная часть, в случае неполной очистки.

##### taxiwayAvailable
Тип данных: CodeYesNoType

Показывает, есть ли очищенные границы рулежной дорожки (taxiway), обслуживающие данную ВПП.

##### apronAvailable
Тип данных: CodeYesNoType

Показывает, есть ли очищенное полотно (apron), обслуживающие данную ВПП.

##### observationTime
Тип данных: DateTimeType

Дата и время произведения измерений (UTC).

##### depth
Тип данных: ValDepthType

Глубина загрязнений поверхности.

##### frictionCoefficient
Тип данных: ValFrictionType

Средний коэффициент трения

##### frictionEstimation
Тип данных: CodeFrictionEstimateType

Качественная оценка трения.

##### frictionDevice
Тип данных: CodeFrictionDeviceType

Тип оборудования, используемый, чтобы определить объявляемый коэффициент трения.

##### obscuredLights
Тип данных: CodeYesNoType

Показывает, что свет на поверхности тусклый.

##### furtherClearanceTime
Тип данных: TimeType

Дата и время (UTC), когда ожидается ближайшая чистка (уборка).

##### furtherTotalClearance
Тип данных: CodeYesNoType

Показывает, что ожидается полная уборка.

##### nextObservationTime
Тип данных: DateTimeType

Дата и время объявления планируемых измерений (UTC).

##### proportion
Тип данных: ValPercentType

Процент загрязненноё территории от всей поверхности.

## Связи

### Один к одному:

### Один ко многим:

- O ~~SurfaceContaminationLayer~~
- O ~~Ridge~~
- O ~~Note~~

### Многие ко многим:

### Многие к одному:

- F Runway