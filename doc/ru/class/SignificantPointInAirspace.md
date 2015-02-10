SignificantPointInAirspace
====
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SignificantPointInAirspace)

Тип: Feature

Использование значимых точек и связанное.

## Наследование

### Родительский класс для:
- O Elevated Point

## Атрибуты

##### uuid

##### type
Тип данных: CodeAirspacePointRoleType

Код, указывающий на то, как используется значимая точка в воздушном пространстве.
Например: точка входа, точка выхода и т.д.

##### relativeLocation
Тип данных: CodeAirspacePointPositionType

Код, обозначающий расположение значимой точки в воздушном пространстве.
Например: внутри, за пределеами, на границе.

##### uuidAirspace
Ссылка на: Airspace

Воздушное пространство, содержаще значимую точку.

##### idSignificantPoint
Ссылка на: SignificantPoint (id)

Расположение значимой точки воздушного пространства.

## Связи

### Один к одному:

- C ~~SignificantPoint~~

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

- отсутствуют

### Многие к одному:

- F Airspace
