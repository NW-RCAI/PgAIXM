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

DROP TABLE IF EXISTS Runway CASCADE;
DROP TABLE IF EXISTS SurfaceCharacteristics CASCADE;
DROP TABLE IF EXISTS RunwayContamination CASCADE;
DROP TABLE IF EXISTS RunwaySectionContamination CASCADE;
DROP TABLE IF EXISTS RunwayDirection CASCADE;
DROP TABLE IF EXISTS GroundLightSystem CASCADE;
DROP TABLE IF EXISTS RunwayDirectionLightSystem CASCADE;
DROP TABLE IF EXISTS PostalAddress CASCADE;
DROP TABLE IF EXISTS OnlineContact CASCADE;
DROP TABLE IF EXISTS TelephoneContact CASCADE;
DROP TABLE IF EXISTS ContactInformationOnlineContact CASCADE;
DROP TABLE IF EXISTS ContactInformationTelephoneContact CASCADE;
DROP TABLE IF EXISTS ContactInformationPostalAddress CASCADE;
DROP TABLE IF EXISTS CartographyLabel CASCADE;
DROP TABLE IF EXISTS AirportHeliportCity CASCADE;
DROP TABLE IF EXISTS Service CASCADE;
DROP TABLE IF EXISTS AirTrafficManagementService CASCADE;
DROP TABLE IF EXISTS  AirportGroundService CASCADE;
DROP TABLE IF EXISTS InformationService CASCADE;
DROP TABLE IF EXISTS SearchRescueService CASCADE;
DROP TABLE IF EXISTS Airspace CASCADE;

DROP DOMAIN IF EXISTS
id, CodeAirportHeliportDesignatorType, TextNameType, CodeICAOType, CodeIATAType, CodeVerticalDatumType,
ValMagneticVariationType, ValAngleType, DateYearType, ValMagneticVariationChangeType, DateType,
CodeOrganisationDesignatorType, TextDesignatorType, TextInstructionType, DateTimeType, ValFrictionType,
TimeType, ValPercentType, latitude, longitude, ValLCNType, ValWeightBaseType, ValBearingType,
textaddresstype, CodeAirspaceDesignatorType CASCADE;

DROP TYPE IF EXISTS
CodeAirportHeliportType, uomtemperaturetype, uomfltype, valflbasetype, uomdistancetype, valdistancebasetype,
uomdepthtype, CodeYesNoType, CodeMilitaryOperationsType, UomDistanceVerticalType, ValDistanceVerticalType,
valdistanceverticalbasetype, valdistanceverticalbasetypenonnumeric, ValTemperatureType, ValFLType,
ValDistanceSignedType, ValDistanceType, CodeStatusOperationsType, CodeOrganisationType, ValDepthType,
CodeFrictionEstimateType, CodeFrictionDeviceType, CodeStatusAirportType, CodeAirportWarningType, ValSlopeType,
UomWeightType, ValWeightType, CodeRunwayType, CodeSurfaceCompositionType, CodeSurfacePreparationType,
CodeSurfaceConditionType, ValPCNType, CodePCNSubgradeType, CodePCNTyrePressureType, codepcnmethodtype,
codeorganisationdesignatortype, textdesignatortype, textinstructiontype, datetimetype, uompressuretype,
valfrictiontype, CodePCNPavementType, coderunwaysectiontype, codesidetype, valpressuretype, CodeLightingJARType,
CodeDirectionTurnType, CodeMarkingConditionType, CodeApproachGuidanceType, CodeColourType, CodeLightIntensityType,
coderunwaymarkingtype, textphonetype, codetelecomnetworktype, CodeFlightDestinationType, CodeFacilityRankingType,
CodeServiceATFMType, CodeServiceInformationType, CodeServiceSARType, CodeAirspaceType  CASCADE;

DROP FUNCTION IF EXISTS trigger_insert();
DROP FUNCTION IF EXISTS trigger_update();

DROP VIEW IF EXISTS airports;

-- В качестве id используем UUID Type
--
-- http://www.postgresql.org/docs/9.3/static/datatype-uuid.html
CREATE DOMAIN id AS UUID;

-- Уникальный индификатор для аэродрома/вертодрома.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirportHeliportDesignatorType
CREATE DOMAIN CodeAirportHeliportDesignatorType AS VARCHAR(10)
CHECK (VALUE ~ '[A-Z]{3,4}|[A-Z]{2}[0-9]{4}');

-- Используется для названий с максимальной длинной в 60 символов.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextNameType
CREATE DOMAIN TextNameType AS VARCHAR(60);

-- A full free text address.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextAddressBaseType
CREATE DOMAIN TextAddressType AS VARCHAR(500);

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

-- A type for (positive) distance.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceBase
CREATE DOMAIN ValDistanceBaseType AS DECIMAL(30, 20)
CHECK (VALUE > 0);

-- A (positive) distance.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceType
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

-- Время с точностью до 1 мин.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TimeBaseType
CREATE DOMAIN TimeType AS CHAR(5)
CHECK (VALUE ~ '(([0-1][0-9]|2[0-3]):[0-5][0-9])|(24:00)');

-- A numerical value between 0.0 and 100, which designates a part or portion considered in its quantitative relation to the whole.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValPercentBaseType
CREATE DOMAIN ValPercentType AS DECIMAL(4, 1)
CHECK (VALUE >= 0 AND VALUE <= 100);


-- A coded list of values that indicates the availability of an airport/heliport facility for specific flight operations.
-- NORMAL - условия имеют формальные ограничения
-- LIMITED - наряду с формальными ограничениями, есть и дополнительные ограничения по использованию
-- CLOSED - не рабочее состояние
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeStatusAirportType
CREATE TYPE CodeStatusAirportType AS ENUM ('NORMAL', 'LIMITED', 'CLOSED', 'OTHER');

-- A code indicating a reason for caution in airport operations. For example, work in progress on a runway.
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

-- Широта
--
CREATE DOMAIN latitude AS DECIMAL(17, 15);

-- Долгота
-- 
CREATE DOMAIN longitude AS DECIMAL(18, 15);

-- Код, который указывает что взлетная полоса предназначена для самолетов или для конечного этапа захода на посадку для вертолетов.
-- RWY - ВПП для самолетов
-- FATO - зона конечного этапа захода на посадку и взлета для вертолетов
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRunwayType
CREATE TYPE CodeRunwayType AS ENUM ('RWY', 'FATO', 'OTHER');

