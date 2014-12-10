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



##### slopeTDZ
Тип данных: ValSlopeType



##### elevationTDZ
Тип данных: ValDistanceVerticalType



##### elevationTDZAccuracy
Тип данных: ValDistanceType



##### approachMarkingType
Тип данных: CodeRunwayMarkingType



##### approachMarkingCondition
Тип данных: CodeMarkingConditionType



##### classLightingJAR
Тип данных: CodeLightingJARType



##### precisionApproachGuidance
Тип данных: CodeApproachGuidanceType




## Связи

### Один к одному:

- F RunwayElement

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

### Многие к одному:

- F Runway
