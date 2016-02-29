Localizer
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Localizer)

Тип: Feature

A component of an ILS consisting of a VHF transmitter, radiating signals in the direction served by the ILS,
to provide a straight line descent path in the vertical plane containing the centre line of the runway.
Компонент системы посадки по-приборам: состоит из передатчика ОВЧ диапазона (УКВ), который излучает сигналы в направлении,
обслуживаемом системой посадки по-приборам; обеспечивает прямолинейный путь в вертикальной плоскости, содержащей центральную линию ВПП.

## Наследование

#### Наследуется от класса:

- F NavaidEquipment

## Атрибуты

##### uuid

##### frequency
Тип данных: ValFrequencyType

The frequency of the localizer. Частота курсового посадочного радиомаяка.

##### magneticBearing
Тип данных: ValBearingType

The measured angle between the localizer beam and Magnetic North at the localizer antenna.
Измеренный угол между лучом курсового посадочного радиомаяка и магнитным севером на курсовой антенне.

##### magneticBearingAccuracy
Тип данных: ValAngleType

Accuracy of the measured angle between the localizer beam and Magnetic North at the localizer antenna.
Точность измеренного угла между лучом курсового посадочного радиомаяка и магнитным севером на курсовой антенне.

##### trueBearing
Тип данных: ValBearingType

The measured angle between the localizer beam and True North at the localizer antenna.
Измеренный угол между лучом курсового посадочного радиомаяка и истинным севером на курсовой антенне.
Примечание: истинный север - это северная точка, в которой пересекаются меридианы.

##### trueBearingAccuracy
Тип данных: ValAngleType

Accuracy of the measured angle between the localizer beam and True North at the localizer antenna.
Точность измеренного угла между  лучом курсового посадочного радиомаяка и истинным севером на курсовой антенне.

##### declination
Тип данных: ValMagneticVariationType

The angular difference between True North and the station declination (Magnetic North - as indicated by the station).
Угловая разность между истинным севером и магнтиным склонением в данной точке (на станции).

##### widthCourse
Тип данных: ValAngleType

The localizer course width, in degrees. Ширина линии курса курсового маяка, в градусах.

##### widthCourseAccuracy
Тип данных: ValAngleType

Accuracy of the localizer course width, in degrees. Точность ширины линии курса курсового маяка, в градусах.

##### backCourseUsable
Тип данных: CodeILSBackCourseType

A code indicating the usability of the localizer signal in the back course sector.
Код указывающий использование сигнала курсового посадочного радиомаяка (localizer) в секторе обратного направления.
Значения: YES, NO и RSTR (запрещено)

##### designator
Тип данных: CodeNavaidDesignatorType

Наследуетcя из таблицы NavaidEquipment.

##### name
Тип данных: TextNameType

Наследуетcя из таблицы NavaidEquipment.

##### emissionClass
Тип данных: CodeRadioEmissionType

Наследуетcя из таблицы NavaidEquipment.

##### mobile
Тип данных: CodeYesNoType

Наследуетcя из таблицы NavaidEquipment.

##### magneticVariation
Тип данных: ValMagneticVariationType

Наследуетcя из таблицы NavaidEquipment.

##### dateMagneticVariation
Тип данных: DateYearType

Наследуетcя из таблицы NavaidEquipment.

##### flightChecked
Тип данных: CodeYesNoType

Наследуетcя из таблицы NavaidEquipment.

## Связи

### Один к одному:

- O ElevatedPoint

### Один ко многим:

- O ~~NavaidEquipmentMonitoring~~
- O ~~NavaidOperationalStatus~~
- O ~~Note~~

### Многие ко многим:

- F ~~RunwayCentrelinePoint~~
- F ~~VerticalStructure~~
- F Navaid

### Многие к одному:

- F OrganisationAuthority
