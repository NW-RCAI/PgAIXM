AirspaceActivation
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirspaceActivation)

Тип: Object

Информация о рабочем состоянии воздушного пространства.

## Атрибуты

##### id

##### activity
Тип данных: CodeAirspaceActivityType

Первоочередная ситуация или причина на земле или воздухе, которая может повлиять на воздушное движение.

##### status
Тип данных: CodeStatusAirspaceType

Состояние активизации блока воздушного пространства.

##### uuidAirspace
Ссылка на: Airspace

Рабочее состояние возхдушного пространства

## Связи

### Один к одному:

### Один ко многим:

- O AirspaceLayer
- O ~~AircraftCharacteristic~~
- O ~~Timesheet~~
- O ~~Note~~

### Многие ко многим:

- F OrganisationAuthority user
- F OrganisationAuthority specialDateAuthority

### Многие к одному:

- F Airspace

