SurfaceCharacteristics
===============
Тип: Object

Сущность, объединяющая атрибуты которые моделируют характеристики поверхности аэропорта, такие как прочность, материал и т.д.

## Атрибуты

##### uuid

##### composition
Тип данных: CodeSurfaceCompositionType

Преобладающий материал, из которого состоит рабочая полощадь аэродрома.

##### preparation
Тип данных: CodeSurfacePreparationType

Техника подготовки рабочей поверхности, которая применялась к данной площади.

##### surfaceCondition
Тип данных: CodeSurfaceConditionType

Качество поверхности, как категория.

##### classPCN
Тип данных: ValPCNType

Прочность поверхности для произовольных операций.

##### pavementTypePCN
Тип данных: CodePCNPavementType

Поведение поверхности (жесткая или гибкая), используемое для классификационного числа прочности покрытия (PCN).

##### pavementSubgradePCN
Тип данных: CodePCNSubgradeType

Категория прочности поверхности, связанная с классификационным числом прочности покрытия (PCN).

##### maxTyrePressurePCN
Тип данных: CodePCNTyrePressureType

Максимально разрешённая категория давления, связанная с классификационным числом прочности покрытия (PCN), как категория.

##### evaluationMethodPCN
Тип данных: CodePCNMethodType

Метод, используемый для оценивания поверхновсти ВПП.

##### classLCN
Тип данных: ValLCNType

Значение, которое обозначает пропускную способность, которую поверхность может выдержать без сокращая срока ее службы.

##### weightSIWL
Тип данных: ValWeightType

Максимальная расчетная нагрузка на каждую шину.

##### tyrePressureSIWL
Тип данных: ValPressureType

Максимальное давление в шинах.

##### weightAUW
Тип данных: ValWeightType

Максимальное общее значение веса воздушного судна, независимо от конфигурации шасси самолета.

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

