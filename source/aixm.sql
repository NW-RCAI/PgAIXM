DROP TABLE IF EXISTS AirportHeliport CASCADE;
DROP TABLE IF EXISTS City CASCADE;
DROP TABLE IF EXISTS Surface CASCADE;
DROP TABLE IF EXISTS Point CASCADE;
DROP TABLE IF EXISTS ElevatedPoint CASCADE;
DROP TABLE IF EXISTS SurveyControlPoint CASCADE;
DROP TABLE IF EXISTS ElevatedSurface CASCADE;
DROP TABLE IF EXISTS AirportHotSpot CASCADE;
DROP TABLE IF EXISTS AltimeterSourceAirportHeliport CASCADE;
DROP TABLE IF EXISTS AltimeterSource CASCADE;
DROP TABLE IF EXISTS AltimeterSourceStatus CASCADE;
DROP TABLE IF EXISTS OrganisationAuthority CASCADE;
DROP TABLE IF EXISTS ContactInformation CASCADE;
DROP TABLE IF EXISTS SurfaceContamination CASCADE;
DROP TABLE IF EXISTS AirportHeliportContamination CASCADE;
DROP TABLE IF EXISTS AirportHeliportAvailability CASCADE;
DROP DOMAIN IF EXISTS id, CodeAirportHeliportDesignatorType, TextNameType, CodeICAOType, CodeIATAType, CodeVerticalDatumType, ValMagneticVariationType, ValAngleType, DateYearType, ValMagneticVariationChangeType, DateType, CodeOrganisationDesignatorType, TextDesignatorType, TextInstructionType, DateTimeType, ValFrictionType, TimeType, ValPercentType, latitude, longitude CASCADE;
DROP TYPE IF EXISTS CodeAirportHeliportType, uomtemperaturetype, uomfltype, valflbasetype, uomdistancetype, valdistancebasetype, uomdepthtype, CodeYesNoType, CodeMilitaryOperationsType, UomDistanceVerticalType, ValDistanceVerticalType, valdistanceverticalbasetype, valdistanceverticalbasetypenonnumeric, ValTemperatureType, ValFLType, ValDistanceSignedType, ValDistanceType, CodeStatusOperationsType, CodeOrganisationType, ValDepthType, CodeFrictionEstimateType, CodeFrictionDeviceType, CodeStatusAirportType, CodeAirportWarningType CASCADE;

-- В качестве id используем UUID Type
--
-- http://www.postgresql.org/docs/9.3/static/datatype-uuid.html
CREATE DOMAIN id AS INTEGER;

-- Уникальный индификатор для аэродрома/вертодрома5
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirportHeliportDesignatorType
CREATE DOMAIN CodeAirportHeliportDesignatorType AS VARCHAR(10)
CHECK (VALUE ~ '[A-Z]{3,4}|[A-Z]{2}[0-9]{4}');

-- Используется для названий с максимальной длинной в 60 символов
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextNameType
CREATE DOMAIN TextNameType AS VARCHAR(60);

