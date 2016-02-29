Azimuth
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Azimuth)

Тип: Feature

Компонент СВЧ-системы посадки по-приборам: состоит из передатчика сантиметрового диапазона и связанного оборудования,
излучает сигналы в воздушном пространстве, обслуживаемом СВЧ-системой посадки по приборам,
и, таким образом, предоставляет показания азимута воздушному судну, приближающемуся к ВПП, и обратные показания азимута судну, взлетающему с ВПП или выполняющему повторный заход на посадку.

## Наследование

#### Наследуется от класса:

- F NavaidEquipment

## Атрибуты

##### uuid

##### type
Тип данных: CodeMLSAzimuthType

A code indicating if it is 'normal' or 'back' azimuth equipment. Код, указывающий тип азимутального оборудования: нормальное или обратное:
FWD - прямое, BWD - обратное

##### trueBearing
Тип данных: ValBearingType

The measured angle between the azimuth beam and True North at the azimuth antenna.
Измеренный угол между азимутальным лучом и истинным севером на антенне для измерения азимута.

##### trueBearingAccuracy
Тип данных: ValAngleType

Accuracy of the measured angle between the azimuth beam and True North at the azimuth antenna
Точность измеренного угла между азимутальным лучом и истинным севером на антенне для измерения азимута.

##### magneticBearing
Тип данных: ValBearingType

The measured angle between the direction of the azimuth beam and Magnetic North at the azimuth antenna.
Измеренный угол между направлением азимутального луча и истинным севером на антенне для измерения азимута.

##### angleProportionalLeft
Тип данных: ValAngleType

The value of the angle within which the azimuth indication is proportional to the deviation from the azimuth zero indication direction,
and left of this direction from the azimuth antenna.
Значение угла, в рамках которого азимутальное направление пропорционально отклонению от нулевого азимутального направления,
отсчитывается влево от направления на антенне для измерения азимута.

##### angleProportionalRight
Тип данных: ValAngleType

The value of the angle within which the azimuth indication is proportional to the deviation from the azimuth zero indication direction,
and right of this direction from the azimuth antenna.
Значение угла, в рамках которого азимутальное направление пропорционально отклонению от нулевого азимутального направления,
отсчитывается вправо от направления на антенне для измерения азимута.

##### angleCoverLeft
Тип данных: ValAngleType

The value of the angle from the zero indication direction within which the azimuth indication is usable, and left of this direction from the azimuth antenna.

##### angleCoverRight
Тип данных: ValAngleType

The value of the angle from the zero indication direction within which the azimuth indication is usable, and right of this direction from the azimuth antenna.

##### channel
Тип данных: CodeMLSChannelType

A code indicating the channel on which the Microwave Landing System is operating.
Код, указывающий канал, на котором работает микроволновая система посадки.

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
