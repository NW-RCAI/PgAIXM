GroundLightingAvailability
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

Рабочее состояние системы наземного освещения.

##### operationalStatus
Тип данных: CodeStatusOperationsType

Рабочее состояние системы освещения. Список значений включает: ремонтируется, работает, недоступно.

## Связи

### Один к одному:

- отсутствуют

### Один ко многим:

- O ~~Timesheet~~
- O ~~Note~~
- F OrganisationAuthority


### Многие ко многим:

- отсутствуют

### Многие к одному:

- F GroundLightSystem
