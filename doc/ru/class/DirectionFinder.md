DirectionFinder
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_DirectionFinder)

Тип: Feature

Электронное устройство, используемое для определения местоположения радиоисточника при помощи направленных антенн,
которые получают сильнейший радиосигнал, когда устройство направлено прямо на передатчик.

## Наследование

#### Наследуется от класса:

- F NavaidEquipment

## Атрибуты

##### uuid

##### doppler
Тип данных: CodeYesNoType

Indicates whether the equipment uses the Doppler effect for higher precision.
Использует ли оборудование доплеровский эффект для более высокой точности: да/нет.

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
