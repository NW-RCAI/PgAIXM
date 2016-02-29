VOR
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_VOR)

Тип: Feature

A VHF omnidirectional radio range beacon. A short-range, very-high-frequency omnidirectional beacon which provides an indication in the aircraft of the bearing of the beacon, or left-right track indication.
Курсовой всенаправленный радиомаяк ОВЧ-диапазона. Всенаправленный радиомаяк узкого диапазона очень высокой частоты, обеспечивает определение на воздушном судне азимута радиомаяка или маршрута полета слева-справа ?

## Наследование

#### Наследуется от класса:

- F NavaidEquipment

## Атрибуты

##### uuid


  frequency	ValFrequencyType,
  zeroBearingDirection	CodeNorthReferenceType,
  declination	ValMagneticVariationType

##### type
Тип данных: CodeVORType

A code indicating a type of VOR, e.g. conventional VOR or Doppler VOR. Тип курсового всенаправленного радиомаяка ОВЧ-диапазона, например стандартный или доплеровский радимомаяк.

##### frequency
Тип данных: ValFrequencyType

The value of the frequency. Значение частоты.

##### frequency
Тип данных: ValFrequencyType

The value of the frequency. Значение частоты.

##### zeroBearingDirection
Тип данных: CodeNorthReferenceType

A code indicating the direction of the 'zero bearing' provided by the station. For example: magnetic north, true north.
Используемый тип северного полюса (магнитный, истинный и др.)

##### declination
Тип данных: ValMagneticVariationType

The angular difference between True North and the station declination (Magnetic North - as indicated by the station).
Угловая разница между истинным севером и магнитным склонением на станции (магнитный север).

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
