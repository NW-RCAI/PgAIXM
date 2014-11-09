AirportHeliport
===============

Определенный участок земной или водной поверхности (включая любые здания, сооружения и оборудование)
предназначеный для прибытия, отправления и движение по этой поверхности воздушных судов/вертолетов.

## Атрибуты

##### uuid

##### designator
Тип данных: CodeAirportHeliportDesignatorType

Кодированный индекс для аэродрома/вертодрома. Данный идекс формируется по следующим правилам:

1. Если аэродром/вертодром имеет четырехбуквенный код ICAO, то данный код становится индексом;
2. Если аэродром/вертодром не имеет четырехбуквенный код ICAO, но имеет трехбуквенный код IATA, то данный код становится индексом;
3. Если аэродром/вертодром не имеет ни четырехбуквенного кода ICAO, ни трехбуквенного кода IATA, то в качестве кода используется искуственно сгенерированный код, который содержит две буквы и 4 цифры: две буквы это код государства, которому принадлежит аэродром/вертодром и числом от 0001 до 9999. 

##### name

##### locationIndicatorICAO

##### designatorIATA

##### type

##### certifiedICAO

##### privateUse

##### controlType

##### fieldElevation

##### fieldElevationAccuracy

##### verticalDatum

##### magneticVariation

##### magneticVariationAccuracy

##### dateMagneticVariation

##### magneticVariationChange

##### referenceTemperature

##### altimeterCheckLocation

##### secondaryPowerSupply

##### windDirectionIndicator

##### landingDirectionIndicator

##### transitionAltitude

##### transitionLevel

##### lowestTemperature

##### abandoned

##### certificationDate

##### certificationExpirationDate

## Связи

### Один к одному:

- O ElevatedPoint
- O ElevatedSurface

### Один ко многим:

- O City
- O AirportHeliportContamination
- O ContactInformation
- O ~~AirportHeliportAvailability~~
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
