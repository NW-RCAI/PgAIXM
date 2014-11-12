SurveyControlPoint
====
Тип: Feature

Опорные геодезические пункты.

## Атрибуты

##### uuid

##### uuidAirportHeliport
Тип данных: id

Внешний ключ для связи с таблицей AirportHeliport.

##### uuidElevatedPoint
Тип данных: id

Внешний ключ для связи с таблицей ElevatedPoint.

##### designator
Тип данных: TextNameType

Идентификатор опорной точки


## Связи

### Один к одному:

- F ~~DesignatedPoint~~
- C ~~SignificantPoint~~

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

- отсутствуют

### Многие к одному:

- отсутствуют


## Наследование

#### Родительский класс для Elevated Point