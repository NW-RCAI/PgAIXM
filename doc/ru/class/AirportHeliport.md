AirportHeliport
===============

Определенный участок земной или водной поверхности (включая любые здания, сооружения и оборудование)
предназначеный для прибытия, отправления и движение по этой поверхности воздушных судов/вертолетов.

Атрибуты:
---------

designator

name

locationIndicatorICAO

designatorIATA

type

certifiedICAO

privateUse

controlType

fieldElevation

fieldElevationAccuracy

verticalDatum

magneticVariation

magneticVariationAccuracy

dateMagneticVariation

magneticVariationChange

referenceTemperature

altimeterCheckLocation

secondaryPowerSupply

windDirectionIndicator

landingDirectionIndicator

transitionAltitude

transitionLevel

lowestTemperature

abandoned

certificationDate

certificationExpirationDate

## Связи

### Один к одному:

- ElevatedPoint
- ElevatedSurface

### Один ко многим:

- City
- AirportHeliportContamination
- ContactInformation
- ~~AirportHeliportAvailability~~
- ~~Runway~~
- ~~Taxiway~~
- ~~Apron~~
- ~~Road~~
- ~~TouchDownLiftOff~~
- ~~NonMovementArea~~
- ~~WorkArea~~
- SurveyControlPoint
- ~~AirportHeliportCollocation hostAirport~~
- ~~AirportHeliportCollocation dependentAirport~~
- AirportHotSpot
- ~~RadarSystem~~
- ~~GroundTrafficControlService~~
- ~~NavigationSystemCheckpoint~~
- ~~DesignatedPoint~~
- ~~SignificantPoint~~
- ~~AeronauticalGroundLight~~
- ~~Unit~~
- ~~ObstacleAreaOrigin~~
- ~~FlightConditionElementChoice~~
- ~~FlightRoutingElementChoice~~
- ~~Note~~

### Многие ко многим:

- AltimeterSource
- ~~RulesProcedures~~
- ~~AirportGroundService~~
- ~~InformationService~~
- ~~AirTrafficControlService~~
- ~~Procedure~~
- ~~Navaid~~
- ~~SafeAltitudeArea~~

### Многие к одному:

- OrganisationAuthority
