AltimeterSource
====
Тип: Feature

Прибор, который измеряет и показывает высоту, на которой расположен объект (например, самолет)

## Атрибуты

##### uuid

##### isRemote
Тип данных: CodeYesNoType,

Далеко или близко расположен альтиметр.

##### isPrimary
Тип данных: CodeYesNoType,

Первичный или вторичный альтиметр.


## Связи

### Один к одному:

- O ~~ApproachCondition~~


### Один ко многим:

- O AltimeterSourceStatus
- O ~~Note~~

### Многие ко многим:

- F AirportHeliport

### Многие к одному:

- отсутствуют