ElevatedSurface
====
Тип: Object

Поверхность с высотами AIXM, наследованная от GM_Surface, включает характеристики, показывающие вертикальное положение.

## Атрибуты

##### uuid
Тип данных: id

Наследуетcя из таблицы Surface.

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
Тип данных: ValDistanceType

Наследуетcя из таблицы Surface.


## Связи

### Один к одному:

- F ~~RunwayElement~~
- C ~~ArrestingGearExtent~~
- F ~~RunwayBlastPad~~
- F ~~TaxiwayElement~~
- F ~~DeicingArea~~
- F ~~ApronElement~~
- F ~~Road~~
- F ~~PassengerLoadingBridge~~
- F ~~AircraftStand~~
- F ~~TouchDownLiftOff~~
- C ~~MarkingExtent~~
- F ~~FloatingDockSite~~
- F ~~SeaplaneLandingArea~~
- F ~~SeaplaneRampSite~~
- F ~~NonMovementArea~~
- F ~~AirportHeliportProtectionArea~~
- F ~~WorkArea~~
- F AirportHeliport
- F AirportHotSpot
- F ~~VerticalStructurePartGeometry~~
- O ~~AirspaceVolume~~
- O ~~ObstacleAssessmentArea~~
- O ~~PointReference~~
- F ~~ObstacleArea~~
- F ~~CirclingArea~~
- O ~~CirclingRestriction~~
- F ~~TerminalArrivalArea~~
- O ~~TerminalArrivalAreaSector~~
- O ~~NavigationAreaSector~~
- O ~~SafeAltitudeAreaSector~~
- O ~~AerialRefuellingAnchor~~

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

- отсутствуют

### Многие к одному:

- O ~~SurfaceContaminationLayer~~
- F ~~RadioFrequencyArea~~


## Наследование

#### Наследуется из класса Surface