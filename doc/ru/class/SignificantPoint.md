SignificantPoint
====
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SignificantPoint)

Тип: Choice

Связующий класс, который позволяет выбирать между аэронавигационным вспомогательным оборудованием (navaid), точкой ВПП, точкой относимости аэропорта, целевой точкой или фиксированной именованной точкой.
Значимая точка отвечает за определенное географическое положение, используемое, чтобы определить маршрут ATS, отвечает за траекторию полета воздушного судна и за другие цели навигации/службы управления воздушным движением.

## Атрибуты

##### id

##### idPoint
Ссылка на: Point (id)

Не именованная точка, определяемая только широтой и долготой.

## Связи

### Один к одному:

- F ~~DesignatedPoint~~
- F ~~Navaid~~
- F ~~TouchDownLiftOff~~
- F ~~RunwayCentrelinePoint~~
- F AirportHeliport
- O Point
- O ~~SegmentPoint~~
- F ~~AngleIndication~~
- F ~~DistanceIndication~~
- F SignificantPointInAirspace
- F ~~TerminalArrivalArea IF~~
- F ~~TerminalArrivalArea IAF~~
- F ~~NavigationArea~~
- F ~~FinalLeg~~
- F ~~SafeAltitudeArea~~
- O ~~DirectFlightSegment end~~
- O ~~DirectFlightSegment start~~
- C ~~FlightConditionElementChoice~~
- C ~~FlightRoutingElementChoice~~
- O ~~RoutePortion start~~
- O ~~RoutePortion intermediatePoint~~
- O ~~RoutePortion end~~
- F ~~ChangeOverPoint~~

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

- отсутствуют

### Многие к одному:

- отсутствуют
