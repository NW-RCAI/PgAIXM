AirportHeliportContamination
====
Тип: Feature

Наличие неблагоприятных условий в виде снега, льда, грязи, воды на территории аэродрома.

## Наследование

#### Наследуется от класса:
- O SurfaceContamination

## Атрибуты

##### uuid

Наследуется из таблицы SurfaceContamination.

##### uuidAirportHeliport
Ссылка на: AirportHeliport (uuid)

Ссылка на аэродром/вертодром на котором действуют эти неблагоприятные условия.

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
