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

AirportHeliport включает в себя:
--------------------------------

0..* AirportHeliportContamination

0..* City                       

0..1 OrganisationAuthority

0..1 ElevatedPoint

0..1 ElevatedSurface

0..* AltimeterSource

0..* ContactInformation

0..* ~~AirportHeliportAvailability~~

0..* ~~Note~~


AirportHeliport содержится в:
-----------------------------
0..1 ~~Runway~~

0..1 ~~Taxiway~~

0..1 ~~Apron~~

0..1 ~~Road~~

0..1 ~~TouchDownLiftOff~~

0..1 ~~NonMovementArea~~

0..1 SurveyControlPoint~~

0..1 ~~WorkArea~~

0..1 ~~AirportHeliportCollocation hostAirport~~

0..1 ~~AirportHeliportCollocation dependentAirport~~

0..1 ~~AirportHotSpot~~

0..* ~~RulesProcedures~~

0..1 ~~RadarSystem~~

0..* ~~AirportGroundService~~

0..* ~~InformationService~~

0..1 ~~GroundTrafficControlService~~

0..* ~~AirTrafficControlService~~

0..1 ~~NavigationSystemCheckpoint~~

0..* ~~Navaid~~

0..1 ~~DesignatedPoint~~

0..1 ~~SignificantPoint~~

0..1 ~~AeronauticalGroundLight~~

0..1 ~~Unit~~

0..1 ~~ObstacleAreaOrigin~~ 

0..* ~~Procedure~~

0..* ~~SafeAltitudeArea~~

0..1 ~~FlightConditionElementChoice~~

0..1 ~~FlightRoutingElementChoice~~
