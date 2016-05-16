ObstacleArea
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ObstacleArea)

Тип: Feature

An area defined by ICAO for the purpose of collecting obstacle data in electronic format,
as necessary to satisfy requirements of air navigation systems or functions.
Территория, обозначенная ИКАО с целью собрать данные о препятствиях в электронном формате,
что требуется для удовлетворения требований аэронавигационных систем или функций.

## Атрибуты

##### uuid

##### type
Тип данных: CodeObstacleAreaType

Indicates the type of the obstacle coverage area. Examples: Area 1, 2, 3 or 4.
Тип территории, занимаемой препятствиями. Например: территория 1, 2, 3 или 4.

##### obstructionIdSurfaceCondition
Тип данных: CodeObstacleAssessmentSurfaceType

Obstruction identification surface that obstructing area represents
Идентификатор поверхности препятствия, на котором расположено препятствие.

## Связи

### Один к одному:

- O Surface
- O ~~ObstacleAreaOrigin~~

### Один ко многим:

- F VerticalStructure
- O ~~Note~~

### Многие ко многим:

### Многие к одному:

