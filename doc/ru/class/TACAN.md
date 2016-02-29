TACAN
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_TACAN)

Тип: Feature

Ультравысокочастотная угломерно-дальномерная воздушная радионавигационная система ближнего действия ("ТАКАН"). Навигационная система, разваиваемая военными и морскими войсками, предоставляющая те же вычисления что и
курсовой всенаправленный радиомаяк ОВЧ-диапазона/дальномерная система DME, в том случае если это нужно управляющему пилоту и если воздушное судно снаряжено соответствующе

## Наследование

#### Наследуется от класса:

- F NavaidEquipment

## Атрибуты

##### uuid

##### channel
Тип данных: CodeTACANChannelType

A code indicating the channel of the TACAN system. Канал системы ТАКАН.

##### declination
Тип данных: ValMagneticVariationType

The angular difference between the direction of the 'zero bearing' indicated by the station and the direction of the True North.
Угловая разница между направлением на нулевую отметку, указываемую станцией, и направлением на истинный север.

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
