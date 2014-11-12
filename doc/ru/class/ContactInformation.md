ContactInformation
====
Тип: Object

Информация, необходимая для того, чтобы была возможносьт соединиться с ответственным лицом и/или организацией.

Это модель происходит от ISO19115-2003:Geographic Information - Metadata

## Атрибуты

##### uuid

##### uuidAirportHeliport
Ссылка на: AirportHeliport (uuid)

Ссылка на аэродром/вертодром, которой принадлежит данная контактная информация.

##### uuidOrganisationAuthority
Ссылка на: OrganisationAuthority (uuid)

Ссылка на оранизацию, которой принадлежит данная контактная информация.

##### name
Тип данных: TextNameType

Официальное имя контакта.

##### title
Тип данных: TextNameType

Официальное заголовок контакта.


## Связи

### Один к одному:

- отсутствуют

### Один ко многим:

- O ~~PostalAddress~~
- O ~~OnlineContact~~
- O ~~TelephoneContact~~
- O ~~Note~~
- O ~~UsageCondition~~


### Многие ко многим:

- отсутствуют

### Многие к одному:

- F AirportHeliport
- F ~~RadarEquipment~~
- F ~~Service~~
- F OrganisationAuthority
- F ~~Unit~~
- O ~~FlightRestrictionRoute~~
