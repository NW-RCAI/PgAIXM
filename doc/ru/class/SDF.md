SDF
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SDF)

Тип: Feature

Упрощённые радиосредства направленного действия предоставляют конечный курс подхода, также как и курсовой посадочный радиомаяк системы слепой посадки, но по точности уступают курсовому посадочному радиомаяку.
Не предоставляют информацию о глиссаде.
Упрощённые радиосредства направленного действия передают сигналы в диапазоне от 108.1 до 111.95 МГЦ.
Аппаратура захода на посадку и процедуры, используемые в инструментальном заходе на посадку с упрощёнными радиосредствами направленного действия по существу те же самые, что и те, что используются
при выполнении стандартно захода на посадку при помощи курсового посадочного радиомаяка, за исключением того, что курс Упрощённых радиосредств направленного действия может быть не выровнен с ВПП и курс может быть шире, что уменьшает точность.

## Наследование

#### Наследуется от класса:

- F NavaidEquipment

## Атрибуты

##### uuid

##### frequency
Тип данных: ValFrequencyType

The frequency of the localizer. Значение частоты курсового посадочного радиомаяка.

##### magneticBearing
Тип данных: ValBearingType

The measured angle between the localizer beam and Magnetic North at the localizer antenna. Измеренный угол между лучом курсового посадочного радиомаяка и магнитным севером на антенне курсового посадочного радиомаяка.

##### trueBearing
Тип данных: ValBearingType

The measured angle between the localizer beam and True North at the localizer antenna. Измеренный угол между лучом курсового посадочного радиомаяка и истинным севером на антенне курсового посадочного радиомаяка.

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
