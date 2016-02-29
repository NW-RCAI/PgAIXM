NDB
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_NDB)

Тип: Feature

A Non-directional radio beacon. A low or medium frequency radio beacon which transmits signals whereby the pilot of
an aircraft properly equipped can determine bearings and 'home in' on the station.
Ненаправленный радиомаяк. Радиомаяк низких или средних частот, передающий сигналы посредством чего пилот судна, снаряженный должным образом,
может определить направление (пеленг) и "нацелиться" на станцию.

## Наследование

#### Наследуется от класса:

- F NavaidEquipment

## Атрибуты

##### uuid

##### frequency
Тип данных: ValFrequencyType

The frequency of the NDB emission. Значение частоты ненаправленного радиомаяка.

##### class
Тип данных: CodeNDBUsageType

Класс ненаправленного радиомаяка.

##### emissionBand
Тип данных: CodeEmissionBandType

Тип полосы частот.

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
