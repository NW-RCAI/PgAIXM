AirportHeliportAvailability
====
Тип: Object

Информация о рабочем состоянии аэродрома/вертодрома.

## Наследование

#### Наследуется от класса:

- O ~~PropertiesWithSchedule~~

## Атрибуты

##### uuid

##### uuidAirportHeliport
Ссылка на: AirportHeliport (uuid)

Ссылка на аэродром/вертодром, которому принадлежит информация об аэродроме/вертодроме.

##### operationalStatus
Тип данных: CodeStatusAirportType

Указывает на статус аэродрома/вертодрома для выполнения полетов.

##### warning
Тип данных: CodeAirportWarningType

Причина установки статуса.

## Связи

### Один к одному:

- отсутствуют

### Один ко многим:

- O ~~AirportHeliportUsage~~
- O ~~Timesheet~~
- O ~~Note~~


### Многие ко многим:

- отсутствуют

### Многие к одному:

- F AirportHeliport
