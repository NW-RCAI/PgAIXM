Glidepath
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Glidepath)

Тип: Feature

A component of an ILS consisting of a UHF transmitter radiating signals and providing a straight line descent path
in the vertical plane containing the centre line of the runway served by the ILS, and thereby furnishing
descent information down to the lowest authorized decision height or to the surface of a runway,
depending on the Facility Performance Category of the ILS.
Компонент системы посадки по приборам: состоит из передатчика УВЧ (дециметрового) диапазона, излучающего сигналы
и обеспечивающего прямолинейный спуск в вертикальной плоскости, которая содержит центральную линию ВПП, обслуживаемой системой посадки по приборам,
и таким образом передает информацию о спуске вниз для низшего решения о разрешения или для поверхности ВПП..?

## Наследование

#### Наследуется от класса:

- F NavaidEquipment

## Атрибуты

##### uuid

##### frequency
Тип данных: ValFrequencyType

The frequency value of the glide path indicator.
Значение частоты укателя глиссады.

##### slope
Тип данных: ValAngleType

The angle of the glide path. Угол глиссады.

##### angleAccuracy
Тип данных: ValAngleType

Accuracy of the Glide path angle. Точность угла глиссады.

##### rdh
Тип данных: ValDistanceVerticalType

The value of the ILS Reference Datum Height (ILS RDH). Значение высоты опорной точки системы посадки по приборам.

##### rdhAccuracy
Тип данных: ValDistanceVerticalType

Accuracy of the value of the ILS Reference Datum Height (ILS RDH). Точность значения высоты опорной точки системы посадки по приборам.

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
