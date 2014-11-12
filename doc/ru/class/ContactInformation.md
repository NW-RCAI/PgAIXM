ContactInformation
====
Тип: Object

Информация, необходимая для того, чтобы была возможносьт соединиться с ответственным лицом и/или организацией.
Это модель происходит от ISO19115-2003:Geographic Information- Metadata

## Атрибуты

##### uuid

##### uuidAirportHeliport
Тип данных: id

Внешний ключ для связи с таблицей AirportHeliport.

##### uuidOrganisationAuthority
Тип данных: id

Внешний ключ для связи с таблицей OrganisationAuthority.

##### name
Тип данных: TextNameType

Официальное имя контакта.

##### title
Тип данных: TextNameType

Официальное название контакта.


## Связи

### Один к одному:




### Один ко многим:

- O ~~PostalAddress~~
- O ~~OnlineContact~~
- O ~~TelephoneContact~~
- O ~~Note~~
- O ~~UsageCondition~~


### Многие ко многим:


### Многие к одному:

- F AirportHeliport
- F ~~RadarEquipment~~
- F ~~Service~~
- F OrganisationAuthority
- F ~~Unit~~
- O ~~FlightRestrictionRoute~~