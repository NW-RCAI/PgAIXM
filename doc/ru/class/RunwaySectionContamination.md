RunwaySectionContamination
===============
Тип: Object

Присутствие или приближение неблагоприятных условий в виде снега, дождя, грязи, воды и т.д. на участке поверхности ВПП.

## Наследование

#### Наследуется от класса:
- O SurfaceContamination

## Атрибуты

##### uuid

Наследуется из таблицы SurfaceContamination.

##### section
Тип данных: CodeRunwaySectionType

Указывает часть взлетно-посадочной полосы, пораженной загрязнениями. Этот атрибут поддерживает существующую практику SNOWTAM, которая состоит в предоставлении информации о загрязнениях на каждой третьей длине ВПП, начиная от порога с наменьшим числом обозначения.

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
