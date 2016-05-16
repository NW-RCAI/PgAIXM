VerticalStructurePart
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_VerticalStructurePart)

Тип: Object

A part of the vertical structure that can be represented as point, line or polygon with vertical extent.
Часть вертикальной структуры, которая может быть представлена как точка, линия или полигон с вертикальным распространением.

## Наследование

#### Наследуется от класса:

- O PropertiesWithSchedule

## Атрибуты

##### uuid

##### verticalExtent
Тип данных: ValDistanceType

The extent of the vertical structure part.
Величина вертикальной структуры части препятствия.

##### verticalExtentAccuracy
Тип данных: ValDistanceType

Accuracy of the value of the declared vertical extent.
Точность указаного вертикального распространения.

##### type
Тип данных: CodeVerticalStructureType

A code indicating the type of vertical structure, such as building, tower, cable, etc.
Тип вертикальной структуры (строение, башня, ЛЭП и т.д.).

##### constructionStatus
Тип данных: CodeStatusConstructionType

This property enables the provision of information about the construction of the man-made object that constitutes the vertical structure.
Предоставление информации о конструкции объектов, созданных руками человека и составляющих вертикальную структуру.

##### markingPattern
Тип данных: CodeVerticalStructureMarkingType

The general layout of the external paint or another marking element, intended to increase the visibility of the vertical structure.
Общее представление внешнего рисунка (оформления) или других маркировочных элементов, призванных увеличить видимость вертикальной структуры.

##### markingFirstColour
Тип данных: CodeColourType

The principal colour of the marking.
Основной цвет маркировки.

##### markingSecondColour
Тип данных: CodeColourType

The secondary colour for the marking.
Второй по значимости цвет маркировки.

##### mobile
Тип данных: CodeYesNoType

A flag indicating whether the vertical structure is expected to move around its nominal location.
The accuracy property of the related Point, Surface or Point can be used to provide the maximum displacement range.
Перемещается ли вертикальная структура около своего номинального положения - да/нет.
Значение точности координат точки, линии или полигона относящихся к данному препятствию может быть использовано для укзания величины максимального смещения.

##### frangible
Тип данных: CodeYesNoType

Boolean indicating whether the obstruction is easily broken
Легко ли разрушается препятствие (ломкость).

##### visibleMaterial
Тип данных: CodeVerticalStructureMaterialType

The type(s) of material that compose the load-bearing structure and/or exterior facing of a vertical construction (for example: a building or non-building structure).
Тип материала, слагающего несущую конструкцию и/или наружная отделка вертикальной конструкции.

##### designator
Тип данных: TextDesignatorType

An alphanumeric code by which the structure is identified locally.
Буквенно-цифровой код, по которому структура идентифицируется по местоположению.


##### uuidVerticalStructure
Ссылка на: VerticalStructure (uuid)

Часть вертикальной структуры (VerticalStructure).

## Связи

### Один к одному:

- С VerticalStructurePartGeometry

### Один ко многим:

- O ~~Note~~

### Многие ко многим:


### Многие к одному:



