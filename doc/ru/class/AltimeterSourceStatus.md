AltimeterSourceStatus
====
Тип: Object

Информация о рабочем состоянии высотомера.

## Наследование

#### Наследуется от класса:
- O ~~PropertiesWithSchedule~~

## Атрибуты

##### uuid

##### uuidAltimeterSource
Ссылка на: AltimeterSource (uuid)

Ссылка на высотомер которому принедлежит текущее состояние.

##### operationalStatus
Тип данных: CodeStatusOperationsType

Рабочее состояни высотомера.

## Связи

### Один к одному:

- отсутствуют

### Один ко многим:

- O ~~Timesheet~~
- O ~~Note~~

### Многие ко многим:

- F ~~OrganisationAuthority~~

### Многие к одному:

- F AltimeterSource
