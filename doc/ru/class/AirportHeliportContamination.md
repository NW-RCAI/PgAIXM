AirportHeliportContamination
====
Тип: Feature

Наличие неблагоприятных условий в виде снега, льда, грязи, воды на территории аэродрома.

## Атрибуты

##### uuid

Наследуется из таблицы SurfaceContamination.

##### uuidAirportHeliport
Тип данных: id

Внешний ключ для связи с таблицей AirportHeliport.

##### observationTime

Наследуется из таблицы SurfaceContamination.

##### depth

Наследуется из таблицы SurfaceContamination.

##### frictionCoefficient

Наследуется из таблицы SurfaceContamination.

##### frictionEstimation

Наследуется из таблицы SurfaceContamination.

##### frictionDevice

Наследуется из таблицы SurfaceContamination.

##### obscuredLights

Наследуется из таблицы SurfaceContamination.

##### furtherClearanceTime

Наследуется из таблицы SurfaceContamination.

##### furtherTotalClearance

Наследуется из таблицы SurfaceContamination.

##### nextObservationTime

Наследуется из таблицы SurfaceContamination.

##### proportion

Наследуется из таблицы SurfaceContamination.


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

- F AirportHeliport


## Наследование

#### Наследуется из класса Point