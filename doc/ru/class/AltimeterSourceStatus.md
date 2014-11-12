AltimeterSourceStatus
====
Тип: Object

Информация о рабочем состоянии прибора альтиметрии.

## Атрибуты

##### uuid
Тип данных: id

Наследуетcя из таблицы Point.

##### uuidAltimeterSource
Тип данных: id

Внешний ключ для связи с источником альтиметри (таблица AltimeterSource)

##### operationalStatus
Тип данных: CodeStatusOperationsType

Рабочее состояни прибора альтиметрии.


## Связи

### Один к одному:

- отсутствуют

### Один ко многим:

- O ~~Timesheet~~
- F OrganisationAuthority
- O ~~Note~~

### Многие ко многим:

- отсутствуют

### Многие к одному:

- F AltimeterSource