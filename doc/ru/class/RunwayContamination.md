RunwayContamination
===============
Тип: Object

Присутствие или приближение неблагоприятных условий в виде снега, дождя, грязи, воды и т.д. на поверхности ВПП.

## Наследование

#### Наследуется от класса:
- O SurfaceContamination

## Атрибуты

##### uuid

Наследуется из таблицы SurfaceContamination.

##### uuidRunway
Ссылка на: Runway (uuid)

Ссылка на аэродром/вертодром на котором действуют эти неблагоприятные условия.

##### clearedLength
Тип данных: ValDistanceType

Длина ВПП, очищенная от загрязнений, если она меньше общей длины.

##### clearedWidth
Тип данных: ValDistanceType

Ширина ВПП, очищенная от загрязнений, если она меньше общей ширины.

##### clearedSide
Тип данных: CodeSideType

Показывает, что очищенная полоса расположена справа, слева или по центру осевой линии.

##### furtherClearanceLength
Тип данных: ValDistanceType

Длина ВПП, которая будет очищена от загрязнения (в случае, если она меньше общей длины).

##### furtherClearanceWidth
Тип данных: ValDistanceType

Ширина ВПП, которая будет очищена от загрязнения (в случае, если она меньше общей ширины).

##### obscuredLightsSide
Тип данных: CodeSideType

Указывает сторону, на которой огни затемнены.

##### clearedLengthBegin
Тип данных: ValDistanceType

Расстояние от начала с наименьшим определителем (designator) до точки, где начинается очищенная часть, в случае неполной очистки.

##### taxiwayAvailable
Тип данных: CodeYesNoType

Показывает, есть ли очищенные границы рулежной дорожки, обслуживающей данную ВПП.

##### apronAvailable
Тип данных: CodeYesNoType

Показывает, есть ли очищенный пирон, обслуживающий данную ВПП.

##### observationTime
Тип данных: DateTimeType

Наследуется из таблицы SurfaceContamination.

##### depth
Тип данных: ValDepthType

Наследуется из таблицы SurfaceContamination.

##### frictionCoefficient
Тип данных: ValFrictionType

Наследуется из таблицы SurfaceContamination.

##### frictionEstimation
Тип данных: CodeFrictionEstimateType

Наследуется из таблицы SurfaceContamination.

##### frictionDevice
Тип данных: CodeFrictionDeviceType

Наследуется из таблицы SurfaceContamination.

##### obscuredLights
Тип данных: CodeYesNoType

Наследуется из таблицы SurfaceContamination.

##### furtherClearanceTime
Тип данных: TimeType

Наследуется из таблицы SurfaceContamination.

##### furtherTotalClearance
Тип данных: CodeYesNoType

Наследуется из таблицы SurfaceContamination.

##### nextObservationTime
Тип данных: DateTimeType

Наследуется из таблицы SurfaceContamination.

##### proportion
Тип данных: ValPercentType

Наследуется из таблицы SurfaceContamination.

## Связи

### Один к одному:

### Один ко многим:

- O ~~SurfaceContaminationLayer~~
- O ~~Ridge~~
- O ~~Note~~

### Многие ко многим:

### Многие к одному:

- F Runway
