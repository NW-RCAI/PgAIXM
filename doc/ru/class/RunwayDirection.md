RunwayDirection
===============
Тип: Feature

Одно из двух направлений приземления и взлёта ВПП, для которых могут быть определены такие атрибуты, как TORA, TODA, LDA.

## Атрибуты

##### uuid

##### designator
Тип данных: TextDesignatorType

Полное текстовое обозначение направлений приземления и взлёта.
Например: 27, 35L, 01R.

##### trueBearing
Тип данных: ValBearingType

Измеренный угол между направлением ВПП и направлением на истинный север в данной точке. Истинный север - это северная точка, в которой пересекаются линии меридианов.

##### trueBearingAccuracy
Тип данных: ValAngleType

Точность измеренного угла между направлением ВПП и направлением на истинный север в данной точке

##### magneticBearing
Тип данных: ValBearingType

Измеренный угол между направлением ВПП и направлением на магнитный север в данной точке.

##### patternVFR
Тип данных: CodeDirectionTurnType

Код, идентифицирующий направление модели визуального полета на аэродроме/вертодроме, то есть правое или левое.

##### slopeTDZ
Тип данных: ValSlopeType

Продольный наклон зоны посадки (наклон в 1/3 длины ВПП от начала или первые 300 футов для ВПП длинее 9000 футов)

##### elevationTDZ
Тип данных: ValDistanceVerticalType

Высота зоны посадки: значение самой высокой точки зоны посадки ВПП.

##### elevationTDZAccuracy
Тип данных: ValDistanceType

Точность объявленной высоты зоны посадки.

##### approachMarkingType
Тип данных: CodeRunwayMarkingType

Тип маркировки, связанный с категориями посадки, такими как посадка с точностью, посадка без точности и базовые элементы маркировки.

##### approachMarkingCondition
Тип данных: CodeMarkingConditionType

Качество маркировки ВПП, например: хорошая, порядочная, плохая и др.

##### classLightingJAR
Тип данных: CodeLightingJARType

Классификация посадочной системы освещения, с использованием критерий "JAR-OPS 1 - Subpart E, Appendix 1 to 1.430"

##### precisionApproachGuidance
Тип данных: CodeApproachGuidanceType

Уровень, для которого навигационные средства предоставляют точное руководство захода на посадку. При посадке с точностью используется и поперечная информация, и вертикальная (наклон глиссады).

## Связи

### Один к одному:

- F ~~RunwayElement~~
- F ~~RunwayCentrelinePoint~~
- F ~~RunwayBlastPad~~
- C ~~ObstacleAreaOrigin~~

### Один ко многим:

- F RunwayDirectionLightSystem
- O ~~ManoeuvringAreaAvailability~~
- O ~~Note~~

### Многие ко многим:

- F ~~ArrestingGear~~
- F ~~RunwayVisualRange~~
- F ~~Navaid~~
- O ~~LandingTakeoffAreaCollection~~

### Многие к одному:

- F Runway
- F ~~RunwayProtectArea~~
- F ~~ApproachLightingSystem~~
- F ~~VisualGlideSlopeIndicator~~
