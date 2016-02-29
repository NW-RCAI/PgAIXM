Elevation
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Elevation)

Тип: Feature
A component of an MLS consisting of an SHF transmitter, and associated equipment radiating signals within a volume of airspace served by the MLS,
thereby furnishing elevation information as an angular value to aircraft approaching the runway.
Компонент СВЧ-системы посадки по-приборам, состоящий из передатчика сантиметрового диапазона и связанного оборудования, испускающего сигнала в воздушном пространстве,
обслуживаемом данной СВЧ-системой посадки по-приборам, таким образом предоставляя информацию,

## Наследование

#### Наследуется от класса:

- F NavaidEquipment

## Атрибуты

##### uuid

##### angleNominal
Тип данных: ValAngleType

The normal glide path angle for the MLS installation.
Нормальный угол траектории снижения самолёта для установки СВЧ-системы посадки по-приборам.

##### angleMinimum
Тип данных: ValAngleType

The value of the lowest elevation angle authorized for an MLS procedure.
Минимальное значение угла возвышения, разрешенное для процедуры посадки по-приборам с использованием СВЧ-системы.

##### angleSpan
Тип данных: ValAngleType

The value of the span angle of the elevation transmitter signal between the lower and the upper limits.
Значение угла охвата сигнала радиопередатчика высоты между нижней и верхней границами.

##### angleAccuracy
Тип данных: ValAngleType

Accuracy of the elevation angle.
Точность угла возвышения.

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