-- Четырехбуквенный индекс аэродрома ICAO (http://en.wikipedia.org/wiki/International_Civil_Aviation_Organization_airport_code)
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeIATAType
CREATE DOMAIN CodeICAOType AS CHAR(4)
CHECK (VALUE ~ '[A-Z]{4}');

-- Трехбуквенный индекс аэродрома IATA (http://en.wikipedia.org/wiki/International_Air_Transport_Association_airport_code)
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeIATAType
CREATE DOMAIN CodeIATAType AS CHAR(3)
CHECK (VALUE ~ '[A-Z]{3}');

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
CREATE TYPE CodeYesNoType AS ENUM ('Yes', 'No', 'Other');

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
CREATE DOMAIN ValDistanceVerticalBaseType AS DECIMAL(12, 4);
CREATE TYPE ValDistanceVerticalBaseTypeNonNumeric AS ENUM ('UNL', 'GND', 'FLOOR', 'CEILING');
CREATE TYPE ValDistanceVerticalType AS (
  value      ValDistanceVerticalBaseType,
  nonNumeric ValDistanceVerticalBaseTypeNonNumeric,
  unit       UomDistanceVerticalType
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
CREATE DOMAIN ValMagneticVariationType AS DECIMAL(13, 10)
CHECK (VALUE >= -180 AND VALUE <= 180);

-- Значение угла.
-- предлагаю объединить этот тип с предыдущим и сделать один, так как они одинаковые
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValAngleType
CREATE DOMAIN ValAngleType AS DECIMAL(13, 10)
CHECK (VALUE >= -180 AND VALUE <= 180);

-- Дата, в которой значимым является только год.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateYearType
CREATE DOMAIN DateYearType AS SMALLINT
CHECK (VALUE > 1000 AND VALUE <= 2999);

-- Величина годового изменения магнитного склонения, единицы измерения - градус/год.
-- вообще всё описание такое же, как у типа ValAngleType, хоть и ед-цы измерения разные, можно объединить
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValMagneticVariationChangeType
CREATE DOMAIN ValMagneticVariationChangeType AS DECIMAL(13, 10)
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
  value DECIMAL(13, 10),
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
  value DECIMAL(30, 20),
  unit  UomDistanceType
);

-- A (positive) distance.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceType
CREATE DOMAIN ValDistanceBaseType AS DECIMAL(30, 20)
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
  value DECIMAL(30, 20),
  unit  UomDepthType
);

-- Значение коэффициента трения.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValFrictionType
CREATE DOMAIN ValFrictionType AS DECIMAL(3, 2)
CHECK ( VALUE >= 0 AND VALUE <= 1);

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
CREATE DOMAIN ValPercentType AS DECIMAL(7, 4)
CHECK (VALUE >= 0 AND VALUE <= 100);


-- NORMAL - условия имеют формальные ограничения
-- LIMITED - наряду с формальными ограничениями, есть и дополнительные ограничения по использованию
-- CLOSED - не рабочее состояние
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeStatusAirportType
CREATE TYPE CodeStatusAirportType AS ENUM ('NORMAL', 'LIMITED', 'CLOSED', 'OTHER');

-- WIP - идут работы
-- EQUIP - люди и оборудование
-- BIRD - опасность в виде птиц
-- ANIMAL - опасность в виде животных
-- RUBBER_REMOVAL - уборка резиновых осадков с DGG (или каких-то резиновых отложений)
-- PARKED_ACFT - на площадке расположен припаркованный или вышедший из строя летательный аппарат
-- RESURFACING - работы по асфальтированию
-- PAVING - покрытие ВПП
-- PAINTING - разметка ВПП
-- INSPECTION - присутствие людей или оборудования из-за работ по обследованию наземного оборудования
-- GRASS_CUTTING - присутствие людей или оборудования из-за работ по стрижке газона
-- CALIBRATION - присутствие людей или оборудования из-за работ с наземным оборудованием
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirportWarningType
CREATE TYPE CodeAirportWarningType AS ENUM ('WIP', 'EQUIP', 'BIRD', 'ANIMAL', 'RUBBER_REMOVAL', 'PARKED_ACFT', 'RESURFACING', 'PAVING', 'PAINTING', 'INSPECTION', 'GRASS_CUTTING', 'CALIBRATION');

CREATE DOMAIN latitude AS DECIMAL(17, 15);
CREATE DOMAIN longitude AS DECIMAL(18, 15);

-- RWY - ВПП для самолетов
-- FATO - зона конечного этапа захода на посадку и взлета для вертолетов
CREATE TYPE CodeRunwayType AS ENUM ('RWY', 'FATO', 'OTHER');

--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_OrganisationAuthority
CREATE TABLE OrganisationAuthority
(
  uuid       id PRIMARY KEY,
  name       TextNameType,
  designator CodeOrganisationDesignatorType,
  type       CodeOrganisationType,
  military   CodeMilitaryOperationsType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Point/
CREATE TABLE Point
(
  uuid               id PRIMARY KEY,
  latitude           latitude,
  longtitude         longitude,
  srid               INTEGER REFERENCES spatial_ref_sys (srid),
  horizontalAccuracy ValDistanceType,
  geom               GEOMETRY(POINT, 4326)

);


--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedPoint
CREATE TABLE ElevatedPoint
(
  uuid             id PRIMARY KEY REFERENCES Point (uuid),
  elevation        ValDistanceVerticalType,
  geoidUndulation  ValDistanceSignedType,
  verticalDatum    CodeVerticalDatumType,
  verticalAccuracy ValDistanceType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Surface
CREATE TABLE Surface
(
  uuid               id PRIMARY KEY,
  horizontalAccuracy ValDistanceType,
  geom               GEOMETRY(POLYGON, 4326)
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedSurface
CREATE TABLE ElevatedSurface
(
  uuid             id PRIMARY KEY REFERENCES Surface (uuid),
  elevation        ValDistanceVerticalType,
  geoidUndulation  ValDistanceSignedType,
  verticalDatum    CodeVerticalDatumType,
  verticalAccuracy ValDistanceType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliport
CREATE TABLE AirportHeliport
(
  uuid                        id PRIMARY KEY,
  designator                  CodeAirportHeliportDesignatorType,
  name                        TextNameType,
  locationIndicatorICAO       CodeICAOType,
  designatorIATA              CodeIATAType,
  type                        CodeAirportHeliportType,
  certifiedICAO               CodeYesNoType,
  privateUse                  CodeYesNoType,
  controlType                 CodeMilitaryOperationsType,
  fieldElevation              ValDistanceVerticalType,
  fieldElevationAccuracy      ValDistanceVerticalType,
  verticalDatum               CodeVerticalDatumType,
  magneticVariation           ValMagneticVariationType,
  magneticVariationAccuracy   ValAngleType,
  dateMagneticVariation       DateYearType,
  magneticVariationChange     ValMagneticVariationChangeType,
  referenceTemperature        ValTemperatureType,
  altimeterCheckLocation      CodeYesNoType,
  secondaryPowerSupply        CodeYesNoType,
  windDirectionIndicator      CodeYesNoType,
  landingDirectionIndicator   CodeYesNoType,
  transitionAltitude          ValDistanceVerticalType,
  transitionLevel             ValFLType,
  lowestTemperature           ValTemperatureType,
  abandoned                   CodeYesNoType,
  certificationDate           DateType,
  certificationExpirationDate DateType,
  uuidOrganisationAuthority   id REFERENCES OrganisationAuthority (uuid),
  uuidElevatedPoint           id REFERENCES ElevatedPoint (uuid),
  uuidElevatedSurface         id REFERENCES ElevatedSurface (uuid)
);


--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_City
CREATE TABLE City
(
  uuid                id PRIMARY KEY,
  nameCity                TextNameType,
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid)
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SurveyControlPoint
CREATE TABLE SurveyControlPoint
(
  uuid                id PRIMARY KEY,
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),
  uuidElevatedPoint   id REFERENCES Point (uuid),
  designator          TextNameType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHotSpot
CREATE TABLE AirportHotSpot
(
  uuid                id PRIMARY KEY,
  uuidElevatedSurface id REFERENCES Surface (uuid),
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),
  designator          TextDesignatorType,
  instruction         TextInstructionType
);


--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AltimeterSource
CREATE TABLE AltimeterSource
(
  uuid      id PRIMARY KEY,
  isRemote  CodeYesNoType,
  isPrimary CodeYesNoType
);


CREATE TABLE AltimeterSourceAirportHeliport
(
  uuidAltimeterSource id REFERENCES AltimeterSource (uuid),
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid)
);


--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AltimeterSourceStatus
CREATE TABLE AltimeterSourceStatus
(
  uuid                id PRIMARY KEY,
  uuidAltimeterSource id REFERENCES AltimeterSource (uuid),
  operationalStatus   CodeStatusOperationsType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ContactInformation
CREATE TABLE ContactInformation
(
  uuid                      id PRIMARY KEY,
  uuidAirportHeliport       id REFERENCES AirportHeliport (uuid),
  uuidOrganisationAuthority id REFERENCES OrganisationAuthority (uuid),
  name                      TextNameType,
  title                     TextNameType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SurfaceContamination
CREATE TABLE SurfaceContamination
(
  uuid                  id PRIMARY KEY,
  observationTime       DateTimeType,
  depth                 ValDepthType,
  frictionCoefficient   ValFrictionType,
  frictionEstimation    CodeFrictionEstimateType,
  frictionDevice        CodeFrictionDeviceType,
  obscuredLights        CodeYesNoType,
  furtherClearanceTime  TimeType,
  furtherTotalClearance CodeYesNoType,
  nextObservationTime   DateTimeType,
  proportion            ValPercentType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliportContamination
CREATE TABLE AirportHeliportContamination
(
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid)
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliportAvailability
CREATE TABLE AirportHeliportAvailability
(
  uuid                id PRIMARY KEY,
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),
  operationalStatus   CodeStatusAirportType,
  warning             CodeAirportWarningType
);


--https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Runway
CREATE TABLE Runway
(
  designator TextDesignatorType,
  type CodeRunwayType,
  nominalLength ValDistanceType,
  lengthAccuracy ValDistanceType,
  nominalWidth ValDistanceType,
  widthAccuracy ValDistanceType,
  widthShoulder ValDistanceType,
  lengthStrip ValDistanceType,
  widthStrip ValDistanceType,
  lengthOffset ValDistanceSignedType,
  widthOffset ValDistanceSignedType,
  abandoned CodeYesNoType
);






DROP FUNCTION IF EXISTS trigger_insert();

CREATE FUNCTION trigger_insert()
  RETURNS TRIGGER AS $$
BEGIN
  IF (TG_OP = 'INSERT' OR
      (TG_OP = 'UPDATE' AND (NEW.longtitude <> OLD.longtitude OR NEW.latitude <> OLD.latitude OR NEW.srid <> OLD.srid)))
  THEN
    IF (NEW.srid = 4326)
    THEN
      NEW.geom = st_setsrid(st_makepoint(NEW.longtitude, NEW.latitude), NEW.srid);
    ELSE
      NEW.geom = st_transform(st_setsrid(st_makepoint(NEW.longtitude, NEW.latitude), NEW.srid), 4326);
    END IF;
  END IF;
  RETURN NEW;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER inserting
BEFORE INSERT OR UPDATE ON Point FOR EACH ROW
EXECUTE PROCEDURE trigger_insert();


INSERT INTO Point (uuid, latitude, longtitude, horizontalAccuracy, srid)
VALUES (1, 12, 12, '(0.28,"M")', 4326),
  (2, 50, 6, '(0.25,"M")', 4326),
  (3, 10, 42, '(0.20,"M")', 4326);


UPDATE Point set srid = 4284;
INSERT INTO ElevatedPoint (uuid, elevation, geoidUndulation, verticalDatum, verticalAccuracy)
VALUES (1, '(12.2,"UNL","M")', '(1.3,"M")', 'AHD', '(0.11,"M")'),
  (2, '(14.5,"UNL","M")', '(1.3,"M")', 'AHD', '(0.14,"M")'),
  (3, '(14.7,"UNL","M")', '(1.3,"M")', 'AHD', '(0.08,"M")');


INSERT INTO OrganisationAuthority (uuid, name)
VALUES (1, 'name');

INSERT INTO AirportHeliport (uuid, designator, name, locationIndicatorICAO, designatorIATA, type, certifiedICAO, privateUse, controlType, fieldElevation, fieldElevationAccuracy, verticalDatum, magneticVariation, magneticVariationAccuracy, dateMagneticVariation, magneticVariationChange, referenceTemperature, altimeterCheckLocation, secondaryPowerSupply, windDirectionIndicator, landingDirectionIndicator, transitionAltitude, transitionLevel, lowestTemperature, abandoned, certificationDate, certificationExpirationDate, uuidOrganisationAuthority, uuidElevatedPoint)
VALUES
  (12, 'IKAA', 'IGLOA', 'ICAA', 'IAA', 'AD', 'Yes', 'Yes', 'JOINT', '(12.2,"UNL","M")', '(0.1,"UNL","M")', 'AHD', 20, 2,
   2014, 1.5, (8, 'C'), 'No', 'Yes', 'Other', 'No', (24.8, 'UNL', 'M'), (100, 'SM'), (-10, 'C'), 'Other', '1999-01-03',
   '2015-01-03', 1, 1),
  (13, 'IKAB', 'IGLOB', 'ICAB', 'IAB', 'AD', 'No', 'Yes', 'MIL', '(12.4,"UNL","M")', '(0.12,"UNL","M")', 'AHD', 18, 2,
   2014, 1.5, (22, 'C'), 'Yes', 'Yes', 'No', 'No', (26.8, 'UNL', 'M'), (90, 'SM'), (0, 'C'), 'Yes', '1999-10-03',
   '2012-10-03', 1, 2),
  (15, 'IKAC', 'IGLOC', 'ICAC', 'IAC', 'AD', 'No', 'No', 'JOINT', '(11.1,"UNL","M")', '(0.15,"UNL","M")', 'AHD', 21, 2,
   2014, 1.5, (30, 'C'), 'No', 'No', 'Yes', 'No', (20.2, 'UNL', 'M'), (150, 'SM'), (-30, 'C'), 'No', '2001-01-06',
   '2018-01-06', 1, 3);

DROP VIEW IF EXISTS airports;
CREATE VIEW airports
  AS SELECT ElevatedPoint.uuid, AirportHeliport.name, AirportHeliport.designator, AirportHeliport.type, Point.latitude, Point.longtitude, Point.geom, ElevatedPoint.elevation
     FROM AirportHeliport, Point, ElevatedPoint
  WHERE ElevatedPoint.uuid = Point.uuid
AND AirportHeliport.uuidElevatedPoint = ElevatedPoint.uuid
ORDER BY AirportHeliport.name;



