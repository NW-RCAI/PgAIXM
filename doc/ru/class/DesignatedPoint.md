DesignatedPoint
============
Источник: [AIXM](https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_DesignatedPoint)

Тип: Feature

Точка на местности без РНС, используемая для обозначения воздушной линии, летного пути воздушного судна и для других целей аэронавигации.
Именно в эту таблицу можно записывать информацию о ППМ.

## Наследование

## Атрибуты

##### uuid

##### designator
Тип данных: CodeDesignatedPointDesignatorType

Закодированное наименование точки. Например, 5-буквенное название ИКАО.

##### type
Тип данных: CodeDesignatedPointType

Разновидность (тип) наименования точки, зависящее от того, по каким правилам было создано наименование.

##### name
Тип данных: TextNameType

Полное текстовое название обозначенной точки, если такое имеется.

## Связи

### Один к одному:

- O Point
- F ~~TouchDownLiftOff~~
- F ~~RunwayCentrelinePoint~~
- F ~~DistanceIndication~~
- F ~~AngleIndication~~
- O ~~PointReference~~
- C SignificantPoint

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

### Многие к одному:

- F AirportHeliport
