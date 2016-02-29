MarkerBeacon
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_MarkerBeacon)

Тип: Feature

A marker beacon serving to identify a particular location in space by means of a 75MHz transmitter which transmits
a directional signal to be received by aircraft flying overhead.
Маркерный радиомаяк, предназначенный для определения точного местоположения в пространстве с помощью 75МГц-передатчика,
который передает направленные сигналы воздушному судну, пролетающему над ним.

## Наследование

#### Наследуется от класса:

- F NavaidEquipment

## Атрибуты

##### uuid

##### class
Тип данных: CodeMarkerBeaconSignalType

A code indicating the class of the radio marker. Код, указывающий класс маркерного радиомаяка.

##### frequency
Тип данных: ValFrequencyType

The value of the radio emission frequency. Значение частоты радио.

##### axisBearing
Тип данных: ValBearingType

The true bearing of the minor axis of the marker beacon. Истинный пеленг малой оси маркерного радиомаяка.

##### *auralMorseCode *
Тип данных: CodeAuralMorseType

The Morse code transmitted by the beacon. Код Морзе, передаваемый маркерным радиомаяком.

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
