AuthorityForAirspace
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AuthorityForAirspace)

Тип: Feature

Организация, ответственная за воздушное пространство.
Например, эта сущность описывает, какой штат несет ответственность за воздушное пространство де-юра и какой - де-факто.

## Атрибуты

##### uuid

##### type
Тип данных: CodeAuthorityType

Классификация типов ответственности, которое может нести организация за управление воздушным пространством.

##### uuidOrganisationAuthority
Ссылка на: OrganisationAuthority(uuid)

Организация, ответственная за воздушное пространство.

##### uuidAirspace
Ссылка на: Airspace(uuid)

Воздушное пространство, которым управляет ответственная организация.

## Связи

### Один к одному:

- F OrganisationAuthority
- F Airspace

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

### Многие к одному:


