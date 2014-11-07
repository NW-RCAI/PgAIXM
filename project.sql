--Домены:

-- В качестве id используем UUID Type
--
-- http://www.postgresql.org/docs/9.3/static/datatype-uuid.html
CREATE DOMAIN id AS UUID;

-- Уникальный индификатор для аэродрома/вертодрома
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirportHeliportDesignatorType
CREATE DOMAIN CodeAirportHeliportDesignatorType AS VARCHAR(6)
CHECK (VALUE ~ '[:upper:]{3,4}|[:upper:]{2}[0-9]{4}');

-- Используется для названий с максимальной длинной в 60 символов
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextNameType
CREATE DOMAIN TextNameType AS VARCHAR(60);

-- Четырехбуквенный индекс аэродрома ICAO (http://en.wikipedia.org/wiki/International_Civil_Aviation_Organization_airport_code)
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeIATAType
CREATE DOMAIN CodeICAOType AS CHAR(4)
CHECK (VALUE ~ '[:upper:]{4}');

-- Трехбуквенный индекс аэродрома IATA (http://en.wikipedia.org/wiki/International_Air_Transport_Association_airport_code)
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeIATAType
CREATE DOMAIN CodeIATAType AS CHAR(3)
CHECK (VALUE ~ '[:upper:]{3}');

-- Тип объекта AirportHeliport:
-- AD - только аэродром
-- АН - аэродром и вертодром
-- НР - только вертодром
-- LS - посадочная площадка
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirportHeliportType
CREATE TYPE CodeAirportHeliportType AS ENUM ('AD', 'AH', 'HP', 'LS', 'OTHER');

--  Тип данных для хранения значений: Да или Нет
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeYesNoType
CREATE TYPE CodeYesNoType AS ENUM ('YES', 'NO', 'OTHER');

-- Признак принадлежности к военным:
-- CIVIL - только гражданская авиация
-- MIL - только военная авиация
-- JOINT - совместного использования
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeMilitaryOperationsType
CREATE TYPE CodeMilitaryOperationsType AS ENUM ('CIVIL', 'MIL', 'JOINT', 'OTHER');

-- Значение расстояния по вертикали (например: верхние и нижние границы воздушного пространства).
-- Этот тип данных также допускает некоторые специфические не числовые значения:
-- GND - значение "Поверхность Земли"
-- UNL - значение "неограниченный"
-- FLOOR - значение "основание (дно) воздушного пространства", необходимо отображать использование (?) для воздушного пространства с непостоянной нижней границей
-- CEILING - значение "верх воздушного пространства", необходимо отображать использование (?) для воздушного пространства с непостоянной верхней границей
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceVerticalType
CREATE TYPE  UomDistanceVerticalType AS ENUM ('UNL', 'GND', 'FLOOR', 'CEILING', 'OTHER');
CREATE TYPE ValDistanceVerticalType AS (
 ValDistanceVertical REAL,
  units UomDistanceVerticalType
);

-- Вообще в AIXM приведены три используемых датума: EGM_96, AHD (Australian Height Datum), NAVD88 (North American Vertical Datum of 1988), но я думаю что, возможно гораздо больше вариантов
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeVerticalDatumType
CREATE DOMAIN CodeVerticalDatumType AS VARCHAR;

-- Значение угла в данной точке между направлением на магнитный север и направлением на географический север.
-- Положительное значение показывает, что магнитный север восточнее географического.
-- Отрицательное значение показывает, что магнитный север западнее географического.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValMagneticVariationType
CREATE DOMAIN ValMagneticVariationType AS REAL
CHECK (VALUE >= -180 AND VALUE <= 180);

-- Значение угла.
-- предлагаю объединить этот тип с предыдущим и сделать один, так как они одинаковые
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValAngleType
CREATE DOMAIN ValAngleType AS REAL
CHECK (VALUE >= -180 AND VALUE <= 180);

-- Дата, в которой значимым является только год.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateYearType
CREATE DOMAIN DateYearType AS INTEGER
CHECK (VALUE ~ '[1-9][0-9][0-9][0-9]');

-- Величина годового изменения магнитного склонения, единицы измерения - градус/год.
-- вообще всё описание такое же, как у типа ValAngleType, хоть и ед-цы измерения разные, можно объединить
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValMagneticVariationChangeType
CREATE DOMAIN ValMagneticVariationChangeType AS REAL
CHECK (VALUE >= -180 AND VALUE <= 180);

-- Значение температуры + единицы измерения: 
-- С - градусы Цельсия
-- F - Фаренгейта
-- К - Кельвина
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValTemperatureType
CREATE TYPE  UomTemperatureType AS ENUM ('C', 'F', 'K', 'OTHER');
CREATE TYPE ValTemperatureType AS (
  ValTemperature REAL,
  units UomTemperatureType
);

-- Единицы измерения: 
-- FL - эшелон
-- SM - стандратные метры (десятки метров)
-- ставить ли здесь единицы измерения? не очень корректно получится, так как есть ограничение 999 (FL), а как сравнивать не числовое значение с числом?
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValFLType
CREATE TYPE  UomFLType AS ENUM ('FL', 'SM', 'OTHER');
CREATE DOMAIN ValFLBaseType AS REAL
  CHECK (VALUE >999);
CREATE TYPE ValFLType AS (
  valueFL ValFLBaseType,
  units  UomFLType
    )
;

-- Дата по календарю.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateType
CREATE DOMAIN DateType AS DATE;


-- Единицы измерения: 
-- NM - морские мили
-- KM - километры
-- М - метры
-- FT - футы
-- MI - мили
-- CM - сантиметры
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceSignedType
CREATE TYPE  UomDistanceType AS ENUM ('NM', 'KM', 'M', 'FT', 'MI', 'CM', 'OTHER');
CREATE TYPE ValDistanceSignedType AS (
  ValDistanceSigned REAL,
  units UomDistanceType
);
--
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceType
CREATE DOMAIN  ValDistanceBaseType AS REAL
  CHECK (VALUE >0);
CREATE TYPE ValDistanceType AS (
  ValDistance  ValDistanceBaseType,
  units UomDistanceType
);

-- NORMAL - стандартные операции
-- DOWNGRADED - система теоритически может работать на более высоком уровне, но в нынешнее время она ограничена описанным уровнем
-- UNSERVICEABLE - не пригодна для эксплуатации
-- WORK_IN_PROGRESS - работа налаживается (в ремонте) - under construction
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeStatusOperationsType
CREATE TYPE CodeStatusOperationsType AS ENUM ('NORMAL', 'DOWNGRADED', 'UNSERVICEABLE', 'WORK_IN_PROGRESS', 'OTHER');

-- закодированный идентификатор организации, департамента, агенства или объединения
-- Максимальная длина = 12, минимальная = 1
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeOrganisationDesignatorType
CREATE DOMAIN CodeOrganisationDesignatorType AS VARCHAR(12)
CHECK (VALUE ~ '([A-Z]|[0-9])+([ \+\-/]*([A-Z]|[0-9])+)*' AND length(VALUE) >= 1);

-- код, указывающий на тип организации
-- STATE - область, STATE_GROUP - группа областей, ORG - организация в области,
-- INTL_ORG - международная организация, ACFT_OPR - авиационное агентство, HANDLING_AGENCY - транспортное агентство (или логистическое)
-- NTL_AUTH - национальный департамент, ATS - постащик услуг авиаперевозок, COMMERCIAL - другая коммерческая организация
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeOrganisationType
CREATE TYPE CodeOrganisationType AS ENUM ('STATE', 'STATE_GROUP', 'ORG', 'INTL_ORG', 'ACFT_OPR', 'HANDLING_AGENCY', 'NTL_AUTH', 'ATS', 'COMMERCIAL', 'OTHER');

-- текстовое обозначение
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextDesignatorType
CREATE DOMAIN TextDesignatorType AS VARCHAR(16)
CHECK (VALUE ~ '([A-Z]|[0-9]|[, !"&#$%''\(\)\*\+\-\./:;<=>\?@\[\\\]\^_\|\{\}])*' AND length(VALUE) >= 1);

CREATE DOMAIN TextInstructionType AS VARCHAR(10000)
CHECK (length(VALUE) >= 1);

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateTimeType
CREATE DOMAIN DateTimeType AS TIMESTAMP WITHOUT TIME ZONE;

-- единицы измерения глубины:
-- MM - миллиметры
-- СМ - сантиметры
-- IN - дюймы
-- FT - футы
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDepthType
CREATE TYPE  UomDepthType AS ENUM ('MM', 'CM', 'IN', 'FT', 'OTHER');
CREATE TYPE ValDepthType AS (
  ValDepthBaseType REAL,
  units UomDepthType
);

-- значение коэффициента трения, не уверена что правильно поставила его начальную границу,
-- может легчу напиать просто CHECK (VALUE >0), оно же и так с плавающей запятой...
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValFrictionType
CREATE DOMAIN ValFrictionType AS REAL
  CHECK ( VALUE > '0\.[0-9]{2}');

-- качественная оценка трения на ВВП:
-- GOOD - хорошее
-- MEDIUM_GOOD - среднее ближе к хорошему
-- MEDIUM - среднее
-- MEDIUM_POOR - среднее ближе к плохому
-- POOR - плохое
-- UNRELIABLE - состояние поверхности или доступного прибора измерения трения не позволяют провести надежные измерения трения поверхности
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeFrictionEstimateType
CREATE TYPE CodeFrictionEstimateType AS ENUM ('GOOD', 'MEDIUM_GOOD', 'MEDIUM', 'MEDIUM_POOR', 'POOR', 'UNRELIABLE', 'OTHER');

-- типы оборудования, использованного для определения коэффициента трения на ВПП
-- BRD - Brakemeter-Dynometer
-- GRT - Grip tester
-- MUM - Mu-meter
-- RFT -	Runway friction tester
-- SFH - Surface friction tester (high-pressure tire)
-- SFL	-	Surface friction tester (low-pressure tire)
-- SKH	-	Skiddometer (high-pressure tire)
-- SKL	-	Skiddometer (low-pressure tire)
-- TAP	-	Tapley meter
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeFrictionDeviceType
CREATE TYPE CodeFrictionDeviceType AS ENUM ('BRD', 'GRT', 'MUM', 'RFT', 'SFH', 'SFL', 'SKH', 'SKL', 'TAP', 'OTHER');

-- время с точностью до 1 мин., правда я взяла тип который дает время до 1 секунды
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TimeBaseType
CREATE DOMAIN TimeType AS TIME WITHOUT TIME ZONE;

CREATE DOMAIN ValPercentType AS REAL
CHECK (VALUE >=0 AND VALUE =<100);


-- Table: AirportHeliport
-- все столбцы кроме uuid могут содержать значение NilReason
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliport
CREATE TABLE AirportHeliport
(
  uuid                        id NOT NULL PRIMARY KEY,

-- Что мы задаём в designator:
-- 1)4х буквенник ИКАО, если таковой имеется
-- 2)3х буквенник IATA, 
-- 3)код Государства + порядковый номер (UU0001)
  designator                  CodeAirportHeliportDesignatorType,

-- Первое официальное название аэродрома, назначенное соответствующисм органом
  name                        TextNameType,

--индекс аэропорта ИКАО (ICAO DOC 7910)
  locationIndicatorICAO       CodeICAOType,

-- коды ИАТА
  designatorIATA              CodeIATAType,

-- код, указывающий на тип аэродрома, например: только аэродром, аэродром/ветродром и т.д.
  type                        CodeAirportHeliportType,

-- сертифицирован ли аэропорт по правилам ИКАО:
  certifiedICAO               CodeYesNoType,

-- аэродром или вертодром закрыт для общего пользования, только для владельцев
  privateUse                  CodeYesNoType,

-- тип организации (гражданская/военная), которая контролирует аэропорт
  controlType                 CodeMilitaryOperationsType,

-- высота над уровнем моря высшей точки района посадки (посадочной площадки)
  fieldElevation              ValDistanceVerticalType,

-- расстояние по вертикали от установленной высоты, которое определяет точность истинного значения (?)
  fieldElevationAccuracy      ValDistanceVerticalType,

-- поверхность относимости с указанием для каких высот и/или глубин установлена
  verticalDatum               CodeVerticalDatumType,

-- угловая разница между истинным направление на север и магнитным, измеренными в данной точке и на данное время
  magneticVariation           ValMagneticVariationType,

-- точность магнитного склонения в градусах
  magneticVariationAccuracy   ValAngleType,

-- год, на который измерено значение магнитного склонения
  dateMagneticVariation       DateYearType,

-- величина годового изменения магнитного склонения
  magneticVariationChange     ValMagneticVariationChangeType,

-- среднемесячная величина максимальной дневной температуры самого теплого месяца в году на аэродроме
  referenceTemperature        ValTemperatureType,

-- наличие точки или площади, указывающей на аэродром, где можно совершить контроль системы альтиметра
  altimeterCheckLocation      CodeYesNoType,

-- наличие аварийного блока питания (электроснабжения) у аэродрома/вертодрома
  secondaryPowerSupply        CodeYesNoType,

-- наличие прибора, показывающего направление и скорость ветра
  windDirectionIndicator      CodeYesNoType,

-- наличие прибора, наглядно показывающего современное направление взлёта и посадки
  landingDirectionIndicator   CodeYesNoType,

-- высота перемещений - высота, на которой или ниже которой вертикальное положение воздушного судна контролируется высотами (? - by reference to altitudes)
  transitionAltitude          ValDistanceVerticalType,

-- самый низкий полётный уровень, разрешённый для использования над высотой перемещений (transitionAltitude)
  transitionLevel             ValFLType,

-- значение самой низкой температуры самого холодного месяца в году
  lowestTemperature           ValTemperatureType,

-- показывает, что аэропорт больше не эксплуатируется, но его инфраструктура всё ещё существует и видна с воздуха
  abandoned                   CodeYesNoType,

-- дата, когда был сертифицирован надзирающим департаментом
  certificationDate           DateType,

-- дата, когда сертификат аэропорта заканчивает свое действие
  certificationExpirationDate DateType
);


--    Лётные ассоциации от таблицы AiportHeliport


-- Table:  City
-- Наименование связи между таблицами AirportHeliport и City - "служит" (serves), связь - один ко многим: один аэропорт может обслуживать несколько городов
-- У таблицы AirportHeliport есть свойство - обслуживаемый аэропортом город
-- при удалении табл. AirportHeliport табл. City автоматически удаляется, также с отдельными строками
-- от табл.City идет ссылка к классу Note, насколько я поняла, это просто список всех таблиц
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_City
CREATE TABLE City
(
-- не знаю, что будем брать за первичный ключ, поэтому пока везде так буду писать
  uuid                id PRIMARY KEY,

-- полное название города
  name                TextNameType,

-- внешний ключ (FOREIGN KEY), по которому связаны таблицы AirportHeliport и City
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid)
);


-- Table: ElevatedPoint
-- Наименование связи между таблицами AirportHeliport и ElevatedPoint - "имеет контрольную (?) точку" (hasReferencePoint), связь - один к одному: у каждого аэродрома/вертодрома своя одна контрольная точка
-- У табл. AirportHeliport есть свойство - контрольная точка аэродрома/вертодрома (ARP - airport point)
-- при удалении табл. AirportHeliport табл. ElevatedPoint автоматически удаляется, также с отдельными строками
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedPoint
CREATE TABLE ElevatedPoint
(
  uuid id PRIMARY KEY ,
-- внешний ключ (FOREIGN KEY), по которому связаны таблицы AirportHeliport и ElevatedPoint
  uuidAirportHeliport    id REFERENCES AirportHeliport (uuid),

-- расстояние по вертикали от уровня моря до измеряемой точки
  elevation          ValDistanceVerticalType,

-- расстояние до геоида сверху (положительное) или снизу (отрицательное) от математического референц-эллипсоида в данной точке
  geoidUndulation    ValDistanceSignedType,

-- набор опорных точек или математическая модель поверхности Земли (датум)
  verticalDatum      CodeVerticalDatumType,

-- разница между записанной высотой точки и ее реальным значением, отнесенным к тому же вертикальному датуму, выражается как линейное отклонение с вероятностью 95%
  verticalAccuracy   ValDistanceType,

-- разница между записанными горизонтальными координатами объекта и его реальным положением, отнесенным к тому же геодезическому датуму, выражается как круговое отклонение с вероятностью 95%
-- этот атрибут наследуется из табл.Point
  horizontalAccuracy ValDistanceType
);


-- Table: ElevatedSurface
-- Наименование связи между таблицами AirportHeliport и ElevatedSurface - "границы, предназначенные для авиации" (hasBoundaryForAviationPurposes), связь - один к одному
-- У табл. AirportHeliport есть свойство - авиационные границы (aviationBoundary)
-- ElevatedSurface - это поверхность со свойствами, которые описывают вертикальное положение (высота, датум, точность)
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedSurface
CREATE TABLE ElevatedSurface
(
  uuid id PRIMARY KEY ,

  uuidAirportHeliport id REFERENCES AirportHeliport (uuid) ,

  elevation ValDistanceVerticalType,

  geoidUndulation ValDistanceSignedType,

  verticalDatum CodeVerticalDatumType,

  verticalAccuracy ValDistanceType,

  horizontalAccuracy ValDistanceType
);



-- Table: AirportHotSpot
-- Наименование связи между таблицами AirportHeliport и AirportHotSpot - "расположена на" (isLocatedAt), связь - один ко многим: один аэропорт - много горячих точек может быть, но одна горячая точка может принадлежать только одному аэропорту.
-- Наименование связи между таблицами ElevatedSurface и AirportHotSpot - "имеет форму" (hasShape), , связь - один к одному:
-- AirportHotSpot - это место на взлетной части аэродрома, где имеется потенциальный риск или когда-либо в историческое время случалось столкновение или нападение на ВПП (?), и где требуется повышенное внимание пилотов/водителей.
-- Свойство таблицы AirportHotSpot - занимаемая территория (area) и за этим свойством AirportHotSpot ссылается на табл.ElevatedSurface
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHotSpot
CREATE TABLE AirportHotSpot
(
  uuid id PRIMARY KEY ,

-- ссылка на то, к какому Elevated Surface относится
  uuidElevatedSurface id REFERENCES ElevatedSurface (uuid) ,

-- на какой аэропорт влияет
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),

-- закодированный идентификатор, которым горячая точка (hot spot) помечена на картах аэропорта
  designator TextDesignatorType,

-- действие, которое должен предпринять экипаж и/или водитель транспортного средства при приближении к горячей точке
  instruction TextInstructionType
);



-- Table: AltimeterSourceStatus
-- Наименование связи между таблицами  AltimeterSource и AltimeterSourceStatus - "доступен на" (isAvailableOn), связь - один ко многим: у одного прибора может быть один статус, но один и тот же статус может быть у многих приборов
-- AltimeterSourceStatus - информация о рабочем статусе прибора альтиметрии (AltimeterSource)
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AltimeterSourceStatus
CREATE TABLE AltimeterSourceStatus
(
-- Это будет таблица источников альтиметрии
-- порядковый номер прибора альтиметрии:
  uuid                id PRIMARY KEY,

-- рабочий статус
  operationalStatus   CodeStatusOperationsType
);


-- Table: AltimeterSource
-- Наименование связи между таблицами AirportHeliport и AltimeterSource - "использует" (utilizes), связь - многие ко многим: один аэродром может использовать несколько источников и один источник может использоваться несколькими аэродромами
-- У табл. AirportHeliport есть свойство - источник альтиметрии (AltimeterSource)
-- AltimeterSource - это прибор, который измеряет и показывает высоту, на которой расположен объект (например, самолет)
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AltimeterSource
CREATE TABLE AltimeterSource
(
-- порядковый номер прибора альтиметрии
  uuidAltimeterSource  id REFERENCES AltimeterSourceStatus (uuid),

-- порядковый номер аэродрома/вертодрома
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),

-- далеко или близко расположен альтиметр
  isRemote            CodeYesNoType,

-- первичный или вторичный альтиметр
  isPrimary           CodeYesNoType,

-- связь теперь должна быть многие ко многим - у любой AltimeterSource могут быть любые AirportHeliport, комбинация всегда будет уникальна
  PRIMARY KEY ( uuidAltimeterSource, uuidAirportHeliport)
);





-- Table: OrganisationAuthority
-- Наименование связи между таблицами AirportHeliport и OrganisationAuthority - "под ответственностью" (isUnderResponsibilityOf), связь - многие ко многим: одна организация может обслуживать несколько аэропортов, но у одного аэропорта может быть только одна ответственная организация (кажется так)
-- ??? - не уверена что здесь связь многие ко многим, разве за один арп м.б.ответственны неск организаций?
--  OrganisationAuthority - это организация, ответственная за управление аэропортом. Концепция "управления аэропортом" не обязательно действует по всему миру, в таком случае аэродром/вертодром относят к ответственной за его операции области (штату)
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_OrganisationAuthority
CREATE TABLE OrganisationAuthority
(
  uuid                id PRIMARY KEY,

  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),

-- полное официальное название штата, области, организации, департамента, авиационного агентства (aircraft operating agency)
  name                TextNameType,

-- закодированный идентификатор организации, департамента, агентства или объединения
-- например: СА = Canada, FAA = Federal Aviation Administration, UK = United Kingdom, ICAO = International Civil Aviation Organization
  designator          CodeOrganisationDesignatorType,

-- код, указывающий на происхождение ответственной организации в соответствии с его статусом или бизнесс-ролью в ATM (?).
-- Например: штат, группа штатов, организация в штате, авиационное агентство и т.д.
  type                CodeOrganisationType,

-- информация о том, какого типа операции разрешены
  military            CodeMilitaryOperationsType
);


-- Table: ContactInformation
-- Связана с двумя таблицами - AirportHeliport и OrganisationAuthority, в обоих случаях наименование связи - "контактная информация" (isContactedAt), связь - один ко многим: один аэропорт/одна организация - много контактов
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ContactInformation
CREATE TABLE ContactInformation
(
  uuid                id PRIMARY KEY,

  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),

  uuidAirportHeliportid id REFERENCES OrganisationAuthority (uuid),

-- официальное имя контакте
  name TextNameType,

-- официальное название контаки
  title TextNameType
);



-- Table: AirportHeliportContamination
-- Связана с таблицей AirportHeliport, наименование связи - "загрязняется" (isContaminated), тип связи - один ко многим
-- Свойство таблицы AirportHeliport - загрязняющее вещество
-- AirportHeliportContamination - наличие или перемещение опасной обстановки (из-за снега, льда, грязи, воды и т.д.) на терриотрии аэродрома/вертодрома
--  Вся таблица наследуется от таблицы SurfaceContamination
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliportContamination
CREATE TABLE AirportHeliportContamination
(
  uuid id PRIMARY KEY,

  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),

-- дата и время произведения измерений (UTC)
  observationTime DateTimeType,

  -- глубина загрязнения на поверхности
  depth ValDepthType,

  -- средний коэффициент трения
  frictionCoefficient ValFrictionType,

  -- качественная оценка трения
  frictionEstimation CodeFrictionEstimateType,

  -- тип оборудования, использованного для определения объявленного коэффициента трения
  frictionDevice CodeFrictionDeviceType,

  -- неясное освещение поверхности
  obscuredLights CodeYesNoType,

  -- дата и время (UTC), когда ожидается
  furtherClearanceTime TimeType,

  -- показывает, что ожидается общая очистка территории
  furtherTotalClearance CodeYesNoType,

  -- дата и время следующего планируемого отчета по измерениям (UTC)
  nextObservationTime DateTimeType,

  -- процент загрязнённой площади от всей территории
  proportion ValPercentType
);

-- Table: SurveyControlPoint
--  Таблица опорных геодезических пунктов
-- Связана с таблицей  AirportHeliport, наименование связи - "расположена на" (isSituatedAt), связь - один к одному
-- Связана с таблицей  ElevatedPoint, наименование связи - "имеет расположение" (hasPosition), связь - один к одному
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SurveyControlPoint
CREATE TABLE SurveyControlPoint
(
  uuid id PRIMARY KEY,

  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),

  uuidElevatedPoint id REFERENCES ElevatedPoint (uuid),

  -- идентификатор опорной точки
  designator TextNameType
);