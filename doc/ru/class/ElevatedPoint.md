ElevatedPoint
====
Тип: Object

Точка AIXM, наследованная от GM_Point, включает характеристики, необходимые для описания точки с высотой и расстоянием по вертикали.
Используется в препятствиях, в navaid и др.

## Атрибуты

##### uuid

Наследуетcя из таблицы Point.

##### elevation
Тип данных: ValDistanceVerticalType

Расстояние по вертикали от уровня моря до измеряемой точки.

##### geoidUndulation
Тип данных: ValDistanceSignedType

Расстояние до геоида сверху (положительное) или снизу (отрицательное) от математического референц-эллипсоида в данной точке.

##### verticalDatum
Тип данных: CodeVerticalDatumType

Набор опорных точек или математическая модель поверхности Земли (датум).

##### verticalAccuracy
Тип данных: ValDistanceType

Разница между записанной высотой точки и ее реальным значением, отнесенным к тому же вертикальному датуму, выражается как линейное отклонение с вероятностью 95%

##### horizontalAccuracy

Наследуетcя из таблицы Point.

## Связи

### Один к одному:

- F ~~RunwayCentrelinePoint~~
- C ~~ArrestingGearExtent~~
- F ~~RunwayVisualRange~~
- F ~~TaxiHoldingPosition~~
- F ~~AircraftStand~~
- F ~~TouchDownLiftOff~~
- C ~~MarkingExtent~~
- F ~~MarkingBuoy~~
- F AirportHeliport
- F SurveyControlPoint
- O ~~Reflector~~
- F ~~RadarEquipment~~
- F ~~RadarSystem~~
- O ~~LightElement~~
- F ~~Service~~
- F ~~Navaid~~
- F ~~NavaidEquipment~~
- F ~~NavigationSystemCheckpoint~~
- F ~~SpecialNavigationStation~~
- F ~~AeronauticalGroundLight~~
- F ~~Unit~~
- C ~~VerticalStructurePartGeometry~~
- F ~~DesignatedPoint~~
- C ~~SignificantPoint~~

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

- отсутствуют

### Многие к одному:

- F ~~RadioCommunicationChannel~~


## Наследование

#### Наследуется из класса Point