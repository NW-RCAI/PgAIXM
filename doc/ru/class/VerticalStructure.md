VerticalStructure
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_VerticalStructure)

Тип: Feature

Those vertical structures that are located on an area intended for the surface movement of aircraft or
that extend above a defined surface intended to protect aircraft in flight are considered obstacles.
Все неподвижные (временные или постоянные) и подвижные объекты или их части, которые возвышаются над поверхностью Земли.
Эти вертикальные структуры, расположенные на территории, предназначенной для движений воздушного судна по поверхности земли,
или возвышающиеся над определенной территорией, предназначенной для безопасного полета воздушного судна, называются препятствиями.

## Атрибуты

##### uuid

##### name
Тип данных: TextNameType

The name of the vertical structure, if applicable.
Имя вертикальной структуры, если применимо.

##### type
Тип данных: CodeVerticalStructureType

A code indicating the type of vertical structure, such as building, tower, cable, etc.
Тип вертикальной структуры (к примеру, строение, башня, ЛЭП и т.д.)

##### lighted
Тип данных: CodeYesNoType

A simple indication that the obstacle is lighted, when no further details are available.
Простое указание на то, если ли светооборудование на препятствии, если никакие иные подробности не известны.

##### markingICAOStandard
Тип данных: CodeYesNoType

Indicates if the markings comply with the ICAO standard, as described in Annex 14.
Удовлетворяет ли маркировки требованиям стандартов ИКАО (Annex 14) - да/нет.

##### group
Тип данных: CodeYesNoType

A flag indicating whether the vertical structure consists of a number of closely situated similar objects.
Вертикальная структура состоит из группы одинаковых объектов, близко расположенных друг к другу - да/нет.

##### length
Тип данных: ValDistanceType

Overall length of the obstruction.
Общая длина препятствия.

##### width
Тип данных: ValDistanceType

Overall width of the obstruction.
Общая ширина препятствия.

##### radius
Тип данных: ValDistanceType

The overall radius of an obstacle that has a relatively circular shape.
Общий радиус препятствия, имеющего форму, близкую к окружности.

##### lightingICAOStandard
Тип данных: CodeYesNoType

Indicates if the lighting is ICAO standard as described in Annex 14.
Удовлетворяет ли освещение стандартам ИКАО (Annex 14) - да/нет.

##### synchronisedLighting
Тип данных: CodeYesNoType

Indicates that the flashing light elements that compose the lighting of the vertical structure (could be a group) are synchronised (flash in unison).
Элементы проблескового огня, составляющие освещение вертикальной структуры (группы) синхронизированы (мигают в унисон).

## Связи

### Один к одному:

- O Surface
- F MarkerBeacon
- O Obstruction
- F ~~AeronauticalGroundLight~~

### Один ко многим:

- F VerticalStructurePart
- O ~~VerticalStructureLightingStatus~~
- O ~~Note~~

### Многие ко многим:

- F ~~PassengerService~~
- F GroundLightSystem
- F NavaidEquipment
- F ~~SpecialNavigationStation~~
- F Unit
- F OrganisationAuthority
- F	Service

### Многие к одному:

- F ObstacleArea


