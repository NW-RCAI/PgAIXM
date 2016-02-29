NavaidEquipment
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_NavaidEquipment)

Тип: Feature

Материальное (конкретное физическое воплощение, а не некая система как в таблице Navaid) радионавигационное средство,
такое как VOR (всенаправленное навигационное ОВЧ средство с угломерными возможностями), DME (дальномерное оборудование),
localizer (курсовой посадочный радиомаяк), TACAN (импульсно-фазовая азимутально-дальномерная радионавигационная система ближнего действия) и т.д.

## Наследование

### Родительский класс для:

- F Azimuth
- F DME
- F DirectionFinder
- F Elevation
- F Glidepath
- F Localizer
- F MarkerBeacon
- F NDB
- F SDF
- F TACAN
- F VOR

## Атрибуты

##### uuid

##### designator
Тип данных: CodeNavaidDesignatorType

The coded identifier of a radio navigation aid. Закодированный идентификатор радионавигационного средства.

##### name
Тип данных: TextNameType

The long name given to the navaid equipment. Полное наименование радионавигационного средства.

##### emissionClass
Тип данных: CodeRadioEmissionType

A code indicating the type of emission, as defined at the 1979 ITU World Administrative Radio Conference.
Код, указывающий класс излучения (A2, A3A, A3B и т.д.)

##### mobile
Тип данных: CodeYesNoType

Indicates if the navaid equipment is mobile. Подвижное/не подвижное радионавигационное средство.

##### magneticVariation
Тип данных: ValMagneticVariationType

The measured angle between Magnetic North and True North at the VOR and at the time reported in dateMagneticVariation.
Угол между магнитным и истинным севером в районе навигационного средства во время, обозначенное в столбце dateMagneticVariation.

##### dateMagneticVariation
Тип данных: DateYearType

The year the magnetic variation was measured. Год измерения магнитного склонения.

##### flightChecked
Тип данных: CodeYesNoType

Indicates if the navaid equipment has been flight checked. Использовалось ли РНС для полетов ("проверено полетами")

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
