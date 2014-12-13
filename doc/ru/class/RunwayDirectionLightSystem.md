RunwayDirectionLightSystem
===============
Тип: Feature

Система освещения предназначенная для направленийпосадки и взлета, в том числе огни КПТ.

## Атрибуты

##### uuid

Наследуетcя из таблицы GroundLightSystem.

##### position
Тип данных: CodeRunwaySectionType

Код, идентифицирующий часть ВПП, которую обслуживает система освещения.

##### emergencyLighting
Тип данных: CodeYesNoType

Наследуетcя из таблицы GroundLightSystem.

##### intensityLevel
Тип данных: CodeLightIntensityType

Наследуетcя из таблицы GroundLightSystem.

##### colour
Тип данных: CodeColourType

Наследуетcя из таблицы GroundLightSystem.


## Связи

### Один к одному:

### Один ко многим:

- O ~~Note~~

### Многие ко многим:

- O ~~LightElement~~
- O ~~GroundLightingAvailability~~

### Многие к одному:

- F RunwayDirection