-- Код указывающий на материал ВПП.
-- ASPH - асфальт
-- ASPH_GRASS - асфальт и трава
-- CONC - бетон
-- CONC_ASPH - бетон и асфальт
-- CONC_GRS - бетон и трава
-- GRASS - трава с дерном или голой землей
-- SAND - песок
-- WATER - вода
-- BITUM - битумная смола (Bituminous tar) или асфальт и/или масло или смесь битума с песком, замешанные на месте поверхности (часто относимые к "цементу земли" .Чтобы приготовить битумную смолу или асфальт нужно раскопать поверхность, смешать материал с битумным или масляным связующим веществом и покрыть поверхность получившейся смесью. Битум - это смола, полученная из масла или асфальта, который получен из масла.
-- BRICK - кирпич
-- MACADAM - поверхность из щебня или дёгтебетона, состоящая из связанных водой раздробленных камней
-- STONE - камень
-- CORAL - кораллы
-- CLAY - глина
-- LATERITE -латерит
-- GRAVEL - гравий
-- EARTH - преимущественно земля
-- ICE - лед
-- SNOW - снег
-- MEMBRANE - защищающий слоистый материал, обычно из резины
-- METAL - металл: сталь, аллюминий
-- MATS - настил для посадки, обычно из аллюминия
-- PIERCED_STEEL - перфорированная металлическая плита
-- WOOD - дерево
-- NON_BITUM_MIX - смесь без битума
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeSurfaceCompositionType
CREATE TYPE CodeSurfaceCompositionType AS ENUM ('ASPH', 'ASPH_GRASS', 'CONC', 'CONC_ASPH', 'CONC_GRS', 'GRASS', 'SAND', 'WATER', 'BITUM', 'BRICK', 'MACADAM', 'STONE', 'CORAL', 'CLAY', 'LATERITE', 'GRAVEL', 'EARTH', 'ICE', 'SNOW', 'MEMBRANE', 'METAL', 'MATS', 'PIERCED_STEEL', 'WOOD', 'NON_BITUM_MIX', 'OTHER');

-- Код указывающий на технику подотовки ВПП.
-- NATURAL - естественная поверхность, без обработки
-- ROLLED - обкатанная
-- COMPACTED - сжатая (уплотненная)
-- GRADED - выположенная
-- GROOVED - бороздчатая
-- OILED - масляная
-- PAVED - мощёная
-- PFC - пористое фрикционное покрытие
-- AFSC - спресованное уплотненное фрикционное покрытие
-- RFSC - гуммированное уплотненное фрикционное покрытие
-- NON_GROOVED - не бороздчатый асфальт
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeSurfacePreparationBaseType
CREATE TYPE CodeSurfacePreparationType AS ENUM ('NATURAL', 'ROLLED', 'COMPACTED', 'GRADED', 'GROOVED', 'OILED', 'PAVED', 'PFC', 'AFSC', 'RFSC', 'NON_GROOVED', 'OTHER');

-- Код обозначающий состояние поверхности, такой как ВПП, рулежная дорожка, маркировка порога и т.п.
-- GOOD - хорошее
-- FAIR - чистое (?)
-- POOR - плохое
-- UNSAFE - ненадежное
-- DEFORMED - деформированное
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeSurfaceConditionType
CREATE TYPE CodeSurfaceConditionType AS ENUM ('GOOD', 'FAIR', 'POOR', 'UNSAFE', 'DEFORMED', 'OTHER');

-- Классификационное число покрытия - параметр выражающий несущую способность (грузонапряжённость) 
-- покрытия взлётно-посадочной полосы аэродрома для эксплуатации без ограничений, используемый 
-- совместно с классификационным числом воздушного судна.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValPCNType
CREATE DOMAIN ValPCNType AS DECIMAL(4, 1);

-- Код, обозначающий упругие свойства покрытия (жесткое или гибкое), используемого для определения ACN.
-- RIGID - жесткое покрытие
-- FLEXIBLE - гибкое покрытие
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodePCNPavementType
CREATE TYPE CodePCNPavementType AS ENUM ('RIGID', 'FLEXIBLE', 'OTHER');

-- Код, указывающий на класс прочности покрытия, связанный с PCN числа.
-- A - поверхность высокой прочности
-- B - поверхность средней прочности
-- C - поверхность низкой прочности
-- D - поверхность  низкой прочности
--
--https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodePCNSubgradeType
CREATE TYPE CodePCNSubgradeType AS ENUM ('A', 'B', 'C', 'D', 'OTHER');


-- Код, указывающий максимально допустимое давление в шинах, относящуюся. Используется в PCN.
-- W - высокий: нет ограничений давления (pressure)
-- X - средний: давление до 1.5 МПа (217 psi)
-- Y - низкий: давление до 1.0 МПа (145 psi)
-- Z - очень низкий: давление до 0.5 МПа (73 psi)
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodePCNTyrePressureType
CREATE TYPE CodePCNTyrePressureType AS ENUM ('W', 'X', 'Y', 'Z', 'OTHER');

-- Код, указывающий на метод, используемый при оценке PCN.
-- TECH - техническая оценка
-- ACFT - основанная на опыте воздушного судна
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodePCNMethodBaseType
CREATE TYPE CodePCNMethodType AS ENUM ('TECH', 'ACFT', 'OTHER');

-- The value of a load classification number (LCN) for a surface.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValLCNBaseType
CREATE DOMAIN ValLCNType AS DECIMAL;

-- Единицы измерения веса.
-- T - тонны
-- LB - фунты
-- TON - не метрические американские тонны (2000 ob или 907.18474 кг)
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomWeightType
CREATE TYPE UomWeightType AS ENUM ('KG', 'T', 'LB', 'TON', 'OTHER');

-- Значение веса.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomWeightType
CREATE DOMAIN ValWeightBaseType AS DECIMAL
CHECK (VALUE > 0);
CREATE TYPE ValWeightType AS (
  value ValWeightBaseType,
  unit  UomWeightType
);

-- Единицы измерения давления.
-- PSI - Фунт на квадратный дюйм
-- BAR - 100000 Па
-- TORR - Миллиметр ртутного столба
-- ATM - Физическая атмосфера
-- HPA - гектопаскали
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomPressureType
CREATE TYPE UomPressureType AS ENUM ('PA', 'MPA', 'PSI', 'BAR', 'TORR', 'ATM', 'HPA', 'OTHER');

-- Значение давления.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValPressureType
CREATE TYPE ValPressureType AS (
  value DECIMAL,
  unit  UomPressureType
);

-- Код, описывающий положение по отношению к оси ВВП. Например: слева / справа от осевой линии ВПП.
-- LEFT - на левой стороне оси
-- RIGHT - на правой стороне оси
-- BOTH - распределено по двум сторонам оси
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeSideType
CREATE TYPE CodeSideType AS ENUM ('LEFT', 'RIGHT', 'BOTH', 'OTHER');

-- Код, указывающий на позицию элемента на поверхности взлетно-посадочной полосы.
-- TDZ - зона приземления
-- AIM - точка назначения
-- CL - осевая линия
-- EDGE - край
-- THR - начало
-- DESIG - обозначение ВПП
-- AFT_THR - после начала (фиксированное метками расстояние)
-- DTHR - перемещённое начало
-- END - конец ВПП
-- TWY_INT - пересечение рулежных дорожек
-- RPD_TWY_INT - частое (или резкое) пересечение рулежных дорожек
-- 1_THIRD - первая треть ВПП, считая от начала с наименьшим номером определителя (designation number)
-- 2_THIRD - вторая треть ВПП, считая от начала с наименьшим номером определителя
-- 3_THIRD - последняя треть ВПП, считая от начала с наименьшим номером определителя
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRunwaySectionBaseType
CREATE TYPE CodeRunwaySectionType AS ENUM ('TDZ', 'AIM', 'CL', 'EDGE', 'THR', 'DESIG', 'AFT_THR', 'DTHR', 'END', 'TWY_INT', 'RPD_TWY_INT', '1_THIRD', '2_THIRD', '3_THIRD', 'OTHER');

-- Значение индикатора направления (в данной точке), измереннное как угол между данным направлением и направлением на истинный северный или магнитный полюс (может задаваться явно и неянво).
-- Угол измеряется по часовой стрелке от 0 до 360 градусов. Значение может быть радиалом всенаправленного азимутального радиомаяка (РМА, VHF). Например, направление на запад выражается как 270 градусов.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValBearingType
CREATE DOMAIN ValBearingType AS DECIMAL
CHECK ( VALUE >= 0 AND VALUE <= 360);

-- Идентификатор направления поворота
-- LEFT - налево
-- RIGHT - направо
-- EITHER	- любое левое или правое направление
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeDirectionTurnType
CREATE TYPE CodeDirectionTurnType AS ENUM ('LEFT', 'RIGHT', 'EITHER', 'OTHER');

-- Значение наклона или градиента восхождения/спуска, выраженное в процентах
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValSlopeType
CREATE DOMAIN ValSlopeType AS DECIMAL
CHECK ( VALUE >= -100 AND VALUE <= 100);

-- Код маркировки ВПП, связанный с посадочными категориями, такими как точность, не точность и базовые категории.
-- PRECISION - маркировка соответствует заходу на посадку с точностью: используется и поперечная информация (локализатор), и вертикальная (наклон глиссады).
-- Маркировка захода на посадку с точностью включает маркировку для обозначения ВПП (Runway Designation), для геометрической оси, начала, пункта назначения, зоны посадки, боковых полос
-- NONPRECISION - маркировка соответствует заходу на посадку без точности: используется только поперечная информация (боковая)
-- Маркировка захода на посадку без точности включает маркировку для обозначения ВПП (Runway Designation), для геометрической оси, начала и пункта назначения
-- BASIC - базовые или визуальные элементы маркировки ВПП включают маркировки для обозначения ВПП (Runway Designation), для геометрической оси, начала (на ВПП, которые намереваются использовать международные торговые самолеты) и пункта назначения (на ВПП в 4000 футов (1200 метров) или длиннее, используемых реактивными самолетами)
-- NONE - у ВПП нет маркировки
-- RUNWAY_NUMBERS - единственный элемент маркировки ВПП - обозначение ВПП (Runway Designation)
-- NON_STANDARD - такие элементы маркировк, как обозначение ВПП, геометрическая ось, начало и пункт назначения могут быть представлены, но они не являются стандартной маркировкой
-- HELIPORT - специфичная маркировка для вертолетов
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRunwayMarkingType
CREATE TYPE CodeRunwayMarkingType AS ENUM ('PRECISION', 'NONPRECISION', 'BASIC', 'NONE', 'RUNWAY_NUMBERS', 'NON_STANDARD', 'HELIPORT', 'OTHER');

-- Список значений, идентифицирующих состояние нарисованных поверхностных элементов маркировки
-- GOOD - маркировка в хорошем состоянии
-- FAIR - маркировка в порядочном состоянии
-- POOR - маркировка в плохом состоянии
-- EXCELLENT - маркировка в прекрасном состоянии
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeMarkingConditionType
CREATE TYPE CodeMarkingConditionType AS ENUM ('GOOD', 'FAIR', 'POOR', 'EXCELLENT', 'OTHER');

-- Классификация посадочной световой системы, с использованием в качестве критерия "JAR-OPS 1 - Subpart E, Appendix 1 to 1.430"
-- FALS - полныое световое оборудование, включая маркировки ВПП, высокая/средняя интенсивность посадочной световой системы - 720 м и более, огни по краям ВПП, в начале ВПП и в конце ВПП
-- IALS - среднее световое оборудование, включая маркировки ВПП, высокая/средняя интенсивность посадочной световой системы - от 420 до 720 м, огни по краям ВПП, в начале ВПП и в конце ВПП
-- BALS - базовое световое оборудование, включая маркировки ВПП, высокая/средняя интенсивность посадочной световой системы - менее 420 м (или низкая интенсивность посадочной световой системы любой длины), огни по краям ВПП, в начале ВПП и в конце ВПП
-- NALS - световое оборудование отсутствует или не эффективно, включая маркировки ВПП, огни по краям ВПП, в начале ВПП и в конце ВПП или отсутствие светового оборудования вообще
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeLightingJARType
CREATE TYPE CodeLightingJARType AS ENUM ('FALS', 'IALS', 'BALS', 'NALS', 'OTHER');

-- Уровень, для которого навигационные средства предоставляют точное руководство захода на посадку
-- NON_PRECISION - ВПП с заходом на посадку без точности: используется только поперечная информация (боковая)
-- ILS_PRECISION_CAT_I - ВПП с заходом на посадку с точностью: категория I
-- ILS_PRECISION_CAT_II - ВПП с заходом на посадку с точностью: категория II
-- ILS_PRECISION_CAT_IIIA - ВПП с заходом на посадку с точностью: категория III A
-- ILS_PRECISION_CAT_IIIB - ВПП с заходом на посадку с точностью: категория III B
-- ILS_PRECISION_CAT_IIIC - ВПП с заходом на посадку с точностью: категория III C
-- ILS_PRECISION_CAT_IIID - ВПП с заходом на посадку с точностью: категория III D
-- MLS_PRECISION - микроволновая точностная система захода на посадки
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeApproachGuidanceType
CREATE TYPE CodeApproachGuidanceType AS ENUM ('NON_PRECISION', 'ILS_PRECISION_CAT_I', 'ILS_PRECISION_CAT_II', 'ILS_PRECISION_CAT_IIIA', 'ILS_PRECISION_CAT_IIIB', 'ILS_PRECISION_CAT_IIIC', 'ILS_PRECISION_CAT_IIID', 'MLS_PRECISION', 'OTHER');

-- Код, идентифицирующий уровень интенсивности источника света
-- LIL - низкая интенсивность света
-- LIM - средняя интенсивность света
-- LIH - высокая интенсивность света
-- LIL_LIH - низкая интенсивность для ночного использования, высокая интенсивность для дневного использования, определяется фотоэлементом
-- PREDETERMINED - заранее заданный шаг интенсивности, в посадочной системе освещения, которая для радио контроля воздух-земля превосходит по важности систему освещения ВПП, которая установлена, основываясь на условиях видимости.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeLightIntensityType
CREATE TYPE CodeLightIntensityType AS ENUM ('LIL', 'LIM', 'LIH', 'LIL_LIH', 'PREDETERMINED', 'OTHER');

-- Код, обозначающий цвет. Список допустимых значений включает названные цвета, а не цвета, которые описываются только с использованием RGB или CMYK или какой-либо другой системой цветов.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeColourType
CREATE TYPE CodeColourType AS ENUM ('YELLOW', 'RED', 'WHITE', 'BLUE', 'GREEN', 'PURPLE', 'ORANGE', 'AMBER', 'BLACK', 'BROWN', 'GREY', 'LIGHT_GREY', 'MAGENTA', 'PINK', 'VIOLET', 'OTHER');

-- Codelist containing the Telecom Networks that can be used to address an organisation.
-- AFTN - The data interchange in the AFS is performed by the Aeronautical Fixed Telecommunications Network, AFTN. This is a message handling network running according to ICAO Standards documented in Annex 10 to the ICAO Convention
-- AMHS - Aeronautical Message Handling System. A standard for aeronautical ground-ground communications (e.g. for the transmission of NOTAM, Flight Plans or Meteorological Data) based on X.400 profiles. It has been defined by the International Civil Aviation Organization (ICAO)
-- INTERNET - The Internet is a worldwide, publicly accessible series of interconnected computer networks that transmit data by packet switching using the standard Internet Protocol (IP)
-- SITA - SITA network
-- ACARS - Aircraft Communications Addressing and Reporting System. A datalink system that enables ground stations (airports, aircraft maintenance bases, etc.) and commercial aircraft to communicate without voice using a datalink system.
-- ADNS - ARINC Data Network Service (retired Mar 2007)
-- RESURFACING - работы по асфальтированию
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeTelecomNetworkType
CREATE TYPE CodeTelecomNetworkType AS ENUM ('AFTN', 'AMHS', 'INTERNET', 'SITA', 'ACARS', 'ADNS', 'OTHER');

-- A phone or facsimile number.
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextPhoneBaseType
CREATE DOMAIN TextPhoneType AS VARCHAR
CHECK (VALUE ~ '(\+)?[0-9\s\-\(\)]+');

-- Список значений, идентифицирующих цель полета в зависимости от расположения, таких как прибытие, вылет, перелет
-- ARR - прибытие
-- DEP - вылет
-- OVERFLY - перелет
-- ALL - все типы
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeFlightDestinationType
CREATE TYPE CodeFlightDestinationType AS ENUM ('ARR', 'DEP', 'OVERFLY', 'ALL', 'OTHER');

-- Список очередности обслуживания внутри последовательности анологичных видов обслуживания: первичная, вторичная, альтернативная
-- PRIMARY
-- SECONDARY
-- ALTERNATE
-- EMERG - аварийная
-- GUARD - защитная
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeFacilityRankingType
CREATE TYPE CodeFacilityRankingType AS ENUM ('PRIMARY', 'SECONDARY', 'ALTERNATE', 'EMERG', 'GUARD', 'OTHER');

-- Список значений, используемых для определения сервиса по плнированию полетов и регулированию потоков
-- FPL - служба, предоставляющая одобрение и распределение планирования полетов, относящееся к ATC Unites (к объединениям Контроля Воздушного Движения -?)
-- FPLV - служба, предоставляющая утверждение планирования полетов
-- ATFM - служба управления воздушными потоками
-- CLEARANCE - служба, предоставляющая разрешения (вход, посадка, перелет, выход и т.д.) в данной точке
-- SCHED - служба, составляющая расписание и распределение временных интервалов
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeServiceATFMType
CREATE TYPE CodeServiceATFMType AS ENUM ('FPL', 'FPLV', 'ATFM', 'CLEARANCE', 'SCHED', 'OTHER');

-- Список значений, используемых для определения сервиса по предоставлению информации
-- AFIS - служба полетной информации аэродрома, как дано в ICAO Annex 11
-- AIS - служба авиационной информации, как дано в ICAO Annex 15
-- ATIS - служба автоматизированной конечной информации, как дано в ICAO Annex 11
-- BRIEFING - служба предполетная и послеполетной информации
-- FIS - служба, созданная с целью дать совет и информацию, полезную для безопасного и рационального полета
-- OFIS_VHF - VHF operational flight information service (OFIS) broadcasts, как дано в ICAO Annex 11
-- OFIS_HF - HF operational flight information service (OFIS) broadcasts, как дано в ICAO Annex 11
-- NOTAM - обеспечение службой NOTAM, как дано в ICAO Annex 11
-- INFO - предоставление ограниченной специальной информакии о специфичной активности в определенном месте
-- RAF - служба регионального прогноза
-- METAR - регулярный авиационный отчет по погоде
-- SIGMET - информация, издаваемая службой метеоролического наблюдения, касающаяся появления или ожидаемого появлени указанного проходящего погодного явления, котрое может повлиять на безопасность операций воздушного судна
-- TWEB - служба передачи погоды (?)
-- TAF - служба метеорологического прогноза в области терминала
-- VOLMET - служба передачи метеорологической информации для воздушного судна в полете
-- ALTIMETER - служба предоставления информации настроек альтиметра
-- ASOS - автоматизированная служба обследования поверхности
-- AWOS - автоматизированная служба обследования погоды
--
--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeServiceInformationType
CREATE TYPE CodeServiceInformationType AS ENUM ('AFIS','AIS', 'ATIS', 'BRIEFING', 'FIS', 'OFIS_VHF', 'OFIS_HF', 'INFO', 'RAF', 'METAR', 'SIGMET', 'TWEB', 'TAF', 'VOLMET', 'ALTIMETER', 'ASOS', 'AWOS', 'OTHER');

-- Список значений, используемых для определения сервиса по поиску и спасению
-- ALRS - служба предупреждения
-- SAR - служба поиска и спасения
-- RCC - служба по координации спасательных операций
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeServiceSARType
CREATE TYPE CodeServiceSARType AS ENUM ('ALRS', 'SAR', 'RCC', 'OTHER');

--Список значений, идентифицирующих тип воздушного пространства
-- NAS - национальная система воздушного пространства.
--   [Замечание: воздушное пространство, внутри которого государство предоставляет службу управления воздушным движением обычно состоит из:
--   1)территории, подвластнные государству; 2)отдельные участки воздушного пространства над открытым морем или воздушное пространство территорий без государственности, где служба управления воздушным движением предоставляется так, как определено в региональных соглашениях]
-- FIR - район полетной информации. Воздушное пространоство определенных размеров, внутри которого предоставляется служба полётной информации и аварийная служба оповещения.
--   Описание: признается ИКАО. Может использоваться, например, если служба предоставляется более, чем одним отделом (единицей-?).
-- FIR_P - часть РПИ
-- UIR - верхний район полетной информации. Верхнее воздушное пространство определенных размеров, внутри которого предоставляется служба полётной информации и аварийная служба оповещения.
--   Описание: не признается ИКАО. Каждая структура (штат) даёт своё определение верхнему воздушному пространству.
-- UIR_P - часть верхнего РПИ
-- CTA - диспетчерская зона (или зона управления). Управляемое воздушное пространство, распространяющееся вверх от определенной границы над землей.
--   Описание: признается ИКАО.
-- CTA_P - часть диспетчерской зоны
-- OCA - океаническая диспетчерская зона. Диспетчерская зона, распространяющаяся вверх в верхнем воздушном пространстве.
--   Описание: не признается ИКАО.
-- OCA_P - часть океанической диспетчерской зоны
-- UTA - верхняя диспетчерская зона. Диспетчерская зона, распространяющаяся вверх в верхнем воздушном пространстве.
--   Описание: не признается ИКАО.
-- UTA_P - часть верхней диспетчерской зоны
-- TMA - диспетчерская зона у аэропортов. Диспетчерская зона, обычно установленная в месте скопления путей служб управления воздушным движением в окрестностях одного или более значительных аэродромов.
--   Описание: не признается ИКАО. В основном используется в Европе под гибким использованием концепта воздушного пространства (??)
-- TMA_P - часть диспетчерской зоны у аэропортов
-- CTR - диспетчерский район. Управляемое воздушное пространство, распространяющееся вверх от поверхности земли до определенной верхней границы.
--   Описание: признается ИКАО.
-- CTR_P - часть диспетчерского района
-- OTA - океаническая транзитная зона
-- SECTOR - диспетчерский сектор. Разделение обозначенной диспетчерской зоны, внутри которой ответственность отведена одному диспетчеру или небольшой группе диспетчеров.
--   Описание: признается ИКАО.
-- SECTOR_C - временно сгруппированный сектор
-- TSA - временно отделенная зона (FUA). Воздушное пространство с заранее определенными размерами, внутри которого действия требуют бронирования воздушного пространства для исключительного пользования определенными пользователями в течение предопределенного периода времени.
--   Описание: площадь, на которой приняты специальные ограничительные меры, направленные на предотвращение или минимизацию вмешательства (помех) со стороны дружественных сил.
--             площадь под военным контролем, на которой приняты специальные меры безопасности, чтобы предотвратить несанкционированное вторжение.
-- CBA - зарубежная зона (FUA). Воздушное пространство определенных размеров над контактными площадями земли или внутренними водами более чем одного государства.
--   Описание: не признается ИКАО. В основном используется в Европе под гибким использованием концепта воздушного пространства (??)
-- RCA - сокращенная зона координации (FUA). Часть воздушного пространства определенных размеров, внутри которого общее воздушное движение разрешено по принципу "off-route", когда нет необходимости диспетчерам общего воздушного движения начинать коодинацию с диспетчерами OAT.
--   Описание: не признается ИКАО.  В основном используется в Европе под гибким использованием концепта воздушного пространства (??)
-- RAS - регулируемое воздушное пространство (ничем другим не покрытое).
-- AWY - воздушный путь (корридор). Управляемая территория или ее часть, установленная в форме корридора.
-- MTR - буферная зона военного тренировочного пути. Управляемая территория или ее часть, установленная в форме корридора вокруг военного тренировочного пути в целях оградить его от другого движения (воздушного).
-- P - запрещенная зона. Воздушное пространство определенных размеров над землей или внутренними водами государства, внутри которого полеты воздушным суднам запрещены.
--   Описание: признается ИКАО.
-- R - зона ограничения полетов. Воздушное пространство определенных размеров над землей или внутренними водами государства, внутри которого полеты воздушных суден ограничены в соответствии с определенными обозначенными условиями.
--   Описание: признается ИКАО.
-- D - опасная зона. Воздушное пространство определенных размеров, внутри которого в определенное время могут существовать условия, опасные для полета воздушного судна.
--   Описание: признается ИКАО.
-- ADIZ - воздушная защитная идентификационная зона. Специально названное воздушное пространство определенных размеров, внутри которого воздушное судно должно исполнять специальные процедуры идентификации и/или отчетности вдобавок к процедурам, связанным с обеспечением служб управления воздушным движением.
--   Описание: признается ИКАО.
-- NO_FIR - воздушная зона, для которой не определен даже РПИ.
--   [Замечание: есть части земного пространства, где не определен ни РПИ, ни любой другой тип воздушного пространства. Такое воздушное пространство обозначается: NO-FIR]
-- PART - часть воздушного пространства (используется в аггрегациях воздушного пространства)
-- CLASS - воздушное пространство, имеющее определённый класс
-- POLITICAL - политическая/административная зона
-- D_OTHER - действия опасного происхождения (не то же, что опасная зона)
-- TRA - временнно зарезервированная зона.  Воздушное пространство с заранее определенными размерами, внутри которого действия требуют бронирования воздушного пространства в течение предопределенного периода времени.
--   Описание: не признается ИКАО. В основном используется в Европе под гибким использованием концепта воздушного пространства (??)
-- A - зона тревоги. Воздушное пространство, на котором может произоводиться большой объем действий по обучению пилотов или не обычные типы воздушных действий, не опасные для воздушного судна.
--   Описание: не признается ИКАО. В основном используется в США и прилигающих территориях.
-- W - зона предупреждения. Не управляемое воздушное пространство определенных размеров
-- PROTECT - воздушное пространство, защищенное от необычного воздушного движения
-- AMA - зона минимальной высоты
-- ASR - зона установки альтиметра
-- ADV - рекомендованная зона
-- UADV - верхняя рекомендованная зона
-- ATZ - зона движения аэропорта
-- ATZ_P - часть зоны движения аэропорта
-- HTZ	- зона движения вертодрома
-- NAS_P - часть национальной системы воздушного пространства
--
--https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirspaceType
CREATE TYPE CodeAirspaceType AS ENUM ('NAS', 'FIR', 'FIR_P', 'UIR', 'UIR_P', 'CTA', 'CTA_P', 'OCA', 'OCA_P', 'UTA', 'UTA_P', 'TMA', 'TMA_P', 'CTR', 'CTR_P', 'OTA', 'SECTOR', 'SECTOR_C', 'TSA', 'CBA', 'RCA', 'RAS', 'AWY', 'MTR', 'P', 'R', 'D', 'ADIZ', 'NO_FIR', 'PART', 'CLASS', 'POLITICAL', 'D_OTHER', 'TRA', 'A', 'W', 'PROTECT', 'AMA', 'ASR', 'ADV', 'UADV', 'ATZ', 'ATZ_P', 'HTZ', 'NAS_P', 'OTHER');

