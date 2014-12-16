AirportHeliport
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliport)

Тип: Feature

Определенный участок земной или водной поверхности (включая любые здания, сооружения и оборудование),
предназначеный для прибытия, отправления и движение по этой поверхности воздушных судов/вертолетов.

## Атрибуты

##### uuid

##### designator
Тип данных: CodeAirportHeliportDesignatorType

Кодированный указатель на аэродром/вертодром. Данный идекс формируется по следующим правилам:

1. Если аэродром/вертодром имеет четырехбуквенный индекс ICAO, то данный код становится индексом;
2. Если аэродром/вертодром не имеет четырехбуквенный индекс ICAO, но имеет трехбуквенный индекс IATA, то данный код становится индексом;
3. Если аэродром/вертодром не имеет ни четырехбуквенного индекса ICAO, ни трехбуквенного индекса IATA, то в качестве кода используется искуственно сгенерированный код, который содержит две буквы и 4 цифры: две буквы это код государства, которому принадлежит аэродром/вертодром и числом от 0001 до 9999. 

##### name
Тип данных: TextNameType

Основное офицальное название аэродрома, назначенное соответствующим органом.

##### locationIndicatorICAO
Тип данных: CodeICAOType

Четырехбуквенный индекc ICAO аэродрома/вертодрома, как указано в документе ICAO Doc 7910.

##### designatorIATA
Тип данных: CodeIATAType

Трехбуквенный индекс, который присваивается локации в соответствии с правилами (Резолюция 767) регулируемыми Международной Ассоциацией Воздушного Транспорта (IATA).

##### type
Тип данных: CodeAirportHeliportType

Код указывающий на тип аэродрома/вертодрома. Пример: только аэродром, аэродром с вертодромов и т.д.

##### certifiedICAO
Тип данных: CodeYesNoType

Код указавающий сертифицирован аэродром/вертодром или нет по правилам ICAO.

##### privateUse
Тип данных: CodeYesNoType

Аэродром/вертодром закрыт для общего пользования, только для владельцев.

##### controlType
Тип данных: CodeMilitaryOperationsType

Тип показывающий отношение аэродрома/вертодрома к гражданской или военной авиации.

##### fieldElevation
Тип данных: ValDistanceVerticalType

Высота над уровнем моря (MLS) в наивысшей точке района посадки.

##### fieldElevationAccuracy
Тип данных: ValDistanceVerticalType

Точность определения высоты в наивысшей точке района посадки.

##### verticalDatum
Тип данных: CodeVerticalDatumType

Система координат, которая использовалась для замера высоты в наивысшей точке района посадки.

##### magneticVariation
Тип данных: ValMagneticVariationType

Угловая разница между истинным направление на север и магнитным, измеренными в данной точке и на данное время.

##### magneticVariationAccuracy
Тип данных: ValAngleType

Точность измерения магнитного склонения в градусах.

##### dateMagneticVariation
Тип данных: DateYearType

Год, на который измерено значение магнитного склонения.

##### magneticVariationChange
Тип даных: ValMagneticVariationChangeType

Величина годового изменения магнитного склонения.

##### referenceTemperature
Тип данных: ValTemperatureType

Среднемесячная величина максимальной дневной температуры самого теплого месяца в году на аэродроме/вертодроме.

##### altimeterCheckLocation
Тип данных: CodeYesNoType

Наличие точки или области, выделяемой на аэродроме/вертодроме, где можно провести проверку высотомера.

##### secondaryPowerSupply
Тип данных: CodeYesNoType

Код указывающий на наличие или отсутствие резервного электроснобжения на аэродроме/вертодроме.

##### windDirectionIndicator
Тип данных: CodeYesNoType

Код указывающий на наличие или отсутствие оборудования показывающего направление и скорость ветра.

##### landingDirectionIndicator
Тип данных: CodeYesNoType

Код указывающий на наличие или отсутствие оборудования которое визуально показывает текущее направление предназначенное для взлета и посадки.

##### transitionAltitude
Тип данных: ValDistanceVerticalType

The altitude at or below which the vertical position of an aircraft is controlled by reference to altitudes.

##### transitionLevel
Тип данных: ValFLType

Самый низкий эшелон доступный для использования выше абсолютной высоты перехода.

##### lowestTemperature
Тип данных: ValTemperatureType

Значение самой низкой температуры самого холодного месяца в году.

##### abandoned
Тип данных: CodeYesNoType

Код указывающий на то, чтото аэродром/вертодром больше не эксплуатируется, но его инфраструктура всё ещё существует и видна с воздуха.

##### certificationDate
Тип данных: DateType

Дата, когда аэродром/вертодром был сертифицирован надзирающим органом.

##### certificationExpirationDate
Тип данных: DateType

Дата, когда сертификат аэродром/вертодром заканчивает свой срок действия.

##### uuidOrganisationAuthority
Ссылка на: OrganisationAuthority (uuid)

Организация, которая отвечает за управление аэропорт/вертодром.

Как правило, это означает, что соответствующяя организация/орган отвечает за управление аэродромом/вертодромом. Понятие "управление аэропортом" не применяется ко всем аэродромам/вертодромов во всем мире. В этом случае, аэродром/вертодром будет ассоциироваться с государством, несущим ответственность за своих действия.

##### uuidElevatedPoint
Ссылка на: ElevatedPoint (uuid)

Контрольная точка аэродрома.

##### uuidElevatedSurface
Ссылка на: ElevatedSurface (uuid)

Площадь аэродрома/вертодрома, используемая для авиационных операций.

## Связи

### Один к одному:

- O ElevatedPoint
- O ElevatedSurface

### Один ко многим:

- O City
- O AirportHeliportContamination
- O ContactInformation
- O AirportHeliportAvailability
- F ~~Runway~~
- F ~~Taxiway~~
- F ~~Apron~~
- F ~~Road~~
- F ~~TouchDownLiftOff~~
- F ~~NonMovementArea~~
- F ~~WorkArea~~
- F SurveyControlPoint
- F ~~AirportHeliportCollocation hostAirport~~
- F ~~AirportHeliportCollocation dependentAirport~~
- F AirportHotSpot
- F ~~RadarSystem~~
- F ~~GroundTrafficControlService~~
- F ~~NavigationSystemCheckpoint~~
- F ~~DesignatedPoint~~
- C ~~SignificantPoint~~
- F ~~AeronauticalGroundLight~~
- F ~~Unit~~
- C ~~ObstacleAreaOrigin~~
- C ~~FlightConditionElementChoice~~
- C ~~FlightRoutingElementChoice~~
- O ~~Note~~

### Многие ко многим:

- F AltimeterSource
- F ~~RulesProcedures~~
- F ~~AirportGroundService~~
- F ~~InformationService~~
- F ~~AirTrafficControlService~~
- F ~~Procedure~~
- F ~~Navaid~~
- F ~~SafeAltitudeArea~~

### Многие к одному:

- F OrganisationAuthority
