Airspace
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Airspace)

Тип: Feature

Пространство, определенное в трех измерениях, относящееся к зоне воздушного сообщения.

## Атрибуты

##### uuid

##### type
Тип данных: CodeAirspaceType

Код, идентифицирующий общую структуру или характеристики отдельного воздушного пространства.

##### designator
Тип данных: CodeAirspaceDesignatorType

Обнародованная последовательность букв, позволяющая идентифицировать воздушное пространство.
Описание: типичным примером является ID опасной, запрещенной, временно изолированной (отделенной) зоны

##### localType
Тип данных: TextNameType

Тип определителя, используемый в данной местности, локально (в даннном штате или регионе) для отдельной подкатегории воздушного пространства.

##### name
Тип данных: TextNameType

Название, данное воздушному пространству ответственным органом власти.
Описание: должно писаться также, как и опубликовано, заглавные буквы или строчные - не имеет значения.

##### designatorICAO
Тип данных: CodeYesNoType

Код, идентифицирующий, записано ли воздушное пространство в ICAO Doc. 7910.

##### controlType
Тип данных: CodeMilitaryOperationsType

Первостепенный тип организации - гражданская или военная, обеспечивающей сервис воздушного сообщения внутри обозначенного воздушного пространства.

##### upperLowerSeparation
Тип данных: ValFLType

Уровень полета, обозначающий разделение верхнего и нижнего воздушного пространства.

##### uuidRoute
Сссылка на: Route (uuid)

Путь защищенный воздушным пространством.

## Связи

### Один к одному:

### Один ко многим:

- O AirspaceVolume geometryComponent
- O AirspaceVolume contributorAirspace
- O AirspaceActivation
- F ~~SignificantPointInAirspace~~
- F ~~AirspaceBorderCrossing exitedAirspace~~
- F ~~AirspaceBorderCrossing enteredAirspace~~
- O ~~Note~~

### Многие ко многим:

- F ~~RulesProcedures~~
- F ~~StandardLevelSector~~
- F InformationService
- F AirTrafficControlService
- F ~~AirTrafficManagementService~~
- F SearchRescueService
- F ~~AerialRefuelling~~

### Многие к одному:

- F Route
- F ~~AuthorityForAirspace~~
- C ~~FlightConditionElementChoice~~
- C ~~FlightRoutingElementChoice~~
- O AirspaceLayerClass