SurveyControlPoint
====
Тип: Feature

Опорные геодезические пункты.

## Атрибуты

##### uuid

#### uuidAirportHeliport
Ссылка на: AirportHeliport (uuid)

Ссылка на обслуживающий аэродром.

##### uuidElevatedPoint
Ссылка на: ElevatedPoint (uuid)

Ссылка на высотную отметку.

##### designator
Тип данных: TextNameType

Идентификатор опорной точки


## Связи

### Один к одному:

- O ElevatedPoint~~

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

- отсутствуют

### Многие к одному:

- F AirportHeliport


## Наследование

#### Родительский класс для Elevated Point