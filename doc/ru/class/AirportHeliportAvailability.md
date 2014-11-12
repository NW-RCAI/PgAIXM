AirportHeliportAvailability
====
Тип: Object

Информация о рабочем состоянии аэродрома/вертодрома.

## Атрибуты

##### uuid

##### uuidAirportHeliport
Тип данных: id

Внешний ключ для связи с таблицей AirportHeliport.

##### operationalStatus
Тип данных: CodeStatusAirportType

Годность оборудования для специфических летных операций.

##### warning
Тип данных: CodeAirportWarningType

Причина предосторожности при работе.


## Связи

### Один к одному:

- отсутствуют

### Один ко многим:

- O ~~AirportHeliportUsage~~
- O ~~Timesheet~~ - наследуется из класса PropertiesWithSchedule
- O ~~Note~~


### Многие ко многим:

- отсутствуют

### Многие к одному:

- F AirportHeliport


## Наследование:

#### Наследуется из класса PropertiesWithSchedule

