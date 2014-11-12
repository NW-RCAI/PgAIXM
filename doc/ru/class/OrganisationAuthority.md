OrganisationAuthority
====
Тип: Feature

Набор свойств, моделирующих различные организации и департаменты.

## Атрибуты

##### uuid

##### name
Тип данных: TextNameType

Полное официальное название штата, области, организации, департамента, авиационного агентства (aircraft operating agency)/

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

- F AuthorityForAirspace
- F SpecialDate
- C ~~ObstacleAreaOrigin~~


### Один ко многим:

- O ContactInformation
- F AirportHeliport
- O ~~AirspaceActivation~~
- O ~~Note~~
- F ~~SpecialNavigationStation~~
- F ~~SpecialNavigationSystem~~
- F ~~Unit~~
- C ~~FlightConditionElementChoice~~
- F ~~Route~~


### Многие ко многим:

- F OrganisationAuthority
- F ~~RadarSystem~~
- O ~~PropertiesWithSchedule~~
- F ~~NavaidEquipment~~
- F ~~VerticalStructure~~
- F ~~AerialRefuelling~~

### Многие к одному:

- отсутствуют