-- Допустимый тип воздушного пространства
--
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirspaceDesignatorType
CREATE DOMAIN CodeAirspaceDesignatorType AS VARCHAR(10)
CHECK (VALUE ~ '([A-Z]|[0-9]|[, !"&#$%''\(\)\*\+\-\./:;<=>\?@\[\\\]\^_\|\{\}])*');

--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_OrganisationAuthority
CREATE TABLE OrganisationAuthority
(
  uuid       id PRIMARY KEY DEFAULT uuid_generate_v4(),
  name       TextNameType,
  designator CodeOrganisationDesignatorType,
  type       CodeOrganisationType,
  military   CodeMilitaryOperationsType
);

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Point/
CREATE TABLE Point
(
  id                 SERIAL PRIMARY KEY,
  latitude           latitude,
  longtitude         longitude,
  srid               INTEGER REFERENCES spatial_ref_sys (srid),
  horizontalAccuracy ValDistanceType,
  geom               GEOMETRY(POINT, 4326)

);


--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedPoint
CREATE TABLE ElevatedPoint
(
  id               SERIAL PRIMARY KEY REFERENCES Point (id),
  elevation        ValDistanceVerticalType,
  geoidUndulation  ValDistanceSignedType,
  verticalDatum    CodeVerticalDatumType,
  verticalAccuracy ValDistanceType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Surface
CREATE TABLE Surface
(
  id                 SERIAL PRIMARY KEY,
  horizontalAccuracy ValDistanceType,
  geom               GEOMETRY(POLYGON, 4326)
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedSurface
CREATE TABLE ElevatedSurface
(
  id               SERIAL PRIMARY KEY REFERENCES Surface (id),
  elevation        ValDistanceVerticalType,
  geoidUndulation  ValDistanceSignedType,
  verticalDatum    CodeVerticalDatumType,
  verticalAccuracy ValDistanceType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliport
CREATE TABLE AirportHeliport
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4(),
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
  idElevatedPoint             SERIAL REFERENCES ElevatedPoint (id)
-- idElevatedSurface         SERIAL REFERENCES ElevatedSurface (uuid)
);
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ContactInformation
CREATE TABLE ContactInformation
(
  id                        SERIAL PRIMARY KEY,
  uuidAirportHeliport       id REFERENCES AirportHeliport (uuid),
  uuidOrganisationAuthority id REFERENCES OrganisationAuthority (uuid),
  name                      TextNameType,
  title                     TextNameType
);

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_PostalAddress
CREATE TABLE PostalAddress (
  id                 SERIAL PRIMARY KEY,
  deliveryPoint      TextAddressType,
  city               TextNameType,
  administrativeArea TextNameType,
  postalCode         TextNameType,
  country            TextNameType
);

CREATE TABLE ContactInformationPostalAddress
(
  idContactInformation SERIAL REFERENCES ContactInformation (id),
  idPostalAddress      SERIAL REFERENCES PostalAddress (id)
);

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_OnlineContact

CREATE TABLE OnlineContact (
  id       SERIAL PRIMARY KEY,
  network  CodeTelecomNetworkType,
  linkage  TextAddressType,
  protocol TextNameType,
  eMail    TextAddressType
);

CREATE TABLE ContactInformationOnlineContact
(
  idContactInformation SERIAL REFERENCES ContactInformation (id),
  idOnlineContact      SERIAL REFERENCES OnlineContact (id)
);

CREATE TABLE TelephoneContact (
  id        SERIAL PRIMARY KEY,
  voice     TextPhoneType,
  facsimile TextPhoneType
);

CREATE TABLE ContactInformationTelephoneContact
(
  idContactInformation SERIAL REFERENCES ContactInformation (id),
  idTelephoneContact   SERIAL REFERENCES TelephoneContact (id)
);

--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_City
CREATE TABLE City
(
  id   SERIAL PRIMARY KEY,
  name TextNameType
);

CREATE TABLE AirportHeliportCity
(
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),
  idCity              SERIAL REFERENCES City (id)
);

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SurveyControlPoint
CREATE TABLE SurveyControlPoint
(
  uuid                id PRIMARY KEY DEFAULT uuid_generate_v4(),
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),
  idElevatedPoint     SERIAL REFERENCES Point (id),
  designator          TextNameType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHotSpot
CREATE TABLE AirportHotSpot
(
  uuid                id PRIMARY KEY DEFAULT uuid_generate_v4(),
  idElevatedSurface   SERIAL REFERENCES Surface (id),
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),
  designator          TextDesignatorType,
  instruction         TextInstructionType
);


