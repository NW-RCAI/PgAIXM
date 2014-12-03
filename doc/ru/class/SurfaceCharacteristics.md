SurfaceCharacteristics
===============
Тип: Object

Сущность, объединяющая атрибуты которые моделируют характеристики поверхности аэропорта, такие как прочность, материал и т.д.

## Атрибуты

##### uuid

##### composition
Тип данных: CodeSurfaceCompositionType

Преобладающий материал, из которого сложена поверхность подвижной области.

##### preparation
Тип данных: CodeSurfacePreparationType

Подготовительные работы, проделанные с поверхностью.

##### surfaceCondition
Тип данных: CodeSurfaceConditionType

Качество поверхности, как категория.

##### classPCN
Тип данных: ValPCNType

Прочность поверхности для произовольных операций.

##### pavementTypePCN
Тип данных: CodePCNPavementType

Поведение поверхности (прочная или не прочная), используемое для классификационного числа прочности покрытия (PCN).

##### pavementSubgradePCN
Тип данных: CodePCNSubgradeType

Категория прочности подстилающей поверхности, связанная с классификационным числом прочности покрытия (PCN).

##### maxTyrePressurePCN
Тип данных: CodePCNTyrePressureType

Максимально разрешённая категория давления, связанная с классификационным числом прочности покрытия (PCN), как категория.

##### evaluationMethodPCN
Тип данных: CodePCNMethodType

Метод, используемый для оценивания поверхновсти ВПП.

##### classLCN
Тип данных: ValLCNType

Значение, которое обозначает пик, несущий момент, когда поверхность может обрабатывать повторно не сокращая время работы.

##### weightSIWL
Тип данных: ValWeightType

...

##### tyrePressureSIWL
Тип данных: ValPressureType

...

##### weightAUW
Тип данных: ValWeightType

...



Аэродром, которому принадлежит ВПП.

## Связи

### Один к одному:

- F Runway
- F ~~RunwayElement~~
- F ~~ArrestingGear~~
- F ~~RunwayBlastPad~~
- F ~~Taxiway~~
- F ~~TaxiwayElement~~
- F ~~DeicingArea~~
- F ~~Apron~~
- F ~~ApronElement~~
- F ~~AircraftStand~~
- F ~~Road~~
- F ~~TouchDownLiftOff~~
- F ~~AirportHeliportProtectionArea~~

### Один ко многим:

- O ~~Note~~

### Многие ко многим:


### Многие к одному:

