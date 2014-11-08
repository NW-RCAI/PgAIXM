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

-- A unit of measurement for a vertical distance:
-- FT - feet
-- M - meters
-- FL - flight level in hundreds of feet
-- SM - standard meters (tens of meters)
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomDistanceVerticalType
CREATE TYPE UomDistanceVerticalType AS ENUM ('FT', 'M', 'FL', 'SM', 'OTHER');

-- Значение расстояния по вертикали (например: верхние и нижние границы воздушного пространства).
-- Этот тип данных также допускает некоторые специфические не числовые значения:
-- GND - значение "Поверхность Земли"
-- UNL - значение "неограниченный"
-- FLOOR - значение "основание (дно) воздушного пространства", необходимо отображать использование (?) для воздушного пространства с непостоянной нижней границей
-- CEILING - значение "верх воздушного пространства", необходимо отображать использование (?) для воздушного пространства с непостоянной верхней границей
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceVerticalType
CREATE DOMAIN ValDistanceVerticalBaseType AS VARCHAR(14)
CHECK (VALUE ~ '((\+|\-){0,1}[0-9]{1,8}(\.[0-9]{1,4}){0,1})|UNL|GND|FLOOR|CEILING');
CREATE TYPE ValDistanceVerticalType AS (
  value ValDistanceVerticalBaseType,
  unit  UomDistanceVerticalType
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
CREATE DOMAIN ValMagneticVariationType AS DECIMAL(3, 10)
CHECK (VALUE >= -180 AND VALUE <= 180);

-- Значение угла.
-- предлагаю объединить этот тип с предыдущим и сделать один, так как они одинаковые
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValAngleType
CREATE DOMAIN ValAngleType AS DECIMAL(3, 10)
CHECK (VALUE >= -180 AND VALUE <= 180);

-- Дата, в которой значимым является только год.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateYearType
CREATE DOMAIN DateYearType AS SMALLINT
CHECK (VALUE ~ '[1-9][0-9][0-9][0-9]');

-- Величина годового изменения магнитного склонения, единицы измерения - градус/год.
-- вообще всё описание такое же, как у типа ValAngleType, хоть и ед-цы измерения разные, можно объединить
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValMagneticVariationChangeType
CREATE DOMAIN ValMagneticVariationChangeType AS DECIMAL(3, 10)
CHECK (VALUE >= -180 AND VALUE <= 180);

-- A unit of measurement for temperature.
-- C - degrees Celsius
-- F - degrees Fahrenheit
-- K - degrees Kelvin
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomTemperatureType
CREATE TYPE UomTemperatureType AS ENUM ('C', 'F', 'K', 'OTHER');

-- Значение температуры.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValTemperatureType
CREATE TYPE ValTemperatureType AS (
  value DECIMAL(3, 10),
  unit  UomTemperatureType
);


-- Unit of measurement for flight levels
-- FL - flight level in hundreds of feet
-- SM - standard meters (tens of meters)
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomFLType
CREATE TYPE UomFLType AS ENUM ('FL', 'SM', 'OTHER');

-- A value expressed in flight levels (FL).
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValFLType
CREATE DOMAIN ValFLBaseType AS SMALLINT
CHECK (VALUE < 999);
CREATE TYPE ValFLType AS (
  value ValFLBaseType,
  unit  UomFLType
);

-- Дата по календарю.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateType
CREATE DOMAIN DateType AS DATE;

-- A unit of measurement for a horizontal distance.
-- For example, metres, feet, nautical miles, kilometres, etc...
-- NM - морские мили
-- KM - километры
-- М - метры
-- FT - футы
-- MI - мили
-- CM - сантиметры
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomDistanceType
CREATE TYPE UomDistanceType AS ENUM ('NM', 'KM', 'M', 'FT', 'MI', 'CM', 'OTHER');

-- A signed distance.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceSignedType
CREATE TYPE ValDistanceSignedType AS (
  value DECIMAL(10, 20),
  unit  UomDistanceType
);

-- A (positive) distance.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceType
CREATE DOMAIN ValDistanceBaseType AS DECIMAL(10, 20)
CHECK (VALUE > 0);
CREATE TYPE ValDistanceType AS (
  value ValDistanceBaseType,
  unit  UomDistanceType
);

-- Code indicating operational status:
-- NORMAL - стандартные операции
-- DOWNGRADED - система теоритически может работать на более высоком уровне, но в нынешнее время она ограничена описанным уровнем
-- UNSERVICEABLE - не пригодна для эксплуатации
-- WORK_IN_PROGRESS - работа налаживается (в ремонте) - under construction
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeStatusOperationsType
CREATE TYPE CodeStatusOperationsType AS ENUM ('NORMAL', 'DOWNGRADED', 'UNSERVICEABLE', 'WORK_IN_PROGRESS', 'OTHER');

-- Закодированный идентификатор организации, департамента, агенства или объединения.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeOrganisationDesignatorType
CREATE DOMAIN CodeOrganisationDesignatorType AS VARCHAR(12)
CHECK (VALUE ~ '([A-Z]|[0-9])+([ \+\-/]*([A-Z]|[0-9])+)*');

-- Код, указывающий на тип организации:
-- STATE - область
-- STATE_GROUP - группа областей
-- ORG - организация в области
-- INTL_ORG - международная организация
-- ACFT_OPR - авиационное агентство
-- HANDLING_AGENCY - транспортное агентство (или логистическое)
-- NTL_AUTH - национальный департамент
-- ATS - постащик услуг авиаперевозок
-- COMMERCIAL - другая коммерческая организация
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeOrganisationType
CREATE TYPE CodeOrganisationType AS ENUM ('STATE', 'STATE_GROUP', 'ORG', 'INTL_ORG', 'ACFT_OPR', 'HANDLING_AGENCY', 'NTL_AUTH', 'ATS', 'COMMERCIAL', 'OTHER');

-- Текстовое обозначение.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextDesignatorType
CREATE DOMAIN TextDesignatorType AS VARCHAR(16)
CHECK (VALUE ~ '([A-Z]|[0-9]|[, !"&#$%''\(\)\*\+\-\./:;<=>\?@\[\\\]\^_\|\{\}])*');

-- A textual description of a sequence of elementary steps.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextInstructionType
CREATE DOMAIN TextInstructionType AS VARCHAR(10000);

-- A full date and time value.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateTimeType
CREATE DOMAIN DateTimeType AS TIMESTAMP WITH TIME ZONE;

-- Единицы измерения глубины:
-- MM - миллиметры
-- СМ - сантиметры
-- IN - дюймы
-- FT - футы
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomDepthType
CREATE TYPE UomDepthType AS ENUM ('MM', 'CM', 'IN', 'FT', 'OTHER');

-- The value of a depth.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDepthType
CREATE TYPE ValDepthType AS (
  value DECIMAL(10, 20),
  unit  UomDepthType
);

-- Значение коэффициента трения.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValFrictionType
CREATE DOMAIN ValFrictionType AS DECIMAL(0, 2)
CHECK ( VALUE ~ '0\.[0-9]{2}');

-- Качественная оценка трения на ВВП:
-- GOOD - хорошее
-- MEDIUM_GOOD - среднее ближе к хорошему
-- MEDIUM - среднее
-- MEDIUM_POOR - среднее ближе к плохому
-- POOR - плохое
-- UNRELIABLE - состояние поверхности или доступного прибора измерения трения не позволяют провести надежные измерения трения поверхности
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeFrictionEstimateType
CREATE TYPE CodeFrictionEstimateType AS ENUM ('GOOD', 'MEDIUM_GOOD', 'MEDIUM', 'MEDIUM_POOR', 'POOR', 'UNRELIABLE', 'OTHER');

-- Типы оборудования, использованного для определения коэффициента трения на ВПП:
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

-- время с точностью до 1 мин.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TimeBaseType
CREATE DOMAIN TimeType AS CHAR(5)
CHECK (VALUE ~ '(([0-1][0-9]|2[0-3]):[0-5][0-9])|(24:00)');

-- A numerical value between 0.0 and 100, which designates a part or portion considered in its quantitative relation to the whole.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValPercentBaseType
CREATE DOMAIN ValPercentType AS DECIMAL(3, 4)
CHECK (VALUE >= 0 AND VALUE =< 100);


-- Table: AirportHeliport
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

-- A city or location that may be served by an airport/heliport.
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_City
CREATE TABLE City
(
  uuid                id PRIMARY KEY,

-- полное название города
  name                TextNameType,

-- внешний ключ (FOREIGN KEY), по которому связаны таблицы AirportHeliport и City
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid)
);


-- An AIXM Point derived from GM_Point that includes properties for
-- describing a point with elevation and vertical extent. Used in
-- obstacles, navaids, etc.
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedPoint
CREATE TABLE ElevatedPoint
(
  uuid                id PRIMARY KEY,

-- внешний ключ (FOREIGN KEY), по которому связаны таблицы AirportHeliport и ElevatedPoint
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),

-- расстояние по вертикали от уровня моря до измеряемой точки
  elevation           ValDistanceVerticalType,

-- расстояние до геоида сверху (положительное) или снизу (отрицательное) от математического референц-эллипсоида в данной точке
  geoidUndulation     ValDistanceSignedType,

-- набор опорных точек или математическая модель поверхности Земли (датум)
  verticalDatum       CodeVerticalDatumType,

-- разница между записанной высотой точки и ее реальным значением, отнесенным к тому же вертикальному датуму, выражается как линейное отклонение с вероятностью 95%
  verticalAccuracy    ValDistanceType,

-- разница между записанными горизонтальными координатами объекта и его реальным положением, отнесенным к тому же геодезическому датуму, выражается как круговое отклонение с вероятностью 95%
-- этот атрибут наследуется из табл.Point
  horizontalAccuracy  ValDistanceType
);


--An AIXM elevated surface derived from, which extends Surface with
-- properties that represent the vertical position (elevation, datum, accuracy).
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedSurface
CREATE TABLE ElevatedSurface
(
  uuid                id PRIMARY KEY,

  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),

  elevation           ValDistanceVerticalType,

  geoidUndulation     ValDistanceSignedType,

  verticalDatum       CodeVerticalDatumType,

  verticalAccuracy    ValDistanceType,

  horizontalAccuracy  ValDistanceType
);


-- A location on aerodrome movement area with a history or potential risk of
-- сcollision or runway incursion, and where heightened attention by
-- pilots/drivers is necessary.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHotSpot
CREATE TABLE AirportHotSpot
(
  uuid                id PRIMARY KEY,

-- ссылка на геометрию объекта
  uuidElevatedSurface id REFERENCES ElevatedSurface (uuid),

-- на какой аэропорт влияет
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),

-- закодированный идентификатор, которым горячая точка (hot spot) помечена на картах аэропорта
  designator          TextDesignatorType,

-- действие, которое должен предпринять экипаж и/или водитель транспортного средства при приближении к горячей точке
  instruction         TextInstructionType
);


--Information about the operational status of an Altimeter Source.
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AltimeterSourceStatus
CREATE TABLE AltimeterSourceStatus
(
-- Это будет таблица источников альтиметрии
-- порядковый номер прибора альтиметрии:
  uuid              id PRIMARY KEY,

-- рабочий статус
  operationalStatus CodeStatusOperationsType
);

-- AltimeterSource - это прибор, который измеряет и показывает высоту, на которой расположен объект (например, самолет)
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AltimeterSource
CREATE TABLE AltimeterSource
(
-- порядковый номер прибора альтиметрии
  uuidAltimeterSource id REFERENCES AltimeterSourceStatus (uuid),

-- порядковый номер аэродрома/вертодрома
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),

-- далеко или близко расположен альтиметр
  isRemote            CodeYesNoType,

-- первичный или вторичный альтиметр
  isPrimary           CodeYesNoType,

-- связь теперь должна быть многие ко многим - у любой AltimeterSource могут быть любые AirportHeliport, комбинация всегда будет уникальна
  PRIMARY KEY (uuidAltimeterSource, uuidAirportHeliport)
);


-- A feature used to model various Organisations and Authorities.
-- For example: ATS Organisations, Aircraft Operating Agencies, States,
-- Groups of States, etc.
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


-- Information required to enable contact with the responsible person and/or
-- organisation. This model is derived from ISO19115-2003:Geographic
-- Information- Metadata

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ContactInformation
CREATE TABLE ContactInformation
(
  uuid                  id PRIMARY KEY,

  uuidAirportHeliport   id REFERENCES AirportHeliport (uuid),

  uuidAirportHeliportid id REFERENCES OrganisationAuthority (uuid),

-- официальное имя контакте
  name                  TextNameType,

-- официальное название контаки
  title                 TextNameType
);


-- The presence or removal of hazardous conditions due to snow, ice, slush, water,
-- etc. on the airport surfaces.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliportContamination
CREATE TABLE AirportHeliportContamination
(
  uuid                  id PRIMARY KEY,

  uuidAirportHeliport   id REFERENCES AirportHeliport (uuid),

-- дата и время произведения измерений (UTC)
  observationTime       DateTimeType,

-- глубина загрязнения на поверхности
  depth                 ValDepthType,

-- средний коэффициент трения
  frictionCoefficient   ValFrictionType,

-- качественная оценка трения
  frictionEstimation    CodeFrictionEstimateType,

-- тип оборудования, использованного для определения объявленного коэффициента трения
  frictionDevice        CodeFrictionDeviceType,

-- неясное освещение поверхности
  obscuredLights        CodeYesNoType,

-- дата и время (UTC), когда ожидается
  furtherClearanceTime  TimeType,

-- показывает, что ожидается общая очистка территории
  furtherTotalClearance CodeYesNoType,

-- дата и время следующего планируемого отчета по измерениям (UTC)
  nextObservationTime   DateTimeType,

-- процент загрязнённой площади от всей территории
  proportion            ValPercentType
);

--  Таблица опорных геодезических пунктов
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SurveyControlPoint
CREATE TABLE SurveyControlPoint
(
  uuid                id PRIMARY KEY,

  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),

  uuidElevatedPoint   id REFERENCES ElevatedPoint (uuid),

-- идентификатор опорной точки
  designator          TextNameType
);