--  https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AltimeterSource
CREATE TABLE AltimeterSource
(
  uuid      id PRIMARY KEY DEFAULT uuid_generate_v4(),
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
  id                  SERIAL PRIMARY KEY,
  uuidAltimeterSource id REFERENCES AltimeterSource (uuid),
  operationalStatus   CodeStatusOperationsType
);

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SurfaceContamination
CREATE TABLE SurfaceContamination
(
  id                    SERIAL PRIMARY KEY,
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
  id                  SERIAL PRIMARY KEY REFERENCES SurfaceContamination (id),
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid)
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliportAvailability
CREATE TABLE AirportHeliportAvailability
(
  id                  SERIAL PRIMARY KEY,
  uuidAirportHeliport id REFERENCES AirportHeliport (uuid),
  operationalStatus   CodeStatusAirportType,
  warning             CodeAirportWarningType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SurfaceCharacteristics
CREATE TABLE SurfaceCharacteristics
(
  id                  SERIAL PRIMARY KEY,
  composition         CodeSurfaceCompositionType,
  preparation         CodeSurfacePreparationType,
  surfaceCondition    CodeSurfaceConditionType,
  classPCN            ValPCNType,
  pavementTypePCN     CodePCNPavementType,
  pavementSubgradePCN CodePCNSubgradeType,
  maxTyrePressurePCN  CodePCNTyrePressureType,
  evaluationMethodPCN CodePCNMethodType,
  classLCN            ValLCNType,
  weightSIWL          ValWeightType,
  tyrePressureSIWL    ValPressureType,
  weightAUW           ValWeightType
);

--https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Runway
CREATE TABLE Runway
(
  uuid                     id PRIMARY KEY DEFAULT uuid_generate_v4(),
  uuidAirportHeliport      id REFERENCES AirportHeliport (uuid),
  idSurfaceCharacteristics SERIAL REFERENCES SurfaceCharacteristics (id),
  designator               TextDesignatorType,
  type                     CodeRunwayType,
  nominalLength            ValDistanceType,
  lengthAccuracy           ValDistanceType,
  nominalWidth             ValDistanceType,
  widthAccuracy            ValDistanceType,
  widthShoulder            ValDistanceType,
  lengthStrip              ValDistanceType,
  widthStrip               ValDistanceType,
  lengthOffset             ValDistanceSignedType,
  widthOffset              ValDistanceSignedType,
  abandoned                CodeYesNoType
);


--https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RunwayContamination
CREATE TABLE RunwayContamination
(
  id                     SERIAL PRIMARY KEY REFERENCES SurfaceContamination (id),
  uuidRunway             id REFERENCES Runway (uuid),
  clearedLength          ValDistanceType,
  clearedWidth           ValDistanceType,
  clearedSide            CodeSideType,
  furtherClearanceLength ValDistanceType,
  furtherClearanceWidth  ValDistanceType,
  obscuredLightsSide     CodeSideType,
  clearedLengthBegin     ValDistanceType,
  taxiwayAvailable       CodeYesNoType,
  apronAvailable         CodeYesNoType
);

--https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RunwaySectionContamination
CREATE TABLE RunwaySectionContamination
(
  id         SERIAL PRIMARY KEY REFERENCES SurfaceContamination (id),
  uuidRunway id REFERENCES Runway (uuid),
  section    CodeRunwaySectionType
);

--https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RunwayDirection
CREATE TABLE RunwayDirection
(
  uuid                      id PRIMARY KEY DEFAULT uuid_generate_v4(),
  uuidRunway                id REFERENCES Runway (uuid),
  designator                TextDesignatorType,
  trueBearing               ValBearingType,
  trueBearingAccuracy       ValAngleType,
  magneticBearing           ValBearingType,
  patternVFR                CodeDirectionTurnType,
  slopeTDZ                  ValSlopeType,
  elevationTDZ              ValDistanceVerticalType,
  elevationTDZAccuracy      ValDistanceType,
  approachMarkingType       CodeRunwayMarkingType,
  approachMarkingCondition  CodeMarkingConditionType,
  classLightingJAR          CodeLightingJARType,
  precisionApproachGuidance CodeApproachGuidanceType
);

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_GroundLightSystemhttps://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_GroundLightSystem
CREATE TABLE GroundLightSystem
(
  uuid              id PRIMARY KEY DEFAULT uuid_generate_v4(),
  emergencyLighting CodeYesNoType,
  intensityLevel    CodeLightIntensityType,
  colour            CodeColourType
);

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RunwayDirectionLightSystem
CREATE TABLE RunwayDirectionLightSystem
(
  uuid                id PRIMARY KEY REFERENCES GroundLightSystem (uuid),
  uuidRunwayDirection id REFERENCES RunwayDirection (uuid),
  position            CodeRunwaySectionType
);

CREATE TABLE CartographyLabel
(
  id                  SERIAL PRIMARY KEY,
  xlbl                latitude,
  ylbl                longitude,
  rotation            ValAngleType,
  srid                INTEGER REFERENCES spatial_ref_sys (srid),
  uuidairportheliport UUID REFERENCES AirportHeliport,
  geom                GEOMETRY(POINT, 4326)
);

CREATE OR REPLACE FUNCTION trigger_update()
  RETURNS TRIGGER AS $update_lbl$
BEGIN
      INSERT INTO CartographyLabel (xlbl, ylbl, srid, uuidairportheliport, geom) VALUES
        ((SELECT latitude FROM Point, ElevatedPoint WHERE Point.id=ElevatedPoint.id AND ElevatedPoint.id=NEW.idElevatedPoint),
        (SELECT longtitude FROM Point, ElevatedPoint WHERE Point.id=ElevatedPoint.id AND ElevatedPoint.id=NEW.idElevatedPoint),
        (SELECT srid FROM Point, ElevatedPoint WHERE Point.id=ElevatedPoint.id AND ElevatedPoint.id=NEW.idElevatedPoint),
        NEW.uuid,
        (SELECT geom FROM Point, ElevatedPoint WHERE Point.id=ElevatedPoint.id AND ElevatedPoint.id=NEW.idElevatedPoint));
  RETURN NEW;
END;
$update_lbl$ LANGUAGE plpgsql;

CREATE TRIGGER CartographyLabel
AFTER INSERT ON AirportHeliport FOR EACH ROW EXECUTE PROCEDURE trigger_update();

-- Отслеживание изменений координат и SRID
--
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


CREATE VIEW airports AS
  SELECT
    Point.id AS id,
    AirportHeliport.name,
    AirportHeliport.designator,
    AirportHeliport.type,
    AirportHeliport.controlType,
    airportheliport.abandoned,
--elevatedpoint.elevation,
    runwayMax.lenght,
    Point.latitude,
    Point.longtitude,

-- runway.designator AS runway_design,
    runwaydirection.truebearing,
    surfacecharacteristics.composition,
--runwaydirectionlightsystem.lightsystem,
--runwaydirectionlightsystem.position
    Point.geom
  FROM airportheliport
    LEFT JOIN (
        elevatedpoint
        JOIN point ON (elevatedpoint.id = point.id)
      ) ON (elevatedpoint.id = airportheliport.idelevatedpoint)
    LEFT JOIN (
                SELECT
                  max((nominallength).value) AS lenght,
                  uuidAirportHeliport
                FROM runway
                GROUP BY uuidAirportHeliport
              ) runwayMax
      ON airportheliport.uuid = runwayMax.uuidAirportHeliport
    LEFT JOIN (
        runway
        JOIN (runwaydirection
        JOIN (SELECT
                array_agg(runwaydirectionlightsystem.position) AS lightsystem,
                runwaydirectionlightsystem.uuidrunwaydirection
              FROM runwaydirectionlightsystem
              GROUP BY runwaydirectionlightsystem.uuidrunwaydirection) runwaydirectionlightsystem
          ON runwaydirectionlightsystem.uuidrunwaydirection = runwaydirection.uuid)
          ON (runway.uuid = runwaydirection.uuidrunway)
        JOIN surfacecharacteristics ON runway.idsurfacecharacteristics = surfacecharacteristics.id
      )
      ON airportheliport.uuid = runway.uuidairportheliport
  WHERE (runway.nominallength).value =
        (SELECT max((nominallength).value)
         FROM runway
         GROUP BY uuidAirportHeliport
         HAVING uuidairportheliport = airportheliport.uuid) OR (runway.nominallength).value IS NULL;

CREATE VIEW AIRP_TABLE AS
  SELECT
    uuid,
    name,
    designator,
    (SELECT array_agg(runwaydirectionlightsystem.position) AS lightsystem
     FROM runwaydirectionlightsystem, runwaydirection, runway
     WHERE runwaydirectionlightsystem.uuidrunwaydirection = runwaydirection.uuid AND
           runway.uuid = runwaydirection.uuidrunway AND runway.uuidairportheliport = airportheliport.uuid),
    (SELECT count(surfacecharacteristics.composition) AS cover
     FROM surfacecharacteristics, runway
     WHERE
       runway.idsurfacecharacteristics = surfacecharacteristics.id AND runway.uuidairportheliport = airportheliport.uuid
       AND surfacecharacteristics.composition IN
           ('ASPH', 'ASPH_GRASS', 'CONC', 'CONC_ASPH', 'CONC_GRS', 'BITUM', 'BRICK', 'MEMBRANE', 'METAL', 'MATS', 'PIERCED_STEEL', 'NON_BITUM_MIX')),
    (SELECT point.latitude
     FROM point, elevatedpoint
     WHERE point.id = elevatedpoint.id AND elevatedpoint.id = airportheliport.idelevatedpoint),
    (SELECT point.longtitude
     FROM point, elevatedpoint
     WHERE point.id = elevatedpoint.id AND elevatedpoint.id = airportheliport.idelevatedpoint),
    (SELECT POINT.geom
     FROM point, elevatedpoint
     WHERE point.id = elevatedpoint.id AND elevatedpoint.id = airportheliport.idelevatedpoint)
  FROM airportheliport;

CREATE VIEW AIRP_MAP AS
  SELECT
    uuid,
    designator,
    name,
            controltype AS type,
    (SELECT ((elevation).value) AS height
     FROM elevatedpoint
     WHERE airportheliport.idelevatedpoint = elevatedpoint.id),
    (SELECT max((nominallength).value) AS length
     FROM runway
     WHERE runway.uuidairportheliport = airportheliport.uuid),
    (SELECT count(surfacecharacteristics.composition) AS hydroaerodrom
     FROM surfacecharacteristics, runway
     WHERE
       runway.idsurfacecharacteristics = surfacecharacteristics.id AND runway.uuidairportheliport = airportheliport.uuid
       AND surfacecharacteristics.composition IN ('WATER')),
    (SELECT max(truebearing) AS angle
     FROM runwaydirection, runway
     WHERE runwaydirection.uuidrunway = runway.uuid AND runway.uuidairportheliport = airportheliport.uuid),
    (SELECT count(runwaydirectionlightsystem.position) AS lightsystem
     FROM runwaydirectionlightsystem, runwaydirection, runway
     WHERE runwaydirectionlightsystem.uuidrunwaydirection = runwaydirection.uuid AND
           runway.uuid = runwaydirection.uuidrunway AND runway.uuidairportheliport = airportheliport.uuid),
    (SELECT point.geom
     FROM point, elevatedpoint
     WHERE point.id = elevatedpoint.id AND elevatedpoint.id = airportheliport.idelevatedpoint),
    abandoned
  FROM airportheliport;

--CREATE RULE airp_table_insert as on INSERT TO AIRP_MAP
 -- DO INSTEAD INSERT INTO AirportHeliport VALUES (new.uuid, new.designator, new.name, new.controltype)

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Service
CREATE TABLE Service
(
  uuid              id PRIMARY KEY DEFAULT uuid_generate_v4(),
  flightOperations CodeFlightDestinationType,
  rank CodeFacilityRankingType,
  compliantICAO CodeYesNoType,
  name 	TextNameType,
  idElevatedPoint             SERIAL REFERENCES ElevatedPoint (id)
);

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirTrafficManagementService
CREATE TABLE AirTrafficManagementService
(
  uuid              id REFERENCES Service,
  type CodeServiceATFMType
);

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportGroundService
CREATE TABLE AirportGroundService
  (
  uuid              id REFERENCES Service
);

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_InformationService
CREATE TABLE InformationService
(
  uuid              id REFERENCES Service,
  type CodeServiceInformationType,
  voice CodeYesNoType,
  dataLink CodeYesNoType,
  recorded CodeYesNoType
);


-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SearchRescueService
CREATE TABLE SearchRescueService
(
  uuid              id REFERENCES Service,
  type CodeServiceSARType
);

CREATE TABLE Airspace
(
  uuid              id PRIMARY KEY DEFAULT uuid_generate_v4(),
  type CodeAirspaceType,
  designator CodeAirspaceDesignatorType,
  localType TextNameType,
  name TextNameType,
  designatorICAO CodeYesNoType,
  controlType CodeMilitaryOperationsType,
  upperLowerSeparation ValFLType
);
