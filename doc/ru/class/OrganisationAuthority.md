OrganisationAuthority
====
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_OrganisationAuthority)

Тип: Feature

Различные организации, органов власти, департаменты, агентства или объединения.

## Атрибуты

##### uuid

##### name
Тип данных: TextNameType

Полное официальное название организации.

##### designator
Тип данных: CodeOrganisationDesignatorType

Закодированный идентификатор организации, департамента, агентства или объединения.
Например: СА = Canada, FAA = Federal Aviation Administration, UK = United Kingdom, ICAO = International Civil Aviation Organization.

##### type
Тип данных: CodeOrganisationType

Код, указывающий на происхождение ответственной организации в соответствии с его статусом или бизнесс-ролью в ATM.
Например: штат, группа штатов, организация в штате, авиационное агентство и т.д.

##### military
Тип данных: CodeMilitaryOperationsType

Информация о том, какого типа операции разрешены.

## Связи

### Один к одному:

- отсутствуют

### Один ко многим:

- F AirportHeliport
- F ~~AuthorityForAirspace~~
- F ~~SpecialNavigationStation~~
- F ~~SpecialNavigationSystem~~
- C ~~ObstacleAreaOrigin~~
- F ~~SpecialDate~~
- F Unit
- C ~~FlightConditionElementChoice~~
- F Route
- O ~~Note~~


### Многие ко многим:

- F ~~OrganisationAuthority~~
- O ContactInformation
- O AirspaceActivation
- F ~~RadarSystem~~
- O ~~PropertiesWithSchedule~~
- F ~~NavaidEquipment~~
- F ~~VerticalStructure~~
- F ~~AerialRefuelling~~

### Многие к одному:

- отсутствуют
