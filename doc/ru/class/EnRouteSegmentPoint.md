EnRouteSegmentPoint
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_EnRouteSegmentPoint)

Тип: Object

Указывает на точку, связанную с определенным сегментом пути (трассы).

## Наследование

#### Наследуется от класса:
- O SegmentPoint

## Атрибуты

##### id

Наследуетcя из таблицы SegmentPoint.

##### roleFreeFlight
Тип данных: CodeFreeFlightType

Сводный полет это метод контроля над воздушным движением, который использует не централизованный контроль. Вместо этого части воздушного пространства резервируют динамически и автоматически путем их рассредоточния (распределения), с использованием компьютерных коммуникаций для того, чтобы обеспечить требуемое расстояние между воздушными суднами.

##### roleRVSM
Тип данных: CodeRVSMPointRoleType

Код, показывающий, что у точки есть особенная роль в контексте RVSM (Cокращенный минимум вертикального эшелонирования)

##### turnRadius
Тип данных: ValDistanceType

Рекомендованный радиус поворота при продолжении движения по предыдущему сегменту пути (начальная точка) или при продолжении движения по следующему сегменту пути (конечная точка).

##### roleMilitaryTraining
Тип данных: CodeMilitaryRoutePointType

Код, указывающий на использование точки в случае военного тренировочного пути.

##### reportingATC
Тип данных: CodeATCReportingType

Наследуетcя из таблицы SegmentPoint.

##### flyOver
Тип данных: CodeYesNoType

Наследуетcя из таблицы SegmentPoint.

##### waypoint
Тип данных: CodeYesNoType

Наследуетcя из таблицы SegmentPoint.

##### radarGuidance
Тип данных: CodeYesNoType

Наследуетcя из таблицы SegmentPoint.

##### idSignificantPoint
Ссылка на: SignificantPoint (id)

Наследуетcя из таблицы SegmentPoint.

##### uuidRouteSegment
Ссылка на: RouteSegment (uuid)

Начальная/конечная точка для сегмента пути.

## Связи

### Один к одному:

- F RouteSegment start
- F RouteSegment end
- O SignificantPoint
- F RadioFrequencyArea
- F ~~HoldingAssessment~~
- F ~~HoldingPattern~~
- C ~~HoldingPatternLength~~
- F ~~UnplannedHolding~~

### Один ко многим:

- O ~~PointReference~~
- O ~~Note~~

### Многие ко многим:

### Многие к одному:

