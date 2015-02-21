ContactInformation
====
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ContactInformation)

Тип: Object

Информация, необходимая для того, чтобы была возможность связаться с ответственным лицом и/или организацией.

Это модель происходит от ISO19115-2003:Geographic Information - Metadata

## Атрибуты

##### id

##### name
Тип данных: TextNameType

Официальное имя контакта.

##### title
Тип данных: TextNameType

Официальный заголовок контакта.

##### uuidAirportHeliport
Ссылка на: AirportHeliport (uuid)

##### uuidOrganisationAuthority
Ссылка на: OrganisationAuthority (uuid)

##### uuidUnit
Ссылка на: Unit (uuid)

##### uuidService
Ссылка на: Service (uuid)

## Связи

### Один к одному:

- отсутствуют

### Один ко многим:

- отсутствуют

### Многие ко многим:

- O PostalAddress
- O OnlineContact
- O TelephoneContact
- F AirportHeliport
- F OrganisationAuthority
- O ~~UsageCondition~~
- F ~~RadarEquipment~~
- F Service
- F Unit
- O ~~FlightRestrictionRoute~~
- O ~~Note~~

### Многие к одному:

- отсутствуют
