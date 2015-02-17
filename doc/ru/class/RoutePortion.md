RoutePortion
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RoutePortion)

Тип: Object

Группа из двух и более последовательных сегментов одного пути, которые одинаково используются или имеют одинаковы полетные ограничения.

## Атрибуты

##### id

##### uuidRoute
Ссылка на: Route

Путь формируется сегментами пути.

##### idCurve
Ссылка на: Curve (id)

Размер сегмента пути.

##### idSignificantPointStart
Ссылка на: SignificantPointStart (id)

Начало части пути (RoutePortion).

##### idSignificantPointEnd
Ссылка на: SignificantPointEnd (id)

Конец части пути (RoutePortion).

##### idSignificantPointIntermediate
Ссылка на: SignificantPointIntermediate (id)

Промежуточная точка части пути (RoutePortion), используемая для того, чтоб однозначно идентифицировать RoutePortion.

##### uuidRoute
Ссылка на: Route

Путь формируется сегментами пути.

## Связи

### Один к одному:

- C SignificantPoint start
- C SignificantPoint intermediatePoint
- C SignificantPoint end

- O ~~Curve~~

### Один ко многим:

- O ~~RouteAvailability~~
- O ~~Note~~

### Многие ко многим:

### Многие к одному:

- F Route
