DME
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_DME)

Тип: Feature

Наземное оборудование дециметрового диапазона, которое используется в связке с воздушным оборудованием для определения расстояния
между воздушным и наземным оборудованием.

## Наследование

#### Наследуется от класса:

- F NavaidEquipment

## Атрибуты

##### uuid

##### type
Тип данных: CodeDMEType

Определенные спектральные характеристики или точность дальномерного оборудования дециметрового диапазона, как категории:
NARROW - характеристики узкого спектра, PRECISION, WIDE - широкоспектральные характеристики

##### channel
Тип данных: CodeDMEChannelType

Канал дальномерного оборудования

##### ghostFrequency
Тип данных: ValFrequencyType

The frequency of a virtual VHF facility paired with the DME
Частота фактического оборудования ОВЧ связанного с дальномерным оборудованием.

##### displace
Тип данных: ValDistanceType

The distance from the DME antenna to the position where the zero range indication occurs in the DME receiver.
Расстояние от антенны приемника измерителя наклонной дальности до места с нулевым значением дальности на приемнике измерителя дальности.

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
