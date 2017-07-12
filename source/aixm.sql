--
-- CLEANING DATABASE
--
DROP TABLE IF EXISTS AirportHeliport, City, Surface, Point, ElevatedPoint, SurveyControlPoint, ElevatedSurface,
AirportHotSpot, AltimeterSource_AirportHeliport, AltimeterSource, AltimeterSourceStatus, OrganisationAuthority,
ContactInformation, SurfaceContamination, AirportHeliportContamination, AirportHeliportAvailability, Runway,
SurfaceCharacteristics, RunwayContamination, RunwaySectionContamination, RunwayDirection, GroundLightSystem,
RunwayDirectionLightSystem, PostalAddress, OnlineContact, TelephoneContact, ContactInformationOnlineContact,
ContactInformationTelephoneContact, ContactInformationPostalAddress, CartographyLabel, CartographyLabel_CTA_CTR_TMA_UAA, AirportHeliportCity, Service,
AirTrafficManagementService, AirportGroundService, InformationService, SearchRescueService, Airspace, AirspaceLayerClass,
AirspaceLayer, EnRouteSegmentPoint, RoutePortion, SegmentPoint, RouteSegment, Route, AirspaceVolume, AirspaceActivation,
AirspaceActivation_OrganisationAuthority, SignificantPointInAirspace, SignificantPoint, Curve, AirportHeliport_InformationService,
AirportHeliport_AirportGroundService, Unit, UnitDependency, CallsignDetail, radiocommunicationchannel, service_radiocommunicationchannel,
trafficseparationservice, airspace_airtrafficmanagementservice, airtrafficcontrolservice, AuthorityForAirspace, Navaid,
GroundLightingAvailability, groundtrafficcontrolservice, AircraftGroundService, OrganisationAuthority_PropertiesWithSchedule,
PropertiesWithSchedule, Timesheet, airportheliport_navaid, DesignatedPoint, AirportHeliport_InformationService,
AirportHeliport_AirportGroundService, NavaidEquipment, Azimuth, DME, DirectionFinder, Localizer, Elevation, Glidepath, MarkerBeacon, NDB,
TACAN, SDF, VOR, Navaid_NavaidEquipment, ObstacleArea, VerticalStructure, ObstacleArea_VerticalStructure, GroundLightSystem_VerticalStructure,
NavaidEquipment_VerticalStructure, OrganisationAuthority_VerticalStructure, Unit_VerticalStructure, Service_VerticalStructure,
VerticalStructurePart, VerticalStructurePartGeometry, CartographyLabel_OBS, cartographylabel_fir, elevatedcurve,
groundlightsystemtimeslice, servicetimeslice, navaidequipmenttimeslice, timesliceinterpretationtype, TimeSlice,
AirportHeliportTimeSlice, SurveyControlPointTimeSlice, AirportHotSpotTimeSlice, AltimeterSourceTimeSlice, RunwayTimeSlice,
RunwayDirectionTimeSlice, UnitTimeSlice, RadioCommunicationChannelTimeSlice, DesignatedPointTimeSlice, RouteTimeSlice,
AirspaceTimeSlice, AuthorityForAirspaceTimeSlice, NavaidTimeSlice, RouteSegmentTimeSlice, SignificantPointInAirspaceTimeSlice,
ObstacleAreaTimeSlice, VerticalStructureTimeSlice, InformationServiceTimeSlice, AirTrafficManagementServiceTimeSlice,
AirportGroundServiceTimeSlice, SearchRescueServiceTimeSlice, TrafficSeparationServiceTimeSlice, OrganisationAuthorityTimeSlice,
RunwayDirectionLightSystemTimeSlice, AirTrafficControlServiceTimeSlice, GroundTrafficControlServiceTimeSlice,
cartographylabelarp, CartographyLabelAirspaceArea, CartographyLabelFIR, CartographyLabelDraPraRsa, CartographyLabelDraPraRsaTimeSlice,
CartographyLabelMVL, CartographyLabelTPMTPT, cartographylabelnav CASCADE;

DROP DOMAIN IF EXISTS id, CodeAirportHeliportDesignatorType, TextNameType, CodeICAOType, CodeIATAType, CodeVerticalDatumType,
ValMagneticVariationType, ValAngleType, DateYearType, ValMagneticVariationChangeType, DateType, CodeOrganisationDesignatorType,
TextDesignatorType, TextInstructionType, DateTimeType, ValFrictionType, TimeType, ValPercentType, latitude, longitude,
ValLCNType, ValWeightBaseType, ValBearingType, textaddresstype, CodeAirspaceDesignatorType, NoNumberType, codenavaiddesignatortype,
CodeMilitaryStatusType, CodeMilitaryOperationsType, CodeRunwaySectionType, CodeSideType, CodeDirectionTurnType,
CodeRunwayMarkingType, CodeMarkingConditionType, CodeLightingJARType, CodeApproachGuidanceType, CodeLightIntensityType,
CodeColourType, CodeTelecomNetworkType, CodeFlightDestinationType, CodeFacilityRankingType, CodeServiceATFMType, CodeServiceInformationType,
CodeServiceSARType, CodeAirspaceType, CodeAirspaceClassificationType, CodeVerticalReferenceType, CodeAltitudeUseType,
CodeRouteDesignatorPrefixType, CodeRouteDesignatorLetterType, CodeUpperAlphaType, CodeRouteType, CodeFlightRuleType,
CodeRouteOriginType, CodeMilitaryStatusType, uomfrequencytype, CodeServiceGroundControlType, codeserviceatctype, valdistanceverticalbasetypenonnumeric,
CodeAircraftGroundServiceType, CodeUnitType, CodeTimeReferenceType, CodeDayType, CodeTimeEventType, UomDurationType,
CodeTimeEventCombinationType, datemonthdaytype, CodeYesNoType, UomDistanceVerticalType, UomTemperatureType, CodeAirportHeliportType,
UomDistanceType, UomFLType, CodeStatusOperationsType, CodeOrganisationType, UomDepthType, CodeFrictionEstimateType, CodeFrictionDeviceType,
CodeStatusAirportType, CodeAirportWarningType, CodeRunwayType, CodeSurfaceCompositionType, CodeSurfacePreparationType, CodeSurfaceConditionType,
CodePCNPavementType, CodePCNSubgradeType, CodePCNTyrePressureType, CodePCNMethodType, UomWeightType, UomPressureType, CodeMilitaryTrainingType,
CodeAirspaceActivityType, CodeStatusAirspaceType, CodeAirspacePointRoleType, CodeAirspacePointPositionType, CodeLevelType, CodeRouteSegmentPathType,
CodeRouteNavigationType, CodeRouteDesignatorSuffixType, CodeATCReportingType, CodeFreeFlightType, CodeRVSMPointRoleType, CodeMilitaryRoutePointType,
CodeCommunicationModeType, CodeRadioEmissionType, CodeCommunicationDirectionType, CodeUnitDependencyType, CodeAuthorityType, CodeNavaidServiceType,
CodeNavaidPurposeType, CodeSignalPerformanceILSType, CodeCourseQualityILSType, CodeIntegrityLevelILSType, CodeDesignatedPointDesignatorType,
CodeDesignatedPointType, CodeMLSAzimuthType, CodeMLSChannelBaseType, CodeDMEType, CodeDMEChannelType, CodeILSBackCourseType,
CodeMarkerBeaconSignalType, CodeAuralMorseType, CodeNDBUsageType, CodeEmissionBandType, CodeTACANChannelType,
CodeVORType, CodeNorthReferenceType, codemlschanneltype, CodeObstacleAreaType, CodeObstacleAssessmentSurfaceType,
CodeVerticalStructureType, CodeStatusConstructionType, CodeVerticalStructureMarkingType, CodeVerticalStructureMaterialType,
TimesliceInterpretationType CASCADE;

DROP TYPE IF EXISTS CodeAirportHeliportType, uomtemperaturetype, valflbasetype, valdistancebasetype,
ValDistanceVerticalType, valdistanceverticalbasetype, ValTemperatureType, ValFLType, ValDistanceSignedType, ValDistanceType, ValDepthType,
ValSlopeType, ValWeightType, ValPCNType, textdesignatortype, valpressuretype, textphonetype, codernptype, codelanguagetype, valfrequencybasetype,
valfrequencytype, codecommunicationchanneltype, ValDurationType CASCADE;

DROP FUNCTION IF EXISTS trigger_insert_service();
DROP FUNCTION IF EXISTS trigger_insert_Point();
DROP FUNCTION IF EXISTS trigger_update_cartographylabel();
DROP FUNCTION IF EXISTS trigger_insert_polygon();

--DROP VIEW IF EXISTS airports, AIRP_TABLE, CTA, CTA_2, CTR, DRA, PRA, RSA;


--
-- CREATE DOMAINS
--

-- В качестве id используем UUID Type
--
-- http://www.postgresql.org/docs/9.3/static/datatype-uuid.html
CREATE DOMAIN id AS UUID;

-- Уникальный индификатор для аэродрома/вертодрома.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirportHeliportDesignatorType

CREATE DOMAIN CodeAirportHeliportDesignatorType AS VARCHAR(10)
CHECK (VALUE ~ '[A-Z]{3,4}|[A-Z]{2}[0-9]{4}');

-- Используется для названий с максимальной длиной в 60 символов.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextNameType
CREATE DOMAIN TextNameType AS VARCHAR(60);


-- A full free text address.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextAddressBaseType
CREATE DOMAIN TextAddressType AS VARCHAR(500);

-- Четырехбуквенный индекс аэродрома ICAO (http://en.wikipedia.org/wiki/International_Civil_Aviation_Organization_airport_code)
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeICAOType
CREATE DOMAIN CodeICAOType AS CHAR(4)
CHECK (VALUE ~ '[A-Z]{4}');

-- Трехбуквенный индекс аэродрома IATA (http://en.wikipedia.org/wiki/International_Air_Transport_Association_airport_code)
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeIATAType

CREATE DOMAIN CodeIATAType AS CHAR(3)
CHECK (VALUE ~ '[A-Z]{3}');

/*
Тип объекта Аэродром/Вертодром:
AD - только аэродром
АН - аэродром и вертодром
НР - только вертодром
LS - посадочная площадка

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirportHeliportType
*/
CREATE DOMAIN CodeAirportHeliportType AS VARCHAR(60)
CHECK (VALUE ~ '(AD|AH|HP|LS|OTHER: [A-Z]{0,30})');
/*
Тип данных для хранения значений: Да или Нет

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeYesNoType
*/
CREATE DOMAIN CodeYesNoType AS VARCHAR(60)
CHECK (VALUE ~ '(YES|NO|OTHER: [A-Z]{0,30})');

/*
Признак принадлежности к военным:
CIVIL - только гражданская авиация
MIL - только военная авиация
JOINT - совместного использования

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeMilitaryOperationsType
*/
CREATE DOMAIN CodeMilitaryOperationsType AS VARCHAR(60)
CHECK (VALUE ~ '(MIL|CIVIL|JOINT|OTHER: [A-Z]{0,30})');

-- A unit of measurement for a vertical distance:
-- FT - feet
-- M - meters
-- FL - flight level in hundreds of feet
-- SM - standard meters (tens of meters)
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomDistanceVerticalType
CREATE DOMAIN UomDistanceVerticalType AS VARCHAR(60)
CHECK (VALUE ~ '(FT|M|FL|SM|OTHER: [A-Z]{0,30})');


/*
Значение расстояния по вертикали (например: верхние и нижние границы воздушного пространства).
Этот тип данных также допускает некоторые специфические не числовые значения:
GND - значение "Поверхность Земли"
UNL - значение "неограниченный"
FLOOR - значение "основание (дно) воздушного пространства", необходимо отображать использование (?) для воздушного пространства с непостоянной нижней границей
CEILING - значение "верх воздушного пространства", необходимо отображать использование (?) для воздушного пространства с непостоянной верхней границей

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceVerticalType
*/
CREATE DOMAIN ValDistanceVerticalBaseType AS DECIMAL(12, 4);
CREATE DOMAIN ValDistanceVerticalBaseTypeNonNumeric AS VARCHAR(40) CHECK (VALUE ~
                                                                          '((UNL|GND|FLOOR|CEILING)|OTHER: [A-Z]{0,30})');
CREATE TYPE ValDistanceVerticalType AS (
  value      ValDistanceVerticalBaseType,
  nonNumeric ValDistanceVerticalBaseTypeNonNumeric,
  unit       UomDistanceVerticalType
);

/*
Вообще в AIXM приведены три используемых датума: EGM_96, AHD (Australian Height Datum), NAVD88 (North American Vertical Datum of 1988), но я думаю что, возможно гораздо больше вариантов
EMG_96 - геопотенциальная модель земного шара 1996 года
AHD - австралийский высотный датум
NAVD88 - северо-американский высотный датум 1988 года

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeVerticalDatumType
*/
CREATE DOMAIN CodeVerticalDatumType AS VARCHAR(60)
CHECK (VALUE ~ '(EMG_96|AHD|NAVD88|OTHER: [A-Z]{0,30})');

-- Значение угла в данной точке между направлением на магнитный север и направлением на географический север.
-- Положительное значение показывает, что магнитный север восточнее географического.
-- Отрицательное значение показывает, что магнитный север западнее географического.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValMagneticVariationType
CREATE DOMAIN ValMagneticVariationType AS DECIMAL(13, 10)
CHECK (VALUE >= -180 AND VALUE <= 180);

-- Значение угла.
-- предлагаю объединить этот тип с предыдущим и сделать один, так как они одинаковые
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValAngleType
CREATE DOMAIN ValAngleType AS DECIMAL(13, 10)
CHECK (VALUE >= -180 AND VALUE <= 180);

-- Дата, в которой значимым является только год.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateYearType
CREATE DOMAIN DateYearType AS SMALLINT
CHECK (VALUE > 1000 AND VALUE <= 9999);

-- Величина годового изменения магнитного склонения, единицы измерения - градус/год.
-- вообще всё описание такое же, как у типа ValAngleType, хоть и ед-цы измерения разные, можно объединить
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValMagneticVariationChangeType
CREATE DOMAIN ValMagneticVariationChangeType AS DECIMAL(13, 10)
CHECK (VALUE >= -180 AND VALUE <= 180);

-- Единицы измерения температуры.
-- C - degrees Celsius
-- F - degrees Fahrenheit
-- K - degrees Kelvin
--
--https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomTemperatureType
CREATE DOMAIN UomTemperatureType AS VARCHAR(60)
CHECK (VALUE ~ '(C|F|K|OTHER: [A-Z]{0,30})');

-- Значение температуры.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValTemperatureType
CREATE TYPE ValTemperatureType AS (
  value DECIMAL(13, 10),
  unit  UomTemperatureType
);

-- Unit of measurement for flight levels
-- FL - flight level in hundreds of feet
-- SM - standard meters (tens of meters)
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomFLType
CREATE DOMAIN UomFLType AS VARCHAR(60)
CHECK (VALUE ~ '(FL|SM|OTHER: [A-Z]{0,30})');

-- A value expressed in flight levels (FL).
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValFLType
CREATE DOMAIN ValFLBaseType AS SMALLINT
CHECK (VALUE < 999);
CREATE TYPE ValFLType AS (
  value ValFLBaseType,
  unit  UomFLType
);

-- Дата по календарю.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateType
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
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomDistanceType
CREATE DOMAIN UomDistanceType AS VARCHAR(60)
CHECK (VALUE ~ '(NM|KM|M|FT|MI|CM|OTHER: [A-Z]{0,30})');

-- A signed distance.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceSignedType
CREATE TYPE ValDistanceSignedType AS (
  value DECIMAL(30, 20),
  unit  UomDistanceType
);

-- A type for (positive) distance.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceBaseType
CREATE DOMAIN ValDistanceBaseType AS DECIMAL(30, 20)
CHECK (VALUE >= 0);

-- A (positive) distance.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceType
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
--https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeStatusOperationsType
CREATE DOMAIN CodeStatusOperationsType AS VARCHAR(60)
CHECK (VALUE ~ '(NORMAL|DOWNGRADED|UNSERVICEABLE|WORK_IN_PROGRESS|OTHER: [A-Z]{0,30})');

-- Закодированный идентификатор организации, департамента, агенства или объединения.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeOrganisationDesignatorType
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
--https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeOrganisationType
CREATE DOMAIN CodeOrganisationType AS VARCHAR(60)
CHECK (VALUE ~ '(STATE|STATE_GROUP|ORG|INTL_ORG|ACFT_OPR|HANDLING_AGENCY|NTL_AUTH|ATS|COMMERCIAL|OTHER: [A-Z]{0,30})');

-- Текстовое обозначение.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextDesignatorType
CREATE DOMAIN TextDesignatorType AS VARCHAR(16)
CHECK (VALUE ~ '([A-Z]|[0-9]|[, !"&#$%''\(\)\*\+\-\./:;<=>\?@\[\\\]\^_\|\{\}])*');

-- A textual description of a sequence of elementary steps.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextInstructionType
CREATE DOMAIN TextInstructionType AS VARCHAR(10000);

-- A full date and time value.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateTimeType
CREATE DOMAIN DateTimeType AS TIMESTAMP WITH TIME ZONE;

-- Единицы измерения глубины:
-- MM - миллиметры
-- СМ - сантиметры
-- IN - дюймы
-- FT - футы
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomDepthType
CREATE DOMAIN UomDepthType AS VARCHAR(60)
CHECK (VALUE ~ '(MM|CM|IN|FT|OTHER: [A-Z]{0,30})');

--Значение глубины.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDepthType
CREATE TYPE ValDepthType AS (
  value DECIMAL(30, 20),
  unit  UomDepthType
);

-- Значение коэффициента трения.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValFrictionType
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
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeFrictionEstimateType
CREATE DOMAIN CodeFrictionEstimateType AS VARCHAR(60)
CHECK (VALUE ~ '(GOOD|MEDIUM_GOOD|MEDIUM|MEDIUM_POOR|POOR|UNRELIABLE|OTHER: [A-Z]{0,30})');

-- Типы оборудования, использованного для определения коэффициента трения на ВПП:
-- BRD - Brakemeter-Dynometer
-- GRT - Grip tester
-- MUM - Mu-meter
-- RFT -	Runway friction tester
-- SFH - Surface friction tester (high-pressure tire)
-- SFL	-	Surface friction tester (low-pressure tire)
-- SKL	-	Skiddometer (low-pressure tire)
-- TAP	-	Tapley meter
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeFrictionDeviceType
CREATE DOMAIN CodeFrictionDeviceType AS VARCHAR(60)
CHECK (VALUE ~ '(BRD|GRT|MUM|RFT|SFH|SFL|SKH|SKL|TAP|OTHER: [A-Z]{0,30})');

-- Время с точностью до 1 мин.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TimeBaseType
CREATE DOMAIN TimeType AS CHAR(5)
CHECK (VALUE ~ '(([0-1][0-9]|2[0-3]):[0-5][0-9])|(24:00)');

-- A numerical value between 0.0 and 100, which designates a part or portion considered in its quantitative relation to the whole.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValPercentBaseType
CREATE DOMAIN ValPercentType AS DECIMAL(4, 1)
CHECK (VALUE >= 0 AND VALUE <= 100);

-- A coded list of values that indicates the availability of an airport/heliport facility for specific flight operations.
-- NORMAL - условия имеют формальные ограничения
-- LIMITED - наряду с формальными ограничениями, есть и дополнительные ограничения по использованию
-- CLOSED - не рабочее состояние
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeStatusAirportType
CREATE DOMAIN CodeStatusAirportType AS VARCHAR(60)
CHECK (VALUE ~ '(NORMAL|LIMITED|CLOSED|OTHER: [A-Z]{0,30})');

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
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirportWarningType
CREATE DOMAIN CodeAirportWarningType AS VARCHAR(60)
CHECK (VALUE ~
       '(WIP|EQUIP|BIRD|ANIMAL|RUBBER_REMOVAL|PARKED_ACFT|RESURFACING|PAVING|PAINTING|INSPECTION|GRASS_CUTTING|CALIBRATION|OTHER: [A-Z]{0,30})');

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
--https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRunwayType
CREATE DOMAIN CodeRunwayType AS VARCHAR(60)
CHECK (VALUE ~ '(RWY|FATO|OTHER: [A-Z]{0,30})');

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
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeSurfaceCompositionType
CREATE DOMAIN CodeSurfaceCompositionType AS VARCHAR(60)
CHECK (VALUE ~
       '(ASPH|ASPH_GRASS|CONC|CONC_ASPH|CONC_GRS|GRASS|SAND|WATER|BITUM|BRICK|MACADAM|STONE|CORAL|CLAY|LATERITE|GRAVEL|EARTH|ICE|SNOW|MEMBRANE|METAL|MATS|PIERCED_STEEL|WOOD|NON_BITUM_MIX|OTHER: [A-Z]{0,40})');

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
--https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeSurfacePreparationBaseType
CREATE DOMAIN CodeSurfacePreparationType AS VARCHAR(60)
CHECK (VALUE ~ '(NATURAL|ROLLED|COMPACTED|GRADED|GROOVED|OILED|PAVED|PFC|AFSC|RFSC|NON_GROOVED|OTHER: [A-Z]{0,30})');

-- Код обозначающий состояние поверхности, такой как ВПП, рулежная дорожка, маркировка порога и т.п.
-- GOOD - хорошее
-- FAIR - чистое (?)
-- POOR - плохое
-- UNSAFE - ненадежное
-- DEFORMED - деформированное
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeSurfaceConditionType
CREATE DOMAIN CodeSurfaceConditionType AS VARCHAR(60)
CHECK (VALUE ~ '(GOOD|FAIR|POOR|UNSAFE|DEFORMED|OTHER: [A-Z]{0,30})');

-- Классификационное число покрытия - параметр выражающий несущую способность (грузонапряжённость)
-- покрытия ВПП аэродрома для эксплуатации без ограничений, используемый совместно с классификационным числом воздушного судна.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValPCNType
CREATE DOMAIN ValPCNType AS DECIMAL(4, 1);

-- Код, обозначающий упругие свойства покрытия (жесткое или гибкое), используемого для определения ACN.
-- RIGID - жесткое покрытие
-- FLEXIBLE - гибкое покрытие
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodePCNPavementType
CREATE DOMAIN CodePCNPavementType AS VARCHAR(60)
CHECK (VALUE ~ '(RIGID|FLEXIBLE|OTHER: [A-Z]{0,30})');

-- Код, указывающий на класс прочности покрытия, связанный с PCN числа.
-- A - поверхность высокой прочности
-- B - поверхность средней прочности
-- C - поверхность низкой прочности
-- D - поверхность  низкой прочности
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodePCNSubgradeType
CREATE DOMAIN CodePCNSubgradeType AS VARCHAR(60)
CHECK (VALUE ~ '(A|B|C|D|OTHER: [A-Z]{0,30})');

-- Код, указывающий максимально допустимое давление в шинах, относящуюся. Используется в PCN.
-- W - высокий: нет ограничений давления (pressure)
-- X - средний: давление до 1.5 МПа (217 psi)
-- Y - низкий: давление до 1.0 МПа (145 psi)
-- Z - очень низкий: давление до 0.5 МПа (73 psi)
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodePCNTyrePressureType
CREATE DOMAIN CodePCNTyrePressureType AS VARCHAR(60)
CHECK (VALUE ~ '(W|X|Y|Z|OTHER: [A-Z]{0,30})');

-- Код, указывающий на метод, используемый при оценке PCN.
-- TECH - техническая оценка
-- ACFT - основанная на опыте воздушного судна
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodePCNMethodBaseType
CREATE DOMAIN CodePCNMethodType AS VARCHAR(60)
CHECK (VALUE ~ '(TECH|ACFT|OTHER: [A-Z]{0,30})');

-- The value of a load classification number (LCN) for a surface.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValLCNBaseType
CREATE DOMAIN ValLCNType AS DECIMAL;

-- Единицы измерения веса.
-- T - тонны
-- LB - фунты
-- TON - не метрические американские тонны (2000 ob или 907.18474 кг)
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomWeightType
CREATE DOMAIN UomWeightType AS VARCHAR(60)
CHECK (VALUE ~ '(KG|T|LB|TON|OTHER: [A-Z]{0,30})');

-- Значение веса.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomWeightType
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
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomPressureType
CREATE DOMAIN UomPressureType AS VARCHAR(60)
CHECK (VALUE ~ '(PA|MPA|PSI|BAR|TORR|ATM|HPA|OTHER: [A-Z]{0,30})');

-- Значение давления.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValPressureType
CREATE TYPE ValPressureType AS (
  value DECIMAL,
  unit  UomPressureType);

-- Код, описывающий положение по отношению к оси ВВП. Например: слева / справа от осевой линии ВПП.
-- LEFT - на левой стороне оси
-- RIGHT - на правой стороне оси
-- BOTH - распределено по двум сторонам оси
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeSideType
CREATE DOMAIN CodeSideType AS VARCHAR(40)
CHECK (VALUE ~ '((LEFT|RIGHT|BOTH|EITHER)|OTHER: [A-Z]{30})');

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
--https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRunwaySectionBaseType
CREATE DOMAIN CodeRunwaySectionType AS VARCHAR(40)
CHECK (VALUE ~
       '((TDZ|AIM|CL|EDGE|THR|DESIG|AFT_THR|DTHR|END|TWY_INT|RPD_TWY_INT|1_THIRD|2_THIRD|3_THIRD)|OTHER: [A-Z]{0,30})');

-- Значение индикатора направления (в данной точке), измереннное как угол между данным направлением и направлением на истинный северный или магнитный полюс (может задаваться явно и неянво).
-- Угол измеряется по часовой стрелке от 0 до 360 градусов. Значение может быть радиалом всенаправленного азимутального радиомаяка (РМА, VHF). Например, направление на запад выражается как 270 градусов.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValBearingType
CREATE DOMAIN ValBearingType AS DECIMAL
CHECK ( VALUE >= 0 AND VALUE <= 360);

-- Идентификатор направления поворота
-- LEFT - налево
-- RIGHT - направо
-- EITHER	- любое левое или правое направление
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeDirectionTurnType
CREATE DOMAIN CodeDirectionTurnType AS VARCHAR(40)
CHECK (VALUE ~ '((LEFT|RIGHT|EITHER)|OTHER: [A-Z]{0,30})');

-- Значение наклона или градиента восхождения/спуска, выраженное в процентах
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValSlopeType
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
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRunwayMarkingType
CREATE DOMAIN CodeRunwayMarkingType AS VARCHAR(40)
CHECK (VALUE ~ '((PRECISION|NONPRECISION|BASIC|NONE|RUNWAY_NUMBERS|NON_STANDARD|HELIPORT)|OTHER: [A-Z]{0,30})');

-- Список значений, идентифицирующих состояние нарисованных поверхностных элементов маркировки
-- GOOD - маркировка в хорошем состоянии
-- FAIR - маркировка в порядочном состоянии
-- POOR - маркировка в плохом состоянии
-- EXCELLENT - маркировка в прекрасном состоянии
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeMarkingConditionType
CREATE DOMAIN CodeMarkingConditionType AS VARCHAR(40)
CHECK (VALUE ~ '((GOOD|FAIR|POOR|EXCELLENT)|OTHER: [A-Z]{0,30})');

-- Классификация посадочной световой системы, с использованием в качестве критерия "JAR-OPS 1 - Subpart E, Appendix 1 to 1.430"
-- FALS - полное световое оборудование, включая маркировки ВПП, высокая/средняя интенсивность посадочной световой системы - 720 м и более, огни по краям ВПП, в начале ВПП и в конце ВПП
-- IALS - среднее световое оборудование, включая маркировки ВПП, высокая/средняя интенсивность посадочной световой системы - от 420 до 720 м, огни по краям ВПП, в начале ВПП и в конце ВПП
-- BALS - базовое световое оборудование, включая маркировки ВПП, высокая/средняя интенсивность посадочной световой системы - менее 420 м (или низкая интенсивность посадочной световой системы любой длины), огни по краям ВПП, в начале ВПП и в конце ВПП
-- NALS - световое оборудование отсутствует или не эффективно, включая маркировки ВПП, огни по краям ВПП, в начале ВПП и в конце ВПП или отсутствие светового оборудования вообще
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeLightingJARType
CREATE DOMAIN CodeLightingJARType AS VARCHAR(40)
CHECK (VALUE ~ '((FALS|IALS|BALS|NALS)|OTHER: [A-Z]{0,30})');

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
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeApproachGuidanceType
CREATE DOMAIN CodeApproachGuidanceType AS VARCHAR(40)
CHECK (VALUE ~
       '((NON_PRECISION|ILS_PRECISION_CAT_I|ILS_PRECISION_CAT_II|ILS_PRECISION_CAT_IIIA|ILS_PRECISION_CAT_IIIB|ILS_PRECISION_CAT_IIIC|ILS_PRECISION_CAT_IIID|MLS_PRECISION)|OTHER: [A-Z]{0,30})');

-- Код, идентифицирующий уровень интенсивности источника света
-- LIL - низкая интенсивность света
-- LIM - средняя интенсивность света
-- LIH - высокая интенсивность света
-- LIL_LIH - низкая интенсивность для ночного использования, высокая интенсивность для дневного использования, определяется фотоэлементом
-- PREDETERMINED - заранее заданный шаг интенсивности, в посадочной системе освещения, которая для радио контроля воздух-земля превосходит по важности систему освещения ВПП, которая установлена, основываясь на условиях видимости.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeLightIntensityType
CREATE DOMAIN CodeLightIntensityType AS VARCHAR(40)
CHECK (VALUE ~ '((LIL|LIM|LIH|LIL_LIH|PREDETERMINED)|OTHER: [A-Z]{0,30})');

-- Код, обозначающий цвет. Список допустимых значений включает названные цвета, а не цвета, которые описываются только с использованием RGB или CMYK или какой-либо другой системой цветов.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeColourType
CREATE DOMAIN CodeColourType AS VARCHAR(40)
CHECK (VALUE ~
       '((YELLOW|RED|WHITE|BLUE|GREEN|PURPLE|ORANGE|AMBER|BLACK|BROWN|GREY|LIGHT_GREY|MAGENTA|PINK|VIOLET)|OTHER: [A-Z]{30})');

-- Codelist containing the Telecom Networks that can be used to address an organisation.
-- AFTN - The data interchange in the AFS is performed by the Aeronautical Fixed Telecommunications Network, AFTN. This is a message handling network running according to ICAO Standards documented in Annex 10 to the ICAO Convention
-- AMHS - Aeronautical Message Handling System. A standard for aeronautical ground-ground communications (e.g. for the transmission of NOTAM, Flight Plans or Meteorological Data) based on X.400 profiles. It has been defined by the International Civil Aviation Organization (ICAO)
-- INTERNET - The Internet is a worldwide, publicly accessible series of interconnected computer networks that transmit data by packet switching using the standard Internet Protocol (IP)
-- SITA - SITA network
-- ACARS - Aircraft Communications Addressing and Reporting System. A datalink system that enables ground stations (airports, aircraft maintenance bases, etc.) and commercial aircraft to communicate without voice using a datalink system.
-- ADNS - ARINC Data Network Service (retired Mar 2007)
-- RESURFACING - работы по асфальтированию
--
--https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeTelecomNetworkType
CREATE DOMAIN CodeTelecomNetworkType AS VARCHAR(40)
CHECK (VALUE ~ '((AFTN|AMHS|INTERNET|SITA|ACARS|ADNS)|OTHER: [A-Z]{30})');

-- A phone or facsimile number.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_TextPhoneBaseType
CREATE DOMAIN TextPhoneType AS VARCHAR
CHECK (VALUE ~ '(\+)?[0-9\s\-\(\)]+');

-- Список значений, идентифицирующих цель полета в зависимости от расположения, таких как прибытие, вылет, перелет
-- ARR - прибытие
-- DEP - вылет
-- OVERFLY - перелет
-- ALL - все типы
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeFlightDestinationType
CREATE DOMAIN CodeFlightDestinationType AS VARCHAR(40)
CHECK (VALUE ~ '((ARR|DEP|OVERFLY|ALL)|OTHER: [A-Z]{30})');

-- Список очередности обслуживания внутри последовательности анологичных видов обслуживания: первичная, вторичная, альтернативная
-- PRIMARY - основной
-- SECONDARY - вторичный
-- ALTERNATE - альтернативный
-- EMERG - аварийная
-- GUARD - защитная
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeFacilityRankingType
CREATE DOMAIN CodeFacilityRankingType AS VARCHAR(40)
CHECK (VALUE ~ '((PRIMARY|SECONDARY|ALTERNATE|EMERG|GUARD)|OTHER: [A-Z]{30})');

/*
Список значений, используемых для определения сервиса по плнированию полетов и регулированию потоков
FPL - служба, предоставляющая одобрение и распределение планирования полетов, относящееся к ATC Unites (к объединениям Контроля Воздушного Движения -?)
FPLV - служба, предоставляющая утверждение планирования полетов
ATFM - служба управления воздушными потоками
CLEARANCE - служба, предоставляющая разрешения (вход, посадка, перелет, выход и т.д.) в данной точке
SCHED - служба, составляющая расписание и распределение временных интервалов

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeServiceATFMType
*/
CREATE DOMAIN CodeServiceATFMType AS VARCHAR(40)
CHECK (VALUE ~ '((FPL|FPLV|ATFM|CLEARANCE|SCHED)|OTHER: [A-Z]{30})');

/*
Список значений, используемых для определения сервиса по предоставлению информации
AFIS - аэродромная служба полетной информации
AIS - служба авиационной информации, как дано в ICAO Annex 15
ATIS - автоматическое информационное аэродромное обслуживание, работает на указанной частоте радиосредства
BRIEFING - служба предполетная и послеполетной информации
FIS - полетно-информационное обслуживание пролетающих самолетов
OFIS_VHF - VHF operational flight information service (OFIS) broadcasts, как дано в ICAO Annex 11
OFIS_HF - HF operational flight information service (OFIS) broadcasts, как дано в ICAO Annex 11
NOTAM - обеспечение службой NOTAM, как дано в ICAO Annex 11
INFO - предоставление ограниченной специальной информакии о специфичной активности в определенном месте
RAF - служба регионального прогноза
METAR - регулярный авиационный отчет по погоде
SIGMET - информация, издаваемая службой метеоролического наблюдения, касающаяся появления или ожидаемого появлени указанного проходящего погодного явления, котрое может повлиять на безопасность операций воздушного судна
TWEB - служба вещания записей о погоде
TAF - служба метеорологического прогноза в области терминала
VOLMET - служба передачи метеорологической информации для воздушного судна в полете
ALTIMETER - служба предоставления информации настроек альтиметра
ASOS - автоматизированная служба обследования поверхности
AWOS - автоматизированная cистема метеонаблюдений

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeServiceInformationType
*/
CREATE DOMAIN CodeServiceInformationType AS VARCHAR(40)
CHECK (VALUE ~
       '((AFIS|AIS|ATIS|BRIEFING|FIS|OFIS_VHF|OFIS_HF|NOTAM|INFO|RAF|METAR|SIGMET|TWEB|TAF|VOLMET|ALTIMETER|ASOS|AWOS)|OTHER: [A-Z]{30})');

/*
Список значений, используемых для определения сервиса по поиску и спасению
ALRS - служба предупреждения
SAR - служба поиска и спасения
RCC - служба по координации спасательных операций

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeServiceSARType
*/
CREATE DOMAIN CodeServiceSARType AS VARCHAR(40)
CHECK (VALUE ~ '((ALRS|SAR|RCC)|OTHER: [A-Z]{30})');

/*
Список значений, идентифицирующих тип воздушного пространства
NAS - национальная система воздушного пространства.
   [Замечание: воздушное пространство, внутри которого государство предоставляет службу управления воздушным движением обычно состоит из:
   1)территории, подвластнные государству; 2)отдельные участки воздушного пространства над открытым морем или воздушное пространство территорий без государственности, где служба управления воздушным движением предоставляется так, как определено в региональных соглашениях]
FIR - район полетной информации. Воздушное пространоство определенных размеров, внутри которого предоставляется служба полётной информации и аварийная служба оповещения.
   Описание: признается ИКАО. Может использоваться, например, если служба предоставляется более, чем одним отделом (единицей-?).
FIR_P - часть РПИ
UIR - верхний район полетной информации. Верхнее воздушное пространство определенных размеров, внутри которого предоставляется служба полётной информации и аварийная служба оповещения.
   Описание: не признается ИКАО. Каждая структура (штат) даёт своё определение верхнему воздушному пространству.
UIR_P - часть верхнего РПИ
CTA - диспетчерская зона (или зона управления). Управляемое воздушное пространство, распространяющееся вверх от определенной границы над землей.
   Описание: признается ИКАО.
CTA_P - часть диспетчерской зоны
OCA - океаническая диспетчерская зона. Диспетчерская зона, распространяющаяся вверх в верхнем воздушном пространстве.
   Описание: не признается ИКАО.
OCA_P - часть океанической диспетчерской зоны
UTA - верхняя диспетчерская зона. Диспетчерская зона, распространяющаяся вверх в верхнем воздушном пространстве.
   Описание: не признается ИКАО.
UTA_P - часть верхней диспетчерской зоны
TMA - диспетчерская зона у аэропортов. Диспетчерская зона, обычно установленная в месте скопления путей служб управления воздушным движением в окрестностях одного или более значительных аэродромов.
   Описание: не признается ИКАО. В основном используется в Европе под гибким использованием концепта воздушного пространства (??)
TMA_P - часть диспетчерской зоны у аэропортов
CTR - диспетчерский район. Управляемое воздушное пространство, распространяющееся вверх от поверхности земли до определенной верхней границы.
   Описание: признается ИКАО.
CTR_P - часть диспетчерского района
OTA - океаническая транзитная зона
SECTOR - диспетчерский сектор. Разделение обозначенной диспетчерской зоны, внутри которой ответственность отведена одному диспетчеру или небольшой группе диспетчеров.
   Описание: признается ИКАО.
SECTOR_C - временно сгруппированный сектор
TSA - временно отделенная зона (FUA). Воздушное пространство с заранее определенными размерами, внутри которого действия требуют бронирования воздушного пространства для исключительного пользования определенными пользователями в течение предопределенного периода времени.
   Описание: площадь, на которой приняты специальные ограничительные меры, направленные на предотвращение или минимизацию вмешательства (помех) со стороны дружественных сил.
             площадь под военным контролем, на которой приняты специальные меры безопасности, чтобы предотвратить несанкционированное вторжение.
CBA - зарубежная зона (FUA). Воздушное пространство определенных размеров над контактными площадями земли или внутренними водами более чем одного государства.
   Описание: не признается ИКАО. В основном используется в Европе под гибким использованием концепта воздушного пространства (??)
RCA - сокращенная зона координации (FUA). Часть воздушного пространства определенных размеров, внутри которого общее воздушное движение разрешено по принципу "off-route", когда нет необходимости диспетчерам общего воздушного движения начинать коодинацию с диспетчерами OAT.
   Описание: не признается ИКАО.  В основном используется в Европе под гибким использованием концепта воздушного пространства (??)
RAS - регулируемое воздушное пространство (ничем другим не покрытое).
AWY - воздушный путь (корридор). Управляемая территория или ее часть, установленная в форме корридора.
MTR - буферная зона военного тренировочного пути. Управляемая территория или ее часть, установленная в форме корридора вокруг военного тренировочного пути в целях оградить его от другого движения (воздушного).
P - запрещенная зона. Воздушное пространство определенных размеров над землей или внутренними водами государства, внутри которого полеты воздушным суднам запрещены.
   Описание: признается ИКАО.
R - зона ограничения полетов. Воздушное пространство определенных размеров над землей или внутренними водами государства, внутри которого полеты воздушных суден ограничены в соответствии с определенными обозначенными условиями.
   Описание: признается ИКАО.
D - опасная зона. Воздушное пространство определенных размеров, внутри которого в определенное время могут существовать условия, опасные для полета воздушного судна.
   Описание: признается ИКАО.
ADIZ - воздушная защитная идентификационная зона. Специально названное воздушное пространство определенных размеров, внутри которого воздушное судно должно исполнять специальные процедуры идентификации и/или отчетности вдобавок к процедурам, связанным с обеспечением служб управления воздушным движением.
   Описание: признается ИКАО.
NO_FIR - воздушная зона, для которой не определен даже РПИ.
   [Замечание: есть части земного пространства, где не определен ни РПИ, ни любой другой тип воздушного пространства. Такое воздушное пространство обозначается: NO-FIR]
PART - часть воздушного пространства (используется в аггрегациях воздушного пространства)
CLASS - воздушное пространство, имеющее определённый класс
POLITICAL - политическая/административная зона
D_OTHER - действия опасного происхождения (не то же, что опасная зона)
TRA - временнно зарезервированная зона.  Воздушное пространство с заранее определенными размерами, внутри которого действия требуют бронирования воздушного пространства в течение предопределенного периода времени.
   Описание: не признается ИКАО. В основном используется в Европе под гибким использованием концепта воздушного пространства (??)
A - зона тревоги. Воздушное пространство, на котором может произоводиться большой объем действий по обучению пилотов или не обычные типы воздушных действий, не опасные для воздушного судна.
   Описание: не признается ИКАО. В основном используется в США и прилигающих территориях.
W - зона предупреждения. Не управляемое воздушное пространство определенных размеров
PROTECT - воздушное пространство, защищенное от необычного воздушного движения
AMA - зона минимальной высоты. Минимальная высота, используемая согласно с метеоусловиями полета по приборам и обеспечивающая минимальный вертикальный промежуток в 300 метров (1000 футов) или в случае обозначенной горной местности - 600 метров (2000 футов) наад всеми препятствиями, расположенными над данной территорией.
   Описание: признается ИКАО. Издается многими штатми как прямоугольник 1*1 градус в ENR 6 charts (?).
   Замечание: при точном расчете 984 фута может использоватьсся как эквивалент 300 метров.
ASR - зона установки альтиметра. Воздушное пространство определенных размеров, внутри которого производят процедуры по стандартизированной установке альтиметра.
   Описание: не признается ИКАО. Например, в течение полета альтиметр должен быть настроен по местным установкам альтиметра ближайшей станции по ходу полета.
ADV - рекомендованная зона. Зона определенных размеров, внутри которой доступна консультативная служба воздушного движения.
   Описание: признается ИКАО. Диспетчерская служба воздушного движения предоставляет куда более полный набор услуг, чем консультативная служба воздушного движения, поэтому консультативные зоны полётов и путей не устанавливают внутри воздушных пространств, управляемых диспетчерами, но консультативная служба воздушного сообщения может предоставляться и внизу, и наверху.
UADV - верхняя рекомендованная зона. Зона определенных размеров в верхнем воздушном пространстве, внутри которой доступна консультативная служба воздушного движения.
   Описание: признается ИКАО. Диспетчерская служба воздушного движения предоставляет куда более полный набор услуг, чем консультативная служба воздушного движения, поэтому консультативные зоны полётов и путей не устанавливают внутри воздушных пространств, управляемых диспетчерами, но консультативная служба воздушного сообщения может предоставляться и внизу, и наверху.
ATZ - зона движения аэропорта. Воздушное пространство определенных размеров, установленное вокруг аэропорта для защиты движения в аэропорту.
   Описание: признается ИКАО.
ATZ_P - часть зоны движения аэропорта
HTZ	- зона движения вертодрома
NAS_P - часть национальной системы воздушного пространства

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirspaceType
*/
CREATE DOMAIN CodeAirspaceType AS VARCHAR(40)
CHECK (VALUE ~
       '((NAS|FIR|FIR_P|UIR|UIR_P|CTA|CTA_P|OCA|OCA_P|UTA|UTA_P|TMA|TMA_P|CTR|CTR_P|OTA|SECTOR|SECTOR_C|TSA|CBA|RCA|RAS|AWY|MTR|P|R|D|ADIZ|NO_FIR|PART|CLASS|POLITICAL|D_OTHER|TRA|A|W|PROTECT|AMA|ASR|ADV|UADV|ATZ|ATZ_P|HTZ|NAS_P)|OTHER: [A-Z]{30})');

/*
Допустимый тип воздушного пространства

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirspaceDesignatorType
*/
CREATE DOMAIN CodeAirspaceDesignatorType AS VARCHAR(10)
CHECK (VALUE ~ '([A-Z]|[0-9]|[, !"&#$%''\(\)\*\+\-\./:;<=>\?@\[\\\]\^_\|\{\}])*');

/*
A - класс воздушного пространства по ICAO Annex 11. Appendix 4. Разрешены только полёты по правилам полётов по приборам (ППП); все полёты снабжены диспетчерской службой воздушного движения и отделены друг от друга.
B - класс воздушного пространства по ICAO Annex 11. Appendix 4. Разрешены полёты по ППП и полёты по правилам визуального полёта (ПВП); все полёты снабжены диспетчерской службой воздушного движения и отделены друг от друга.
C - класс воздушного пространства по ICAO Annex 11. Appendix 4. Разрешены полёты по ППП и полеты по ПВП; все полёты снабжены диспетчерской службой воздушного движения, полёты по ППП отделены от других полетов по ППП и от полетов по ПВП. Полеты по ПВП отделены от полетов по ППП и получают информацию о движении.
D - класс воздушного пространства по ICAO Annex 11. Appendix 4. Разрешены полёты по ППП и полеты по ПВП; все полёты снабжены диспетчерской службой воздушного движения, полёты по ППП отделены от других полетов по ППП и получают информацию о движении, касающуюся полетов по ПВП. Полеты по ПВП получают информацию о движении, касающуюся всех других полетов.
E - класс воздушного пространства по ICAO Annex 11. Appendix 4. Разрешены полёты по ППП и полеты по ПВП; полёты по ППП снабжены диспетчерской службой воздушного движения и отделены от других полетов по ППП. Все полеты получают информацию о движении настолько, насколько это осуществимо. Класс Е не должен быть использован в диспетчерских зонах.
F - класс воздушного пространства по ICAO Annex 11. Appendix 4. Разрешены полёты по ППП и полеты по ПВП; все участвующие полёты по ППП снабжены консультативной службой воздушного движения, все полёты получают услуги по летной информации по требованию. Описание: приведение в исполнение консультативная служба воздушного движения обычно считается временной мерой, только до того времени, когда эта служба может быть заменена авиадиспетчерской службой.
G - класс воздушного пространства по ICAO Annex 11. Appendix 4. Разрешены полёты по ППП и полеты по ПВП и получают службу полетной информации по требованию.

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirspaceClassificationType
*/
CREATE DOMAIN CodeAirspaceClassificationType AS VARCHAR(40)
CHECK (VALUE ~ '((A|B|C|D|E|F|G)|OTHER: [A-Z]{30})');

/*
SFC - расстояние, измеренное от поверхности Земли (эквивалентно AGL - над уровнем Земли)
MSL - расстояние, измеренное от среднего уровня моря (эквивалентно высоте)
W84 - расстояние, измеренное от эллипсоида WGS84
STD - вертикальное расстояние, измеренное с помощью альтиметра, установленного по стандартной атмосфере
*/
CREATE DOMAIN CodeVerticalReferenceType AS VARCHAR(40)
CHECK (VALUE ~ '((SFC|MSL|W84|STD)|OTHER: [A-Z]{30})');

/*
ABOVE_LOWER - на нижней высоте или выше нее
BELOW_UPPER - на верхней высоте или ниже нее
AT_LOWER - на нижней высоте
BETWEEN - между верхней и нижней высотами
RECOMMENDED - рекомендована нижняя высота
EXPECT_LOWER - ожидать нижнюю высоту от службы управлением воздушным движением
AS_ASSIGNED - назначается во время операций (например, службой управления воздушным движением)

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAltitudeUseType
*/
CREATE DOMAIN CodeAltitudeUseType AS VARCHAR(40)
CHECK (VALUE ~ '((ABOVE_LOWER|BELOW_UPPER|AT_LOWER|BETWEEN|RECOMMENDED|EXPECT_LOWER|AS_ASSIGNED)|OTHER: [A-Z]{30})');

/*
Префикс перед основной буквой воздушных трасс (ИКАО).
K - Kopter - маршрут расположен в нижнем воздушном пространстве и предназначен, в основном, для полетов вертолетов
U - Upper - маршрут расположен в верхнем воздушном пространстве
S - Supersonic - маршрут предназначен для самолетов со сверхзвуковыми скоростями полета
T - TACAN Route (военный)

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRouteDesignatorPrefixType
*/
CREATE DOMAIN CodeRouteDesignatorPrefixType AS VARCHAR(40)
CHECK (VALUE ~ '((K|U|S|T)|OTHER: [A-Z]{30})');

/*
Однобуквенный указатель для пути

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRouteDesignatorLetterType
*/
CREATE DOMAIN CodeRouteDesignatorLetterType AS VARCHAR(40)
CHECK (VALUE ~ '((A|B|G|H|J|L|M|N|P|Q|R|T|V|W|Y|Z)|OTHER: [A-Z]{30})');

/*
A (positive) number of similar items.

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_NoNumberType
*/
CREATE DOMAIN NoNumberType AS INTEGER;

/*
Буквы латинского алфавита

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeUpperAlphaType
*/
CREATE DOMAIN CodeUpperAlphaType AS VARCHAR(40)
CHECK (VALUE ~ '((A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z)|OTHER: [A-Z]{0,30})');

-- Классификация путей на пути ATS и северно-атлантические пути.
-- ATS - участки, используемые с разрешения службы движения при повышенном внимании (путь ATS описан в ICAO Annex 11).
-- NAT - маршрут выхода на северо - атлантический трек (часть организовнной системы путей)
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRouteType
CREATE DOMAIN CodeRouteType AS VARCHAR(40)
CHECK (VALUE ~ '((ATS|NAT)|OTHER: [A-Z]{0,30})');

-- Правила полета, которые должны соблюдаится воздушным судном.
-- IFR
-- VFR
-- ALL - IFR и VFR
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeFlightRuleType
CREATE DOMAIN CodeFlightRuleType AS VARCHAR(40)
CHECK (VALUE ~ '((IFR|VFR|ALL)|OTHER: [A-Z]{0,30})');

-- Код, обозначающий, является путь международным или региональным (местным)
-- INTL - международный
-- DOM - местные воздушные линии
-- BOTH - и то, и другое
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRouteOriginType
CREATE DOMAIN CodeRouteOriginType AS VARCHAR(40)
CHECK (VALUE ~ '((INTL|DOM|BOTH)|OTHER: [A-Z]{0,30})');

-- Код, разделяющий военный и гражданский типы
-- MIL - военный
-- CIVIL - гражданский
-- ALL - и военный, и гражданский
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeMilitaryStatusType
CREATE DOMAIN CodeMilitaryStatusType AS VARCHAR(40)
CHECK (VALUE ~ '((MIL|CIVIL|ALL)|OTHER: [A-Z]{0,30})');

-- Код, обозначающий тип полета на военном тренировочном пути
-- IR - тренировочный путь IFR
-- VR - тренировочный путь VFR
-- SR - тренировочный путь малой скорости и низкой высоты
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeMilitaryTrainingType
CREATE DOMAIN CodeMilitaryTrainingType AS VARCHAR(40)
CHECK (VALUE ~ '(IR|VR|SR|OTHER: [A-Z]{0,30})');

-- Код, обозначающий первичную активность, имеющую место на воздушном пространстве или причину ее появления
-- AD_TFC
-- HELI_TFC
-- TRAINING
-- AEROBATICS
-- AIRSHOW
-- SPORT
-- ULM
-- GLIDING
-- PARAGLIDER
-- HANGGLIDING
-- PARACHUTE
-- AIR_DROP
-- BALLOON
-- RADIOSONDE
-- SPACE_FLIGHT
-- и т.д.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirspaceActivityType
CREATE DOMAIN CodeAirspaceActivityType AS VARCHAR(40)
CHECK (VALUE ~
       '(AD_TFC|HELI_TFC|TRAINING|AEROBATICS|AIRSHOW|SPORT|ULM|GLIDING|PARAGLIDER|HANGGLIDING|PARACHUTE|AIR_DROP|BALLOON|RADIOSONDE|SPACE_FLIGHT|UAV|AERIAL_WORK|CROP_DUSTING|FIRE_FIGHTING|MILOPS|REFUEL|JET_CLIMBING|EXERCISE|TOWING|NAVAL_EXER|MISSILES|AIR_GUN|ARTILLERY|SHOOTING|BLASTING|WATER_BLASTING|ANTI_HAIL|BIRD|BIRD_MIGRATION|FIREWORK|HI_RADIO|HI_LIGHT|LASER|NATURE|FAUNA|NO_NOISE|ACCIDENT|POPULATION|VIP|VIP_PRES|VIP_VICE|OIL|GAS|REFINERY|CHEMICAL|NUCLEAR|TECHNICAL|ATS|PROCEDURE|OTHER: [A-Z]{0,30})');

-- Список значений, показывающий состояние активизации воздушного пространства.
-- AVBL_FOR_ACTIVATION - свойство может быть активировано
-- ACTIVE - воздушное пространство активно (но оно еще может быть не использовано)
-- IN_USE - воздушное пространство используется в период активизации
-- INACTIVE - воздушное пространство не активно
-- INTERMITTENT - воздушное пространство активно, но имеются периоды когда оно реально не используется
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeStatusAirspaceType
CREATE DOMAIN CodeStatusAirspaceType AS VARCHAR(40)
CHECK (VALUE ~ '(AVBL_FOR_ACTIVATION|ACTIVE|IN_USE|INACTIVE|INTERMITTENT|OTHER: [A-Z]{0,30})');

-- Код, указывающий на тип связи между значимой точкой и воздушным пространством.
-- ENTRY - первая точка оповещения, отнесенная к значимой точке, через которую проходит воздушное судно или предполагается, что пройдёт, при вхождении в воздушное пространство.
-- EXIT - точка выхода. Последняя точка оповещения, отнесенная к значимой точке, через которую проходит воздушное судно или предполагается, что пройдёт, при выходе из воздушного пространства.
-- ENTRY_EXIT - точка входа/выхода. Первая и последняя точка оповещения, отнесенная к значимой точке, через которую проходит воздушное судно или предполагается, что пройдёт, при вхождении в воздушное пространство или выходе из него.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirspacePointRoleType
CREATE DOMAIN CodeAirspacePointRoleType AS VARCHAR(40)
CHECK (VALUE ~ '(ENTRY|EXIT|ENTRY_EXIT|OTHER: [A-Z]{0,30})');

-- Код, обозначающий расположение значимой точки в воздушном пространстве
-- IN - расположена внутри воздушного пространства
-- OUT - расположена внутри воздушного пространства
-- BORDER - расположена на границе воздушного пространства
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirspacePointPositionType
CREATE DOMAIN CodeAirspacePointPositionType AS VARCHAR(40)
CHECK (VALUE ~ '(IN|OUT|BORDER|OTHER: [A-Z]{0,30})');

-- Код, обозначающий уровень
-- UPPER - верхнее воздушное пространство
-- LOWER - нижнее воздушное пространство
-- BOTH - верхнее и нижнее воздушное пространство
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeLevelType
CREATE DOMAIN CodeLevelType AS VARCHAR(40)
CHECK (VALUE ~ '(UPPER|LOWER|BOTH|OTHER: [A-Z]{0,30})');

-- Тип сегмента пути
-- GRC - окружность большого круга
-- RHL - локсодромия
-- GDS - геодезическая линия
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRouteSegmentPathType
CREATE DOMAIN CodeRouteSegmentPathType AS VARCHAR(40)
CHECK (VALUE ~ '(GRC|RHL|GDS|OTHER: [A-Z]{0,30})');

/*
Тип маршрута с навигационной точки зрения
CONV - традиционный (обычный) навигационный путь
RNAV - маршрут зональной навигации
TACAN - радионавигационная система ближнего действия "Такан"

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRouteNavigationType
*/
CREATE DOMAIN CodeRouteNavigationType AS VARCHAR(40)
CHECK (VALUE ~ '(CONV|RNAV|TACAN|OTHER: [A-Z]{0,30})');

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRNPType
CREATE DOMAIN CodeRNPType AS VARCHAR
CHECK (VALUE ~ '[0-9]{1,2}(\.[0-9]{1}){0,1}');

-- Суффикс для определителя пути
-- F - на части пути доступно только Консультативное ОВД
-- G - на части пути доступно только Летно - информационное ОВД
--
--  https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRouteDesignatorSuffixType
CREATE DOMAIN CodeRouteDesignatorSuffixType AS VARCHAR(40)
CHECK (VALUE ~ '(F|G|OTHER: [A-Z]{0,30})');

-- Тип отчета о позиции, требуемого диспетчерской службой аэродрома (ATC Unit)
-- COMPULSORY - обязательный
-- ON_REQUEST - по запросу
-- NO_REPORT - без отчета
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeATCReportingType
CREATE DOMAIN CodeATCReportingType AS VARCHAR(40)
CHECK (VALUE ~ '(COMPULSORY|ON_REQUEST|NO_REPORT|OTHER: [A-Z]{0,30})');

-- Классификация точек входа и выхода на свободные зоны полета
-- PITCH - точка свободного полета PITCH указывает на начало свободного полета
-- CATCH - точка свободного полета CATCH указывает на конец свободного полета
--
--  https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeFreeFlightType
CREATE DOMAIN CodeFreeFlightType AS VARCHAR(40)
CHECK (VALUE ~ '(PITCH|CATCH|OTHER: [A-Z]{0,30})');

-- Код, показывающий, что у точки есть особенная роль в контексте RVSM (Cокращенный минимум вертикального эшелонирования)
-- IN - точка входа RVSM
-- OUT - точка выхода RVSM
-- IN_OUT - точка входа/выхода RVSM
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRVSMPointRoleType
CREATE DOMAIN CodeRVSMPointRoleType AS VARCHAR(40)
CHECK (VALUE ~ '(IN|OUT|IN_OUT|OTHER: [A-Z]{0,30})');

-- Код, указывающий на использование точки на военном тренировочном пути.
-- S - точка входа (начала)
-- T - точка возврата
-- X - точка выхода (конца)
-- AS - запасная точка входа
-- AX - запасная точка выхода
-- ASX - запасная точка входа/выхода
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeMilitaryRoutePointType
CREATE DOMAIN CodeMilitaryRoutePointType AS VARCHAR(40)
CHECK (VALUE ~ '(S|T|X|AS|AX|ASX|OTHER: [A-Z]{0,30})');

-- Трехбуквенный код, обозначающий язык (в соответствиии с ISO 639-2)
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeLanguageType
CREATE DOMAIN CodeLanguageType AS VARCHAR(3)
CHECK (VALUE ~ '[a-z]{3}');

/*
Тип канала связи.
HF - высокочастотный голосовой радиоканал
VHF - ультракоротковолновый голосовой радиоканал с интервалами 25 КГц
VDL1
VDL2
VDL4
AMSS
ADS_B
ADS_B_VD
HFDL
VHF_833
UHF

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeCommunicationModeType
*/
CREATE DOMAIN CodeCommunicationModeType AS VARCHAR(40)
CHECK (VALUE ~ '(HF|VHF|VDL1|VDL2|VDL4|AMSS|ADS_B|ADS_B_VD|HFDL|VHF_833|UHF|OTHER: [A-Z]{0,30})');

-- HZ - Гц
-- KHZ - кГц
-- MHZ - МГц
-- GHZ - ГГц
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomFrequencyType
CREATE DOMAIN UomFrequencyType AS VARCHAR(40)
CHECK (VALUE ~ '(HZ|KHZ|MHZ|GHZ|OTHER: [A-Z]{0,30})');

-- Значение частоты (радио) навигационной системы
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValFrequencyType
CREATE DOMAIN ValFrequencyBaseType AS DECIMAL
CHECK (VALUE > 0);
CREATE TYPE ValFrequencyType AS (
  value ValFrequencyBaseType,
  unit  UomFrequencyType
);

-- Код, обозначающий тип передачи, как определено в 1979 ITU World Administrative Radio Conference.
-- A2 - телеграфный, не голосовой
-- A3A
-- A3B
-- A3E
-- A3H
-- A3J
-- A3L
-- A3U
-- J3E
-- NONA1A
-- NONA2A
-- PON
-- A8W
-- A9W
-- NOX
-- G1D
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeRadioEmissionType
CREATE DOMAIN CodeRadioEmissionType AS VARCHAR(40)
CHECK (VALUE ~ '(A2|A3A|A3B|A3E|A3H|A3J|A3L|A3U|J3E|NONA1A|NONA2A|PON|A8W|A9W|NOX|G1D|OTHER: [A-Z]{0,30})');

-- Идентификатор радиоканала, по которому осуществляется связь.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeCommunicationChannelType
CREATE DOMAIN CodeCommunicationChannelType AS VARCHAR;

/*
Код - индикатор для направленности канала связи
UPLINK
DOWNLINK
BIDIRECTIONAL
UPCAST
DOWNCAST

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeCommunicationDirectionType
*/
CREATE DOMAIN CodeCommunicationDirectionType AS VARCHAR(40)
CHECK (VALUE ~ '(UPLINK|DOWNLINK|BIDIRECTIONAL|UPCAST|DOWNCAST|OTHER: [A-Z]{0,30})');

/*
Объединение, предоставляющее отдельный вид обслуживания воздушного движения (ОВД).
ACC - Районное диспетчерское обслуживание
ADSU - полуавтоматическая система наблюдения за-воздушной обстановкой (службы УВД) , система ADS-B
ADVC - консультативный центр
ALPS - пост аварийного оповещения
AOF - офис службы аэронавигационной информации
APP - диспетчерский пункт управления заходом на посадку
APP_ARR - диспетчерский пункт управления заходом на посадку (прибытие)
APP_DEP - диспетчерский пункт управления заходом на посадку (вылет)
ARO - пункт сбора информации о полете
ATCC - центр управления воздушным движением, центр УВД
ATFMU
ATMU - служба управления воздушным движением
ATSU
BOF
BS
COM
FCST
FIC
GCA - служба захода на посадку по командам с земли
MET
MWO
NOF
OAC
PAR - служба радиолокатора точного захода на посадку
RAD
RAFC
RCC
RSC
SAR - поисково-спасательная служба
SMC
SMR
SRA
SSR - служба обзорного радиолокатора вторичной радиолокации
TAR
TWR
UAC
UDF
UIC
VDF
WAFC
ARTCC
FSS
TRACON
MIL
MILOPS

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeUnitType
*/

CREATE DOMAIN CodeUnitType AS VARCHAR(40)
CHECK (VALUE ~ '((ACC|ADSU|ADVC|ALPS|AOF|APP|APP_ARR|APP_DEP|ARO|ATCC|ATFMU|ATMU|ATSU|BOF|BS|COM|FCST|FIC|GCA|MET|MWO|NOF|OAC|PAR|RAD|RAFC|RCC|RSC|SAR|SMC|SRA|SSR|TAR|TWR|UAC|UDF|UIC|
|VDF|WAFC|ARTCC|FSS|TRACON|MIL|MILOPS)|OTHER: [A-Z]{0,30})');

-- Вид зависимости между объединением и связанным с ним объединением
-- OWNER - связанное объединение (RelatedUnit) - владелец объединения (Unit)
-- PROVIDER - объединение (Unit) пользуется обслуживание связанного объединения (RelatedUnit)
-- ALTERNATE - связанное объединение (RelatedUnit) предоставляет запасное (альтернативное) обслуживание взамен обслуживания текущего объединения
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeUnitDependencyType
CREATE DOMAIN CodeUnitDependencyType AS VARCHAR(40)
CHECK (VALUE ~ '(OWNER|PROVIDER|ALTERNATE|OTHER: [A-Z]{0,30})');

/*
Классификация служб эшелонирования полетов и наземного контроля
-- ACS - служба контроля территории маршрутных полетов
-- UAC - служба контроля верхней зоны полетов
-- OACS - служба контроля океанической зоны
-- APP - служба контроля зоны посадки (зоны прибытия и вылета)
-- TWR - башенная служба контроля аэродрома
-- ADVS - консультационная служба
-- EFAS - консультационная служба маршрутных полетов
CTAF - общая консультативная частота аэродромного обслуживания (только США)

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeServiceATCType
*/
CREATE DOMAIN CodeServiceATCType AS VARCHAR(40)
CHECK (VALUE ~ '((ACS|UAC|OACS|APP|TWR|ADVS|CTAF)|OTHER: [A-Z]{0,30})');

-- Тип ответственности, которую организация нест за аэронавигационный объект (например, за воздушное пространство)
-- OWN - у организации есть законные права на владение и право собственности на объект.
-- DLGT - организации назначили или поручили нести ответственности за объект.
-- AIS - организация ответственна за предоставление аэронавишационной информации на данном объекте.
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAuthorityType
CREATE DOMAIN CodeAuthorityType AS VARCHAR(40)
CHECK (VALUE ~ '(OWN|DLGT|AIS|OTHER: [A-Z]{0,30})');

/*
Типы служб навигационных средств
VOR - всенаправленное навигационное ОВЧ средство с угломерными возможностями
DME - дальномерное оборудование
NDB - ненаправленный радиомаяк
TACAN - всенаправленное навигационное средство УВЧ, позволяюшее определить пеленг и дальность
MKR - маркерный радиомаяк, МРМ
ILS - инструментальная система посадки по приборам (возможно наличие позывных на частоте курсового маяка)
ILS_DME - инструментальная система посадки по приборам с размещенной дальномерной системой DME
MLS - микроволновая система посадки
MLS_DME
VORTAC - совмещенные маяк VOR и стандартное УВЧ дальномерное обрудование системы TACAN
VOR_DME - совмещенное навигационное средство VOR и стандартное УВЧ дальномерное оборудование системы TACAN
NDB_DME
TLS
LOC - курсовой посадочный радиомаяк
LOC_DME
NDB_MKR
DF - (радио)пеленгатор
SDF - упрощенное средство направленного действия

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeNavaidServiceType
*/
CREATE DOMAIN CodeNavaidServiceType AS VARCHAR(40)
CHECK (VALUE ~
       '(VOR|DME|NDB|TACAN|MKR|ILS|ILS_DME|MLS|MLS_DME|VORTAC|VOR_DME|NDB_DME|TLS|LOC|LOC_DME|NDB_MKR|DF|OTHER: [A-Z]{0,30})');

-- Идентификатор РНС
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeNavaidDesignatorType
CREATE DOMAIN CodeNavaidDesignatorType AS VARCHAR(4)
CHECK (VALUE ~ '([A-Z]|\d)*');

-- Использование РНС:
-- TERMINAL - для использования в зоне терминала, для процедур приближения, посадки и вылета.
-- ENROUTE - маршрутные РНС
-- ALL - для любых целей
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeNavaidPurposeType
CREATE DOMAIN CodeNavaidPurposeType AS VARCHAR(40)
CHECK (VALUE ~ '(TERMINAL|ENROUTE|ALL|OTHER: [A-Z]{0,30})');

-- ...
-- I
-- II
-- III
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeSignalPerformanceILSType
CREATE DOMAIN CodeSignalPerformanceILSType AS VARCHAR(40)
CHECK (VALUE ~ '(I|II|III|OTHER: [A-Z]{0,30})');

-- A
-- B
-- C
-- D
-- E
-- T
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeCourseQualityILSType
CREATE DOMAIN CodeCourseQualityILSType AS VARCHAR(40)
CHECK (VALUE ~ '(A|B|C|D|E|T|OTHER: [A-Z]{0,30})');

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeIntegrityLevelILSType
CREATE DOMAIN CodeIntegrityLevelILSType AS VARCHAR(40)
CHECK (VALUE ~ '(1|2|3|4|OTHER: [A-Z]{0,30})');

/*
TWR - диспетчерская служба с аэродромной вышки
SMGCS - система контроля и управления движением транспорта на площади маневрирования
TAXI - служба разрешения рулежки (?)

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeServiceGroundControlType
*/
CREATE DOMAIN CodeServiceGroundControlType AS VARCHAR(40)
CHECK (VALUE ~ '((TWR|SMGCS|TAXI)|OTHER: [A-Z]{0,30})');

/*
DEICE - служба по защите от обледенения
HAND - служба обработки сообщений
HANGAR - служба укрытия (?)
REPAIR - ремонтная службы
REMOVE - вывоз непригодных воздухных суден

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAircraftGroundServiceType
*/
CREATE DOMAIN CodeAircraftGroundServiceType AS VARCHAR(40)
CHECK (VALUE ~ '((DEICE|HAND|HANGAR|REPAIR|REMOVE)|OTHER: [A-Z]{0,30})');

/*
Код, обозначающий систему измерения времени (например, UTC)

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeTimeReferenceType
 */
CREATE DOMAIN CodeTimeReferenceType AS VARCHAR(40)
CHECK (VALUE ~
       '((UTC|UTC-12|UTC-11|UTC-10|UTC-9|UTC-8|UTC-7|UTC-6|UTC-5|UTC-4|UTC-3|UTC-2|UTC-1|UTC+1|UTC+2|UTC+3|UTC+4|UTC+5|UTC+6|UTC+7|UTC+8|UTC+9|UTC+10|UTC+11|UTC+12|UTC+13|UTC+14)|OTHER: [A-Z]{0,30})');

CREATE DOMAIN DateMonthDayType AS VARCHAR(40)
CHECK (VALUE ~
       '(((0[1-9])|(1[0-9])|(2[0-9]))\-((0[1-9])|10|11|12))|(30\-(01|03|04|05|06|07|08|09|10|11|12))|(31\-(01|03|05|07|08|10|12))|SDLST|EDLST');

/*
Код, обозначающий определенный день (день недели, праздничные дни, рабочие дни и т.д.)
MON - понедельник
TUE - вторник
WED - среда
THU - четверг
FRI - пятница
SAT - суббота
SUN - воскресенье
WORK_DAY - рабочий день
BEF_WORK_DAY - день, предшествующий рабочему
AFT_WORK_DAY - день, следующий после рабочего
HOL - официальный день отдыха
BEF_HOL - день, предшествующий официальному праздничному дню
AFT_HOL - день, следующий после официального праздничного дня
ANY - любой день
BUSY_FRI - день объявленный как "занятая пятница" официальными властями, отвественными за предоставление аэронавигационной информации на обозначенной территории, чтобы ввести в действие особые меры управления двитжением.

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeDayType
 */
CREATE DOMAIN CodeDayType AS VARCHAR(40)
CHECK (VALUE ~
       '((MON|TUE|WED|THU|FRI|SAT|SUN|WORK_DAY|BEF_WORK_DAY|AFT_WORK_DAY|HOL|BEF_HOL|AFT_HOL|ANY|)|OTHER: [A-Z]{0,30})');

/*
Код, обозначающий событие (такое как рассвет или закат), которое указываеи на начало периода, описываемого в расписании.
SR - рассвет
SS - закат

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeTimeEventType
 */

CREATE DOMAIN CodeTimeEventType AS VARCHAR(40)
CHECK (VALUE ~ '((SR|SS)|OTHER: [A-Z]{0,30})');

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_UomDurationType
CREATE DOMAIN UomDurationType AS VARCHAR(40)
CHECK (VALUE ~ '((HR|MIN|SEC)|OTHER: [A-Z]{0,30})');
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDurationType
CREATE TYPE ValDurationType AS (
  value DECIMAL,
  unit  UomDurationType
);

/*
Код, показывающий, какое событие в списке событий по времени должно предшествовать остальным или идти после остальных.
EARLIEST - самое первое событие
LATEST - самое последнее

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeTimeEventCombinationType
 */
CREATE DOMAIN CodeTimeEventCombinationType AS VARCHAR(40)
CHECK (VALUE ~ '((EARLIEST|LATEST)|OTHER: [A-Z]{0,30})');

/*
Закодированное наименование обозначенной точки.

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeDesignatedPointDesignatorType
 */
CREATE DOMAIN CodeDesignatedPointDesignatorType AS VARCHAR(5)
CHECK (VALUE ~ '([A-Z]|\d)*');

/*
ICAO - 5-буквенный идентификатор названия
COORD - точка с идентификатором, производным от географических координат
CNF - Computer Navigation Fix - точка, используемая с целью обозначить навигационный путь в бортовой вычислительной машине (GPS, FMS).
  CNF включают в себя фиксированные дальномерные системы DME, начальные и конечные точки дуг DME, точки захода на посадку на GPS.
  Оборудование RNAV может создавать собственные точки, которые будут видны на дисплее, но которых нет в АИПах и на дисплеях диспетчеров ОВД. Эти точки создаются при активации из базы данных "наложенных" процедур SID, STAR и GPS-OVERLAY Approach.
DESIGNED - точка с наименованием в виде угла или расстояния, используемая как контрольная точка для процедуры проектирования, которая не публикается.
MTR  - точка, используемая в военных тренировочных путях.
TERMINAL - точка с 5-значным буквенно-цифровым наименованием, используемая как путевая точка в процедурах зональной навигации, но не имеющая 5-буквенника ИКАО.
BRG_DIST - точка с 5-значным буквенно-цифровым наименованием, составленным по правилам ARINC-424 для неименованных путевых точек.

https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeDesignatedPointType
 */
CREATE DOMAIN CodeDesignatedPointType AS VARCHAR(40)
CHECK (VALUE ~ '(ICAO|COORD|CNF|DESIGNED|MTR|TERMINAL|BRG_DIST)|OTHER: [A-Z]{0,30}');

/*
Код, указывающий тип азимутального оборудования: нормальное или обратное:
FWD - прямое
BWD - обратное
 */
CREATE DOMAIN CodeMLSAzimuthType AS VARCHAR(40)
CHECK (VALUE ~ 'FWD|BWD|OTHER: [A-Z]{0,30}');

--Код, указывающий канал, на котором работает микроволновая система посадки (от 500 до 699)
CREATE DOMAIN CodeMLSChannelType AS SMALLINT
CHECK (VALUE >= 500 AND VALUE <= 699);

/*
The particular spectrum characteristics or accuracy of Ultra High Frequency (UHF) Distance Measuring Equipment (DME), as a category.
Определенные спектральные характеристики или точность дальномерного оборудования дециметрового диапазона, как категории:

NARROW - характеристики узкого спектра
PRECISION
WIDE - широкоспектральные характеристики
 */
CREATE DOMAIN CodeDMEType AS VARCHAR(40)
CHECK (VALUE ~ 'NARROW|PRECISION|WIDE|OTHER: [A-Z]{0,30}');

-- Канал дальномерного оборудования (от 1 до 126 + индекс W,X,Y,Z)
CREATE DOMAIN CodeDMEChannelType AS VARCHAR(40)
CHECK (VALUE ~ '[0-9]{1,3}[W-Z]{1}|OTHER: [A-Z]{0,30}');

/*
Код, указывающий использование сигнала курсового посадочного радиомаяка (localizer) в секторе обратного направления.
Значения: YES, NO и RSTR (запрещено)
 */
CREATE DOMAIN CodeILSBackCourseType AS VARCHAR(40)
CHECK (VALUE ~ 'YES|NO|RSTR|OTHER: [A-Z]{0,30}');


/*
Код, указывающий класс маркерного радиомаяка:
FAN - маркерный радиомаяк с веерной диаграммой направленности антенны
LOW_PWR_FAN - маркерный радиомаяк с веерной диаграммой направленности антенны малой мощности
Z - Z-радиомаяк
BONES - маркерный радиомаяк в форме кости
 */
CREATE DOMAIN CodeMarkerBeaconSignalType AS VARCHAR(40)
CHECK (VALUE ~ 'FAN|LOW_PWR_FAN|Z|BONES|OTHER: [A-Z]{0,30}');

-- Последовательность точек и тире, соответствующих коду Морзе
CREATE DOMAIN CodeAuralMorseType AS VARCHAR(40)
CHECK (VALUE ~ '([\-\.]*)');

/*
Класс ненаправленного радиомаяка:
ENR - путевой ненаправленный радиомаяк
L - локатор - ненаправленный радиомаяк низкой мощности, используемые как помощь при финальном заходе (радиокомпас)
MAR - морской радиомаяк
 */
CREATE DOMAIN CodeNDBUsageType AS VARCHAR(40)
CHECK (VALUE ~ 'ENR|L|MAR|OTHER: [A-Z]{0,30}');

/*
Тип полосы частот:
U - очень высокие частоты
H - высокие частоты
M - средние частоты
 */
CREATE DOMAIN CodeEmissionBandType AS VARCHAR(40)
CHECK (VALUE ~ 'U|H|M|OTHER: [A-Z]{0,30}');

-- A code indicating the channel of a TACAN. Код, обозначающий канал TACAN.
CREATE DOMAIN CodeTACANChannelType AS VARCHAR(40)
CHECK (VALUE ~ '1X|	1Y|	2X|	2Y|	3X|	3Y|	4X|	4Y|	5X|	5Y|	6X|	6Y|	7X|	7Y|	8X|	8Y|	9X|	9Y|	10X|	10Y|	11X|	11Y|	12X|	12Y|	13X|	13Y|	14X|	14Y|	15X|	15Y|	16X|	16Y|	17X|	17Y|	17Z|	18X|	18W|	18Y|	18Z|
  19X|	19Y|	19Z|	20X|	20W|	20Y|	20Z|	21X|	21Y|	21Z|	22X|	22W|	22Y|	22Z|	23X|	23Y|	23Z|	24X|	24W|	24Y|	24Z|	25X|	25Y|	25Z|	26X|	26W|	26Y|	26Z|	27X|	27Y|	27Z|	28X|	28W|	28Y|	28Z|
  29X|	29Y|	29Z|	30X|	30W|	30Y|	30Z|	31X|	31Y|	31Z|	32X|	32W|	32Y|	32Z|	33X|	33Y|	33Z|	34X|	34W|	34Y|	34Z|	35X|	35Y|	35Z|	36X|	36W|	36Y|	36Z|	37X|	37Y|	37Z|	38X|	38W|	38Y|	38Z|
  39X|	39Y|	39Z|	40X|	40W|	40Y|	40Z|	41X|	41Y|	41Z|	42X|	42W|	42Y|	42Z|	43X|	43Y|	43Z|	44X|	44W|	44Y|	44Z|	45X|	45Y|	45Z|	46X|	46W|	46Y|	46Z|	47X|	47Y|	47Z|	48X|	48W|	48Y|	48Z|
  49X|	49Y|	49Z|	50X|	50W|	50Y|	50Z|	51X|	51Y|	51Z|	52X|	52W|	52Y|	52Z|	53X|	53Y|	53Z|	54X|	54W|	54Y|	54Z|	55X|	55Y|	55Z|	56X|	56W|	56Y|	56Z|	57X|	57Y|	58X|	58Y|	59X|	59Y|	60X|	60Y|
  61X|	61Y|	62X|	62Y|	63X|	63Y|	64X|	64Y|	65X|	65Y|	66X|	66Y|	67X|	67Y|	68X|	68Y|	69X|	69Y|	70X|	70Y|	71X|	71Y|	72X|	72Y|	73X|	73Y|	74X|	74Y|	75X|	75Y|	76X|	76Y|	77X|	77Y|	78X|	78Y|
  79X|	79Y|	80X|	80Y|	80Z|	81X|	81Y|	81Z|	82X|	82Y|	82Z|	83X|	83Y|	83Z|	84X|	84Y|	84Z|	85X|	85Y|	85Z|	86X|	86Y|	86Z|	87X|	87Y|	87Z|	88X|	88Y|	88Z|	89X|	89Y|	89Z|	90X|	90Y|	90Z|
  91X|	91Y|	91Z|	92X|	92Y|	92Z|	93X|	93Y|	93Z|	94X|	94Y|	94Z|	95X|	95Y|	95Z|	96X|	96Y|	96Z|	97X|	97Y|	97Z|	98X|	98Y|	98Z|	99X|	99Y|	99Z|	100X|	100Y|	100Z|	101X|	101Y|	101Z|	102X|	102Y|	102Z|
  103X|	103Y|	103Z|	104X|	104Y|	104Z|	105X|	105Y|	105Z|	106X|	106Y|	106Z|	107X|	107Y|	107Z|	108X|	108Y|	108Z|	109X|	109Y|	109Z|	110X|	110Y|	110Z|	111X|	111Y|	111Z|	112X|	112Y|	112Z|	113X|	113Y|	113Z|	114X|	114Y|	114Z|
  115X|	115Y|	115Z|	116X|	116Y|	116Z|	117X|	117Y|	117Z|	118X|	118Y|	118Z|	119X|	119Y|	119Z|	120X|	120Y|	121X|	121Y|	122X|	122Y|	123X|	123Y|	124X|	124Y|	125X|	125Y|	126X|	126Y|OTHER: [A-Z]{0,30}');

/*
A code indicating the type of path to the next point. For example, great circle, clockwise arc, counter clockwise arc, etc.
Тип пути до следующей точки. Например: дуга большого круга, дуга по часовой стрелке, дуга против часовой стрелки
VOR - стандартный курсовой всенаправленный радиомаяк ОВЧ-диапазона
DVOR - доплеровский курсовой всенаправленный радиомаяк ОВЧ-диапазона
VOT - испытательное оборудование VOR
*/
CREATE DOMAIN CodeVORType AS VARCHAR(40)
CHECK (VALUE ~ 'VOR|DVOR|VOT|OTHER: [A-Z]{0,30}');

/*
A code indicating the type of the North reference used. Используемый тип северного полюса.
TRUE - истинный
MAG - магнитный
GRID - направление линий север-юг сетки UTM, наложенной на топографические карты США или НАТО.
The direction of the north-south lines of the Universal Transverse Mercator (UTM) grid imposed on topographic maps by the United States and NATO.
https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeNorthReferenceType
 */
CREATE DOMAIN CodeNorthReferenceType AS VARCHAR(40)
CHECK (VALUE ~ 'TRUE|MAG|GRID|OTHER: [A-Z]{0,30}');

/*
Тип пространства, покрываемого препятствием:
AREA1 - ICAO Area 1: вся территория области (штата)
AREA2 - ICAO Area 2: терминальная зона управления
AREA3 - ICAO Area 3: зона аэродрома/вертодрома
AREA4 - ICAO Area 4: зона операций категории II и III
OLS - ICAO Annex 14 поверхность ограничения препятствия
FAR77 - FAA Regulations Part 77 Obstacle Limitation Surfaces
MANAGED - A 'virtual' area containing the VerticalStructures included in the data collection exercise, which do not qualify yet as Obstacles in any specific Area
 */
CREATE DOMAIN CodeObstacleAreaType AS VARCHAR(40)
CHECK (VALUE ~ 'AREA1|AREA2|AREA3|AREA4|OLS|FAR77|MANAGED|OTHER: [A-Z]{0,30}');

/*
40_TO_1	- 40 to 1 sloped surface.
72_TO_1	-	72 to 1 sloped surface.
MA	-	Missed approach area.
FINAL	-	Final approach area.
PT_ENTRY_AREA	-	Procedure turn entry area.
PRIMARY	-	Primary area.
SECONDARY	-	Secondary Area.
ZONE1
ZONE2
ZONE3
AREA1
AREA2
AREA3
TURN_INITIATION
TURN
DER	-	Departure End of Runway Area
 */
CREATE DOMAIN CodeObstacleAssessmentSurfaceType AS VARCHAR(40)
CHECK (VALUE ~
       '40_TO_1|72_TO_1|MA|PT_ENTRY_AREA|PRIMARY|SECONDARY|ZONE1|ZONE2|ZONE3|AREA1|AREA2|AREA3|TURN_INITIATION|TURN|DER|OTHER: [A-Z]{0,30}');

/*
AG_EQUIP - сельскохозяйственное оборудование
ANTENNA
ARCH - арка
BRIDGE - мост
BUILDING - строение
CABLE_CAR - вагон канатной дороги, фуникулёра
CATENARY - цепная линия (электрический провод)
COMPRESSED_AIR_SYSTEM - компонент системы воздуховода для сжатого воздуха
CONTROL_MONITORING_SYSTEM
CONTROL_TOWER - диспетчерская вышка
COOLING_TOWER - охлаждающая башня
CRANE - (грузо)подъёмный кран
DAM - дамба
DOME - купол
ELECTRICAL_EXIT_LIGHT - компоненты внешней электрической системы освещения, включая кабели, переключатели, приборы, трансформаторы и т.д. Не включают РНС
ELECTRICAL_SYSTEM - компоненты распределенной электрической системы, включая кабели, переключатели, приборы, двигатели, трансформаторы
ELEVATOR - лифт
FENCE - ограждение, забор
FUEL_SYSTEM - составляющие топливной распределительной системы, состоящие из трубопроводов, арматуры, насосов, цистерн и т.д.
GATE - проход - часть ограждения, которая может быть открыта для прохода через ограждение или наоброт закрыта.
GENERAL_UTILITY - компоненты энергосистемы общего пользования, являющиеся универсальными в использовании и в назначении и не принадлежат какой-то особой энергосистеме.
GRAIN_ELEVATOR - зерновой элеватор
HEAT_COOL_SYSTEM - составляющие распределенной системы охлождения и отопления, состоящие из труб, фурнитуры, арматуры и т.д.
INDUSTRIAL_SYSTEM - составляющие системы сбора отходов, состоящие из труб, фурнитуры, арматуры, резервуары и т.д.
LIGHTHOUSE - маяк
MONUMENT
NATURAL_GAS_SYSTEM - составляющие газораспределительной системы
NATURAL_HIGHPOINT - естественная командная высота
NAVAID - РНС
NUCLEAR_REACTOR - ядерный реактор
POLE - столб, шест, жердь
POWER_PLANT - электростанция
REFINERY - нефтеперегонный завод
RIG - нефтяная вышка
SALTWATER_SYSTEM - составляющие системы сбора соленой воды
SIGN - вывеска
SPIRE - шпиль
STACK - дымовая труба
STADIUM - стадион
STORM_SYSTEM - состсавляющие дренажной штормовой системы сбора
TANK - резервуар
TETHERED_BALLOON - привязной аэростат
TOWER - башня
TRAMWAY - трамвайная линия
TRANSMISSION_LINE - линия передачи
TREE - дерево
URBAN - городская зона
VEGETATION - растительность
WALL - стена
WASTEWATER_SYSTEM - составляющие системы сбора сточной воды
WATER_SYSTEM - составляющие системы водоснабжения
WATER_TOWER - водонапорная башня
WINDMILL - ветряк, ветродвигатель
WINDMILL_FARMS - ветроэнергоцентр
 */
CREATE DOMAIN CodeVerticalStructureType AS VARCHAR(40)
CHECK (VALUE ~ 'AG_EQUIP|ANTENNA|ARCH|BRIDGE|BUILDING|CABLE_CAR|CATENARY|COMPRESSED_AIR_SYSTEM|CONTROL_MONITORING_SYSTEM|
CONTROL_TOWER|COOLING_TOWER|CRANE|DAM|DOME|ELECTRICAL_EXIT_LIGHT|ELECTRICAL_SYSTEM|ELEVATOR|FENCE|FUEL_SYSTEM|GATE|
GENERAL_UTILITY|GRAIN_ELEVATOR|HEAT_COOL_SYSTEM|INDUSTRIAL_SYSTEM|LIGHTHOUSE|MONUMENT|NATURAL_GAS_SYSTEM|NATURAL_HIGHPOINT|
NAVAID|NUCLEAR_REACTOR|POLE|POWER_PLANT|REFINERY|RIG|SALTWATER_SYSTEM|SIGN|SPIRE|STACK|STADIUM|STORM_SYSTEM|TANK|
TETHERED_BALLOON|TOWER|TRAMWAY|TRANSMISSION_LINE|TREE|URBAN|VEGETATION|WALL|WASTEWATER_SYSTEM|WATER_SYSTEM|WATER_TOWER|
WINDMILL|WINDMILL_FARMS|OTHER: [A-Z]{0,40}');

/*
Статус постройки:
IN_CONSTRUCTION - в строительстве
COMPLETED - строительство завершено
DEMOLITION_PLANNED - планируется снов
IN_DEMOLITION - в состоянии ликвидации (сноса)
 */
CREATE DOMAIN CodeStatusConstructionType AS VARCHAR(40)
CHECK (VALUE ~ 'IN_CONSTRUCTION|COMPLETED|DEMOLITION_PLANNED|IN_DEMOLITION|OTHER: [A-Z]{0,30}');

/*
Тип и структура разметки (маркировки) вертикальной структуры:
MONOCOLOUR - одноцветная
CHEQUERED - клетчатая текстура
HBANDS - горизонтальное обрамление (полосы)
VBANDS - вертикальное обрамление (полосы)
FLAG - клетчатый флаг
MARKERS - маркировочный знаки, прикрепленные к кабелям или электрическим проводам
 */
CREATE DOMAIN CodeVerticalStructureMarkingType AS VARCHAR(40)
CHECK (VALUE ~ 'MONOCOLOUR|CHEQUERED|HBANDS|VBANDS|FLAG|MARKERS|OTHER: [A-Z]{0,30}');

/*
ADOBE_BRICK - кирпич из глины и соломы, высушенный на солнце, а не в огненной печи (как обычные кирпичи).
ALUMINIUM
BRICK
CONCRETE
FIBREGLASS - стекловолокно
GLASS
IRON - железо
MASONRY - каменная кладка
METAL
MUD
PLANT
PRESTRESSED_CONCRETE
REINFORCED_CONCRETE
SOD - дёрн, земля
STEEL
STONE
TREATED_TIMBER - пропитанная древесина
WOOD
 */
CREATE DOMAIN CodeVerticalStructureMaterialType AS VARCHAR(40)
CHECK (VALUE ~ 'ADOBE_BRICK|ALUMINIUM|BRICK|CONCRETE|FIBREGLASS|GLASS|IRON|MASONRY|METAL|MUD|PLANT|PRESTRESSED_CONCRETE|
REINFORCED_CONCRETE|SOD|STEEL|STONE|TREATED_TIMBER|WOOD|OTHER: [A-Z]{0,30}');

CREATE DOMAIN TimesliceInterpretationType AS VARCHAR(40)
CHECK (VALUE ~ 'BASELINE|PERMDELTA|SNAPSHOT|TEMPDELTA|OTHER: [A-Z]{0,30}');

DROP SEQUENCE IF EXISTS auto_id_timesheet, auto_id_city, auto_id_point, auto_id_significant_point, auto_id_curve, auto_id_surface, auto_id_altimeter_source_status,
auto_id_surface_contamination, auto_id_surface_arp_availability, auto_id_surface_characteristics, auto_id_cartography_label, auto_id_cartography_label_CTA, auto_id_cartography_label_FIR,
auto_id_unit_dependency, auto_id_callsign, auto_id_contact_information, auto_id_postal_address, auto_id_online_contact,
auto_id_segment_point, auto_id_route_portion, auto_id_airspace_layer_class, auto_id_airspace_layer,
auto_id_airspace_volume, auto_id_telephone_contact, auto_ground_lighting_availability, auto_id_properties_with_schedule,
auto_id_timeslice, auto_id_cartography_label_airspacearea, auto_id_cartography_label_tpt, auto_id_cartography_label_arp,
auto_id_cartography_label_nav, auto_id_cartography_label_draprarsa, auto_id_cartography_label_mvl CASCADE;

CREATE SEQUENCE auto_id_properties_with_schedule;
CREATE SEQUENCE auto_id_timesheet;
CREATE SEQUENCE auto_id_city;
CREATE SEQUENCE auto_id_point;
CREATE SEQUENCE auto_id_significant_point;
CREATE SEQUENCE auto_id_curve;
CREATE SEQUENCE auto_id_surface;
CREATE SEQUENCE auto_id_altimeter_source_status;
CREATE SEQUENCE auto_id_surface_contamination;
CREATE SEQUENCE auto_id_surface_arp_availability;
CREATE SEQUENCE auto_id_surface_characteristics;
CREATE SEQUENCE auto_id_cartography_label;
CREATE SEQUENCE auto_id_cartography_label_CTA;
CREATE SEQUENCE auto_id_cartography_label_fir;
CREATE SEQUENCE auto_id_cartography_label_arp;
CREATE SEQUENCE auto_id_cartography_label_tpt;
CREATE SEQUENCE auto_id_cartography_label_nav;
CREATE SEQUENCE auto_id_cartography_label_mvl;
CREATE SEQUENCE auto_id_cartography_label_draprarsa;
CREATE SEQUENCE auto_id_cartography_label_airspacearea;
CREATE SEQUENCE auto_id_unit_dependency;
CREATE SEQUENCE auto_id_callsign;
CREATE SEQUENCE auto_id_contact_information;
CREATE SEQUENCE auto_id_postal_address;
CREATE SEQUENCE auto_id_online_contact;
CREATE SEQUENCE auto_id_segment_point;
CREATE SEQUENCE auto_id_route_portion;
CREATE SEQUENCE auto_id_airspace_layer_class;
CREATE SEQUENCE auto_id_airspace_layer;
CREATE SEQUENCE auto_id_airspace_volume;
CREATE SEQUENCE auto_id_telephone_contact;
CREATE SEQUENCE auto_ground_lighting_availability;
CREATE SEQUENCE auto_id_timeslice;


CREATE TABLE PropertiesWithSchedule
(
  id INTEGER PRIMARY KEY DEFAULT nextval('auto_id_properties_with_schedule')
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Timesheet
CREATE TABLE Timesheet
(
  id                       INTEGER PRIMARY KEY DEFAULT nextval('auto_id_timesheet'),
  timeReference            CodeTimeReferenceType,
  startDate                DateMonthDayType,
  endDate                  DateMonthDayType,
  day                      CodeDayType,
  dayTil                   CodeDayType,
  startTime                TimeType,
  startEvent               CodeTimeEventType,
  startTimeRelativeEvent   ValDurationType,
  startEventInterpretation CodeTimeEventCombinationType,
  endTime                  TimeType,
  endEvent                 CodeTimeEventType,
  endTimeRelativeEvent     ValDurationType,
  endEventInterpretation   CodeTimeEventCombinationType,
  daylightSavingAdjust     CodeYesNoType,
  excluded                 CodeYesNoType,
  idPropertiesWithSchedule INTEGER REFERENCES PropertiesWithSchedule (id)
);

CREATE TABLE TimeSlice
(
  id INTEGER PRIMARY KEY DEFAULT nextval('auto_id_timeslice'),
  validTimeBegin DateType,
  validTimeEnd DateType,
  interpretation TimesliceInterpretationType,
  sequenceNumber NoNumberType,
  correctionNumber NoNumberType
);

--  https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_OrganisationAuthority

CREATE TABLE OrganisationAuthority
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE OrganisationAuthorityTimeSlice
(
  idTimeSlice         INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                id REFERENCES OrganisationAuthority (uuid),
  name       TextNameType,
  designator CodeOrganisationDesignatorType,
  type       CodeOrganisationType,
  military   CodeMilitaryOperationsType
);

CREATE TABLE OrganisationAuthority_PropertiesWithSchedule
(
  uuidOrganisationAuthority id REFERENCES OrganisationAuthority (uuid),
  idPropertiesWithSchedule  INTEGER REFERENCES PropertiesWithSchedule (id)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Point/
CREATE TABLE Point
(
  id                 INTEGER PRIMARY KEY DEFAULT nextval('auto_id_point'),
  latitude           latitude,
  longitude          longitude,
  srid               INTEGER REFERENCES spatial_ref_sys (srid),
  horizontalAccuracy ValDistanceType,
  magneticVariation  ValMagneticVariationType,
  geom               GEOMETRY(POINT, 4326)
);

--  https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedPoint
CREATE TABLE ElevatedPoint
(
  id               INTEGER PRIMARY KEY REFERENCES Point (id) ON DELETE CASCADE ON UPDATE CASCADE,
  elevation        ValDistanceVerticalType,
  geoidUndulation  ValDistanceSignedType,
  verticalDatum    CodeVerticalDatumType,
  verticalAccuracy ValDistanceType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Curve
CREATE TABLE Curve
(
  id                 INTEGER PRIMARY KEY DEFAULT nextval('auto_id_curve'),
  latitude           latitude,
  longitude          longitude,
  coord              VARCHAR,
  srid               INTEGER REFERENCES spatial_ref_sys (srid),
  horizontalAccuracy ValDistanceType,
  geom               GEOMETRY(LINESTRING, 4326)
);

--  https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedCurve
CREATE TABLE ElevatedCurve
(
  id               INTEGER PRIMARY KEY REFERENCES Curve (id) ON DELETE CASCADE ON UPDATE CASCADE,
  elevation        ValDistanceVerticalType,
  geoidUndulation  ValDistanceSignedType,
  verticalDatum    CodeVerticalDatumType,
  verticalAccuracy ValDistanceType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Surface
CREATE TABLE Surface
(
  id                 INTEGER PRIMARY KEY DEFAULT nextval('auto_id_surface'),
  horizontalAccuracy ValDistanceType,
  latitude           latitude,
  longitude          longitude,
  coord              VARCHAR,
  srid               INTEGER REFERENCES spatial_ref_sys (srid),
  geom               GEOMETRY(POLYGON, 4326)
);

--
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedSurface
CREATE TABLE ElevatedSurface
(
  id               INTEGER NOT NULL PRIMARY KEY REFERENCES Surface (id),
  elevation        ValDistanceVerticalType,
  geoidUndulation  ValDistanceSignedType,
  verticalDatum    CodeVerticalDatumType,
  verticalAccuracy ValDistanceType
);


-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliport
CREATE TABLE AirportHeliport
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4(),
  _transasID                  VARCHAR(20)
);
CREATE TABLE AirportHeliportTimeSlice
(
  idTimeSlice                 INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                        id REFERENCES AirportHeliport (uuid),
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
  idElevatedPoint             INTEGER REFERENCES ElevatedPoint (id) ON DELETE CASCADE ON UPDATE CASCADE,
  idElevatedSurface           INTEGER REFERENCES ElevatedSurface (id)
);

--  https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_City
CREATE TABLE City
(
  uuid   id PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TextNameType
);
CREATE TABLE AirportHeliportCity
(
  uuidarphlp id REFERENCES AirportHeliport (uuid),
  uuidCity              id REFERENCES City (uuid)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SurveyControlPoint
CREATE TABLE SurveyControlPoint
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE SurveyControlPointTimeSlice
(
  idTimeSlice         INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                id REFERENCES SurveyControlPoint (uuid),
  uuidarphlp id REFERENCES AirportHeliport (uuid),
  idElevatedPoint     INTEGER NOT NULL REFERENCES Point (id),
  designator          TextNameType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHotSpot
CREATE TABLE AirportHotSpot
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE AirportHotSpotTimeSlice
(
  idTimeSlice         INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                id REFERENCES AirportHotSpot (uuid),
  idElevatedSurface   INTEGER NOT NULL REFERENCES Surface (id),
  uuidarphlp id REFERENCES AirportHeliport (uuid),
  designator          TextDesignatorType,
  instruction         TextInstructionType
);

--  https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AltimeterSource
CREATE TABLE AltimeterSource
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE AltimeterSourceTimeSlice
(
  idTimeSlice         INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                id REFERENCES AltimeterSource (uuid),
  isRemote  CodeYesNoType,
  isPrimary CodeYesNoType
);

CREATE TABLE AltimeterSource_AirportHeliport
(
  uuidAltimeterSource id REFERENCES AltimeterSource (uuid),
  uuidarphlp id REFERENCES AirportHeliport (uuid)
);

--  https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AltimeterSourceStatus
CREATE TABLE AltimeterSourceStatus
(
  id                  INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_id_altimeter_source_status'),
  uuidAltimeterSource id REFERENCES AltimeterSource (uuid),
  operationalStatus   CodeStatusOperationsType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SurfaceContamination
CREATE TABLE SurfaceContamination
(
  id                    INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_id_surface_contamination'),
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

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliportContamination
CREATE TABLE AirportHeliportContamination
(
  id                  INTEGER NOT NULL PRIMARY KEY REFERENCES SurfaceContamination (id),
  uuidarphlp id REFERENCES AirportHeliport (uuid)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportHeliportAvailability
CREATE TABLE AirportHeliportAvailability
(
  id                  INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_id_surface_arp_availability'),
  uuidarphlp id REFERENCES AirportHeliport (uuid),
  operationalStatus   CodeStatusAirportType,
  warning             CodeAirportWarningType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SurfaceCharacteristics
CREATE TABLE SurfaceCharacteristics
(
  id                  INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_id_surface_characteristics'),
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

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Runway
CREATE TABLE Runway
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE RunwayTimeSlice
(
  idTimeSlice         INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                id REFERENCES Runway (uuid),
  uuidarphlp      id REFERENCES AirportHeliport (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  idSurfaceCharacteristics INTEGER REFERENCES SurfaceCharacteristics (id),
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

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RunwayContamination
CREATE TABLE RunwayContamination
(
  id                     INTEGER NOT NULL PRIMARY KEY REFERENCES SurfaceContamination (id),
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

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RunwaySectionContamination
CREATE TABLE RunwaySectionContamination
(
  id         INTEGER NOT NULL PRIMARY KEY REFERENCES SurfaceContamination (id),
  uuidRunway id REFERENCES Runway (uuid),
  section    CodeRunwaySectionType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RunwayDirection
CREATE TABLE RunwayDirection
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE RunwayDirectionTimeSlice
(
  idTimeSlice         INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                      id REFERENCES RunwayDirection (uuid),
  uuidRunway                id REFERENCES Runway (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
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

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_GroundLightSystemhttps://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_GroundLightSystem
CREATE TABLE GroundLightSystem
(
  uuid                        id NOT NULL PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE GroundLightSystemTimeSlice
(
  idTimeSlice         INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                id NOT NULL REFERENCES GroundLightSystem (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  emergencyLighting CodeYesNoType,
  intensityLevel    CodeLightIntensityType,
  colour            CodeColourType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RunwayDirectionLightSystem
CREATE TABLE RunwayDirectionLightSystem
(
  uuid  id PRIMARY KEY REFERENCES GroundLightSystem (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE RunwayDirectionLightSystemTimeSlice
(
  idTimeSlice         INTEGER NOT NULL PRIMARY KEY REFERENCES GroundLightSystemTimeSlice (idTimeSlice),
  uuid  id REFERENCES RunwayDirectionLightSystem (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  uuidRunwayDirection id REFERENCES RunwayDirection (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  position            CodeRunwaySectionType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_GroundLightingAvailability
CREATE TABLE GroundLightingAvailability
(
  id                    INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_ground_lighting_availability'),
  uuidGroundLightSystem id REFERENCES GroundLightSystem (uuid),
  operationalStatus     CodeStatusOperationsType
);

CREATE TABLE CartographyLabelARP
(
  id INTEGER NOT NULL PRIMARY KEY  DEFAULT nextval('auto_id_cartography_label_arp'),
  longitude                longitude,
  latitude                latitude,
  longitude2mln                longitude,
  latitude2mln                latitude,
  nav_info character varying(100),
  coordlbl character varying(100),
  map character varying(20),
  map2mln character varying(20),
  size integer,
  srid                INTEGER REFERENCES spatial_ref_sys (srid),
  uuidarphlp id REFERENCES AirportHeliport (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  geom                GEOMETRY(POINT, 4326)
);


-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Unit
CREATE TABLE Unit
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE UnitTimeSlice
(
  idTimeSlice         INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                id REFERENCES Unit (uuid),
  name                      TextNameType,
  type                      CodeUnitType,
  compliantICAO             CodeYesNoType,
  designator                CodeOrganisationDesignatorType,
  military                  CodeMilitaryOperationsType,
  idElevatedPoint           INTEGER REFERENCES ElevatedPoint (id) ON DELETE CASCADE ON UPDATE CASCADE,
  uuidarphlp       id REFERENCES AirportHeliport (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  uuidOrganisationAuthority id REFERENCES OrganisationAuthority (uuid)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_UnitDependency
CREATE TABLE UnitDependency
(
  id              INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_id_unit_dependency'),
  uuidUnit        id REFERENCES Unit (uuid),
  uuidRelatedUnit id REFERENCES Unit (uuid),
  type            CodeUnitDependencyType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Service
CREATE TABLE Service
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE ServiceTimeSlice
(
  idTimeSlice         INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                id REFERENCES Service (uuid),
  flightOperations CodeFlightDestinationType,
  rank             CodeFacilityRankingType,
  compliantICAO    CodeYesNoType,
  name             TextNameType,
  idElevatedPoint  INTEGER REFERENCES ElevatedPoint (id) ON DELETE CASCADE ON UPDATE CASCADE,
  uuidUnit         id REFERENCES Unit (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_CallsignDetail
CREATE TABLE CallsignDetail
(
  id          INTEGER PRIMARY KEY DEFAULT nextval('auto_id_callsign'),
  callSign    TextNameType,
  language    CodeLanguageType,
  uuidService id REFERENCES Service (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ContactInformation
CREATE TABLE ContactInformation
(
  id                        INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_id_contact_information'),
  uuidarphlp       id REFERENCES AirportHeliport (uuid),
  uuidOrganisationAuthority id REFERENCES OrganisationAuthority (uuid),
  uuidUnit                  id REFERENCES Unit (uuid),
  uuidService               id REFERENCES Service (uuid),
  name                      TextNameType,
  title                     TextNameType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_PostalAddress
CREATE TABLE PostalAddress
(
  id                 INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_id_postal_address'),
  deliveryPoint      TextAddressType,
  city               TextNameType,
  administrativeArea TextNameType,
  postalCode         TextNameType,
  country            TextNameType
);

CREATE TABLE ContactInformationPostalAddress
(
  idContactInformation INTEGER NOT NULL REFERENCES ContactInformation (id),
  idPostalAddress      INTEGER NOT NULL REFERENCES PostalAddress (id)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_OnlineContact
CREATE TABLE OnlineContact
(
  id       INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_id_online_contact'),
  network  CodeTelecomNetworkType,
  linkage  TextAddressType,
  protocol TextNameType,
  eMail    TextAddressType
);

CREATE TABLE ContactInformationOnlineContact
(
  idContactInformation INTEGER NOT NULL REFERENCES ContactInformation (id),
  idOnlineContact      INTEGER NOT NULL REFERENCES OnlineContact (id)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_TelephoneContact
CREATE TABLE TelephoneContact
(
  id        INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_id_telephone_contact'),
  voice     TextPhoneType,
  facsimile TextPhoneType
);

CREATE TABLE ContactInformationTelephoneContact
(
  idContactInformation INTEGER NOT NULL REFERENCES ContactInformation (id),
  idTelephoneContact   INTEGER NOT NULL REFERENCES TelephoneContact (id)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RadioCommunicationChannel
CREATE TABLE RadioCommunicationChannel
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE RadioCommunicationChannelTimeSlice
(
  idTimeSlice           INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                  id REFERENCES RadioCommunicationChannel (uuid),
  mode                  CodeCommunicationModeType,
  rank                  CodeFacilityRankingType,
  frequencyTransmission ValFrequencyType,
  frequencyReception    ValFrequencyType,
  channel               CodeCommunicationChannelType,
  logon                 TextDesignatorType,
  emissionType          CodeRadioEmissionType,
  selectiveCall         CodeYesNoType,
  flightChecked         CodeYesNoType,
  trafficDirection      CodeCommunicationDirectionType,
  idElevatedPoint       INTEGER REFERENCES ElevatedPoint (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Service_RadioCommunicationChannel
(
  uuidService                   id REFERENCES Service (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  uuidRadioCommunicationChannel id REFERENCES RadioCommunicationChannel (uuid)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirTrafficManagementService
CREATE TABLE AirTrafficManagementService
(
  uuid id PRIMARY KEY REFERENCES Service (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE AirTrafficManagementServiceTimeSlice
(
  idTimeSlice   INTEGER NOT NULL PRIMARY KEY REFERENCES ServiceTimeSlice (idTimeSlice),
  uuid                id REFERENCES AirTrafficManagementService (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  type CodeServiceATFMType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirportGroundService
CREATE TABLE AirportGroundService
(
  uuid id PRIMARY KEY REFERENCES Service (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE AirportGroundServiceTimeSlice
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES ServiceTimeSlice (idTimeSlice),
  uuid        id REFERENCES AirportGroundService (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AircraftGroundService
CREATE TABLE AircraftGroundService
(
  idTimeSlice   INTEGER NOT NULL PRIMARY KEY REFERENCES AirportGroundServiceTimeSlice (idTimeSlice),
  uuid id REFERENCES AirportGroundService (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  type                     CodeAircraftGroundServiceType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_InformationService
CREATE TABLE InformationService
(
  uuid id PRIMARY KEY REFERENCES Service (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE InformationServiceTimeSlice
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES ServiceTimeSlice (idTimeSlice),
  uuid        id REFERENCES InformationService (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  type     CodeServiceInformationType,
  voice    CodeYesNoType,
  dataLink CodeYesNoType,
  recorded CodeYesNoType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SearchRescueService
CREATE TABLE SearchRescueService
(
  uuid id PRIMARY KEY REFERENCES Service (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE SearchRescueServiceTimeSlice
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES ServiceTimeSlice (idTimeSlice),
  uuid        id REFERENCES SearchRescueService (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  type CodeServiceSARType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_TrafficSeparationService
CREATE TABLE TrafficSeparationService
(
  uuid id PRIMARY KEY REFERENCES Service (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE TrafficSeparationServiceTimeSlice
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES ServiceTimeSlice (idTimeSlice),
  uuid        id REFERENCES TrafficSeparationService (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  radarAssisted   CodeYesNoType,
  dataLinkEnabled CodeYesNoType,
  dataLinkChannel CodeCommunicationChannelType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirTrafficControlService
CREATE TABLE AirTrafficControlService
(
  uuid        id PRIMARY KEY REFERENCES TrafficSeparationService (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE AirTrafficControlServiceTimeSlice
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES TrafficSeparationServiceTimeSlice (idTimeSlice),
  uuid        id REFERENCES TrafficSeparationService (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  type CodeServiceATCType
);

-- https://extranet.eurocontrol.int/redirect/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_GroundTrafficControlService
CREATE TABLE GroundTrafficControlService
(
  uuid        id PRIMARY KEY REFERENCES TrafficSeparationService (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE GroundTrafficControlServiceTimeSlice
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES TrafficSeparationServiceTimeSlice (idTimeSlice),
  uuid        id REFERENCES TrafficSeparationService (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  type CodeServiceGroundControlType
);

--
CREATE TABLE AirportHeliport_InformationService
(
  uuidarphlp    id REFERENCES AirportHeliport (uuid),
  uuidInformationService id REFERENCES InformationService (uuid)
);

--
CREATE TABLE AirportHeliport_AirportGroundService
(
  uuidarphlp      id REFERENCES AirportHeliport (uuid),
  uuidAirportGroundService id REFERENCES AirportGroundService (uuid)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_DesignatedPoint
CREATE TABLE DesignatedPoint
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4(),
  _transasID                  VARCHAR(20)
);
CREATE TABLE DesignatedPointTimeSlice
(
  idTimeSlice                 INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                        id REFERENCES DesignatedPoint (uuid),
  designator CodeDesignatedPointDesignatorType,
  type       CodeDesignatedPointType,
  name       TextNameType,
  idPoint    INTEGER REFERENCES Point (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE CartographyLabelTPMTPT
(
  id INTEGER NOT NULL PRIMARY KEY  DEFAULT nextval('auto_id_cartography_label_tpt'),
  longitude longitude,
  latitude latitude,
  map character varying(20),
  longitude2mln longitude,
  latitude2mln latitude,
  map2mln character varying(20),
  footnote character varying(5),
  longitudefn longitude,
  latitudefn latitude,
  coordlbl character varying(100),
  size integer,
  alignment character varying(5),
  srid INTEGER REFERENCES spatial_ref_sys (srid),
  uuiddsnpnt id REFERENCES DesignatedPoint (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  geom GEOMETRY(POINT, 4326)
);


-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Route
CREATE TABLE Route
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4(),
  _transasID                  VARCHAR(20)
);
CREATE TABLE RouteTimeSlice
(
  idTimeSlice                 INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                        id REFERENCES Route (uuid),
  designatorPrefix          CodeRouteDesignatorPrefixType,
  designatorSecondLetter    CodeRouteDesignatorLetterType,
  designatorNumber          NoNumberType,
  multipleIdentifier        CodeUpperAlphaType,
  locationDesignator        TextDesignatorType,
  name                      TextNameType,
  type                      CodeRouteType,
  flightRule                CodeFlightRuleType,
  internationalUse          CodeRouteOriginType,
  militaryUse               CodeMilitaryStatusType,
  militaryTrainingType      CodeMilitaryTrainingType,
  uuidOrganisationAuthority id REFERENCES OrganisationAuthority (uuid)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Airspace
CREATE TABLE Airspace
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4(),
  _transasID                  VARCHAR(20)
);
CREATE TABLE AirspaceTimeSlice
(
  idTimeSlice          INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                 id REFERENCES Airspace (uuid),
  type                 CodeAirspaceType,
  designator           CodeAirspaceDesignatorType,
  localType            TextNameType,
  name                 TextNameType,
  designatorICAO       CodeYesNoType,
  controlType          CodeMilitaryOperationsType,
  upperLowerSeparation ValFLType,
  uuidRoute            id REFERENCES Route (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE CartographyLabelFIR
(
  id INTEGER NOT NULL PRIMARY KEY  DEFAULT nextval('auto_id_cartography_label_fir'),
  longitude         longitude,
  latitude         latitude,
  inform character varying(254),
  time character varying(254),
  type character varying(8),
  classfir character varying(254),
  layerpos character varying(254),
  map character varying(20),
  uuidairspc id REFERENCES Airspace (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  srid         INTEGER REFERENCES spatial_ref_sys (srid),
  geom         GEOMETRY(POINT, 4326)
);

CREATE TABLE CartographyLabelAirspaceArea
(
  id INTEGER NOT NULL PRIMARY KEY  DEFAULT nextval('auto_id_cartography_label_airspacearea'),
  longitude longitude,
  latitude latitude,
  longitude2mln longitude,
  latitude2mln latitude,
  longitudefn longitude,
  latitudefn latitude,
  footnote character varying(5),
  srid INTEGER REFERENCES spatial_ref_sys (srid),
  index INTEGER,
  layerpos character varying(254),
  map character varying(20),
  map2mln character varying(20),
  uuidairspc id REFERENCES Airspace (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  geom GEOMETRY(POINT, 4326)
);

CREATE TABLE CartographyLabelDraPraRsa
(
  id INTEGER NOT NULL PRIMARY KEY  DEFAULT nextval('auto_id_cartography_label_draprarsa'),
  longitude longitude,
  latitude latitude,
  longitude2mln longitude,
  latitude2mln latitude,
  longitudefn longitude,
  latitudefn latitude,
  footnote character varying(5),
  size integer,
  srid INTEGER REFERENCES spatial_ref_sys (srid),
  uuidairspc id REFERENCES Airspace (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  map character varying(20),
  map2mln character varying(20),
  geom GEOMETRY(POINT, 4326)
);


CREATE TABLE Airspace_AirTrafficManagementService
(
  uuidairspc                    id REFERENCES Airspace (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  uuidAirTrafficManagementService id REFERENCES AirTrafficManagementService (uuid)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirspaceActivation
CREATE TABLE AirspaceActivation
(
  id           INTEGER PRIMARY KEY REFERENCES PropertiesWithSchedule (id) ON DELETE CASCADE ON UPDATE CASCADE,
  activity     CodeAirspaceActivityType,
  status       CodeStatusAirspaceType,
  uuidairspc id REFERENCES Airspace (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE AirspaceActivation_OrganisationAuthority
(
  uuidOrganisationAuthority id REFERENCES OrganisationAuthority (uuid),
  idAirspaceActivation      INTEGER NOT NULL REFERENCES AirspaceActivation (id)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirspaceLayerClass
CREATE TABLE AirspaceLayerClass
(
  id             INTEGER PRIMARY KEY DEFAULT nextval('auto_id_airspace_layer_class'),
  classification CodeAirspaceClassificationType,
  uuidairspc   id REFERENCES Airspace (uuid)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirspaceLayer
CREATE TABLE AirspaceLayer
(
  id                     INTEGER PRIMARY KEY DEFAULT nextval('auto_id_airspace_layer'),
  upperLimit             ValDistanceVerticalType,
  upperLimitReference    CodeVerticalReferenceType,
  lowerLimit             ValDistanceVerticalType,
  lowerLimitReference    CodeVerticalReferenceType,
  altitudeInterpretation CodeAltitudeUseType,
  idAirspaceLayerClass   INTEGER REFERENCES AirspaceLayerClass (id),
  idAirspaceActivation   INTEGER REFERENCES AirspaceActivation (id)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirspaceVolume
CREATE TABLE AirspaceVolume
(
  id                    INTEGER PRIMARY KEY DEFAULT nextval('auto_id_airspace_volume'),
  upperLimit            ValDistanceVerticalType,
  upperLimitReference   CodeVerticalReferenceType,
  maximumLimit          ValDistanceVerticalType,
  maximumLimitReference CodeVerticalReferenceType,
  lowerLimit            ValDistanceVerticalType,
  lowerLimitReference   CodeVerticalReferenceType,
  minimumLimit          ValDistanceVerticalType,
  minimumLimitReference CodeVerticalReferenceType,
  width                 ValDistanceType,
  idSurface             INTEGER REFERENCES Surface (id),
  idCurve               INTEGER REFERENCES Curve (id),
  uuidairspc            id REFERENCES Airspace (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AuthorityForAirspace
CREATE TABLE AuthorityForAirspace
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE AuthorityForAirspaceTimeSlice
(
  idTimeSlice                 INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                        id REFERENCES AuthorityForAirspace (uuid),
  type                      CodeAuthorityType,
  uuidOrganisationAuthority id REFERENCES OrganisationAuthority (uuid),
  uuidairspc              id REFERENCES Airspace (uuid)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Navaid
CREATE TABLE Navaid
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4(),
  _transasID                  VARCHAR(20)
);
CREATE TABLE NavaidTimeSlice
(
  idTimeSlice                 INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                        id REFERENCES Navaid (uuid),
  type              CodeNavaidServiceType,
  designator        CodeNavaidDesignatorType,
  name              TextNameType,
  flightChecked     CodeYesNoType,
  purpose           CodeNavaidPurposeType,
  signalPerformance CodeSignalPerformanceILSType,
  courseQuality     CodeCourseQualityILSType,
  integrityLevel    CodeIntegrityLevelILSType,
  idElevatedPoint   INTEGER REFERENCES ElevatedPoint (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Таблица подписей РНС
CREATE TABLE CartographyLabelNAV
(
  id INTEGER NOT NULL PRIMARY KEY  DEFAULT nextval('auto_id_cartography_label_nav'),
  longitude                longitude,
  latitude                latitude,
  longitude2mln                longitude,
  latitude2mln                latitude,
  size integer,
  map character varying(20),
  map2mln character varying(20),
  coordlbl character varying(100),
  srid                INTEGER REFERENCES spatial_ref_sys (srid),
  uuidnavaid id REFERENCES Navaid (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  text  character varying(100),
  geom                GEOMETRY(POINT, 4326)
);

-- Связующая таблица для реализации связи многие-ко-многим таблиц аэродромов и РНС
CREATE TABLE AirportHeliport_Navaid
(
  uuidNavaid          id REFERENCES Navaid (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  uuidarphlp id REFERENCES AirportHeliport (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Significant Point - это выбор между точками РНС, аэродромами, центральными точками ВПП, назначенными точками (ППМ, Designated Point) и точками взлета-посадки
--
-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SignificantPoint
CREATE TABLE SignificantPoint
(
  id                  INTEGER PRIMARY KEY  DEFAULT nextval('auto_id_significant_point'),
  idPoint             INTEGER REFERENCES Point (id) ON DELETE CASCADE ON UPDATE CASCADE,
  uuiddsnpnt id REFERENCES DesignatedPoint (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  uuidNavaid          id REFERENCES Navaid (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  uuidarphlp id REFERENCES AirportHeliport (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SegmentPoint
CREATE TABLE SegmentPoint
(
  id                 INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_id_segment_point'),
  reportingATC       CodeATCReportingType,
  flyOver            CodeYesNoType,
  waypoint           CodeYesNoType,
  radarGuidance      CodeYesNoType,
  idSignificantPoint INTEGER NOT NULL REFERENCES SignificantPoint (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_EnRouteSegmentPoint0
CREATE TABLE EnRouteSegmentPoint
(
  id                   INTEGER PRIMARY KEY REFERENCES SegmentPoint (id) ON DELETE CASCADE ON UPDATE CASCADE,
  roleFreeFlight       CodeFreeFlightType,
  roleRVSM             CodeRVSMPointRoleType,
  turnRadius           ValDistanceType,
  roleMilitaryTraining CodeMilitaryRoutePointType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RouteSegment
CREATE TABLE RouteSegment
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4(),
  _transasID                  VARCHAR(20)
);
CREATE TABLE RouteSegmentTimeSlice
(
  idTimeSlice                 INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                        id REFERENCES RouteSegment (uuid),
  level                            CodeLevelType,
  upperLimit                       ValDistanceVerticalType,
  upperLimitReference              CodeVerticalReferenceType,
  lowerLimit                       ValDistanceVerticalType,
  lowerLimitReference              CodeVerticalReferenceType,
  minimumObstacleClearanceAltitude ValDistanceVerticalType,
  pathType                         CodeRouteSegmentPathType,
  trueTrack                        ValBearingType,
  magneticTrack                    ValBearingType,
  reverseTrueTrack                 ValBearingType,
  reverseMagneticTrack             ValBearingType,
  length                           ValDistanceType,
  widthLeft                        ValDistanceType,
  widthRight                       ValDistanceType,
  turnDirection                    CodeDirectionTurnType,
  signalGap                        CodeYesNoType,
  minimumEnrouteAltitude           ValDistanceVerticalType,
  minimumCrossingAtEnd             ValDistanceVerticalType,
  minimumCrossingAtEndReference    CodeVerticalReferenceType,
  maximumCrossingAtEnd             ValDistanceVerticalType,
  maximumCrossingAtEndReference    CodeVerticalReferenceType,
  navigationType                   CodeRouteNavigationType,
  requiredNavigationPerformance    CodeRNPType,
  designatorSuffix                 CodeRouteDesignatorSuffixType,
  uuidRoute                        id REFERENCES Route (uuid),
  idCurve                          INTEGER REFERENCES Curve (id) ON DELETE CASCADE ON UPDATE CASCADE,
  idEnRouteSegmentPointStart       INTEGER REFERENCES EnRouteSegmentPoint (id) ON DELETE CASCADE ON UPDATE CASCADE,
  idEnRouteSegmentPointEnd         INTEGER REFERENCES EnRouteSegmentPoint (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE CartographyLabelMVL
(
  id INTEGER NOT NULL PRIMARY KEY  DEFAULT nextval('auto_id_cartography_label_mvl'),
  longitude longitude,
  latitude latitude,
  size  DECIMAL(4,1),
  footnote  INTEGER,
  map  character varying(20),
  sogl  INTEGER,
  srid INTEGER REFERENCES spatial_ref_sys (srid),
  uuidrtseg id REFERENCES RouteSegment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  geom GEOMETRY(LINESTRING, 4326),
  geom2 GEOMETRY(LINESTRING, 4326),
  geom3 GEOMETRY(LINESTRING, 4326)
);


-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SignificantPointInAirspace
CREATE TABLE SignificantPointInAirspace
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE SignificantPointInAirspaceTimeSlice
(
  idTimeSlice                 INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                        id REFERENCES SignificantPointInAirspace (uuid),
  type               CodeAirspacePointRoleType,
  relativeLocation   CodeAirspacePointPositionType,
  uuidairspc       id REFERENCES Airspace (uuid),
  idSignificantPoint INTEGER NOT NULL REFERENCES SignificantPoint (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_RoutePortion
CREATE TABLE RoutePortion
(
  id                             INTEGER NOT NULL PRIMARY KEY DEFAULT nextval('auto_id_route_portion'),
  idSignificantPointStart        INTEGER NOT NULL REFERENCES SignificantPoint (id),
  idSignificantPointIntermediate INTEGER NOT NULL REFERENCES SignificantPoint (id),
  idSignificantPointEnd          INTEGER NOT NULL REFERENCES SignificantPoint (id)
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_NavaidEquipment
CREATE TABLE NavaidEquipment
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE NavaidEquipmentTimeSlice
(
  idTimeSlice                 INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                        id REFERENCES NavaidEquipment (uuid),
  designator                CodeNavaidDesignatorType,
  name                      TextNameType,
  emissionClass             CodeRadioEmissionType,
  mobile                    CodeYesNoType,
  magneticVariation         ValMagneticVariationType,
  magneticVariationAccuracy ValAngleType,
  dateMagneticVariation     DateYearType,
  flightChecked             CodeYesNoType,
  idElevatedPoint           INTEGER NOT NULL REFERENCES ElevatedPoint (id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- связь многие-ко-многим, поэтому добавляем связующую таблицу:
CREATE TABLE Navaid_NavaidEquipment
(
  uuidNavaid          id REFERENCES Navaid (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  uuidNavaidEquipment id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Azimuth
CREATE TABLE Azimuth
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES NavaidEquipmentTimeSlice (idTimeSlice),
  uuid        id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  type                   CodeMLSAzimuthType,
  trueBearing            ValBearingType,
  trueBearingAccuracy    ValAngleType,
  magneticBearing        ValBearingType,
  angleProportionalLeft  ValAngleType,
  angleProportionalRight ValAngleType,
  angleCoverLeft         ValAngleType,
  angleCoverRight        ValAngleType,
  channel                CodeMLSChannelType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_DME
CREATE TABLE DME
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES NavaidEquipmentTimeSlice (idTimeSlice),
  uuid        id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  type           CodeDMEType,
  channel        CodeDMEChannelType,
  ghostFrequency ValFrequencyType,
  displace       ValDistanceType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_DirectionFinder
CREATE TABLE DirectionFinder
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES NavaidEquipmentTimeSlice (idTimeSlice),
  uuid        id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  doppler CodeYesNoType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Elevation
CREATE TABLE Elevation
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES NavaidEquipmentTimeSlice (idTimeSlice),
  uuid        id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  angleNominal  ValAngleType,
  angleMinimum  ValAngleType,
  angleSpan     ValAngleType,
  angleAccuracy ValAngleType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Glidepath
CREATE TABLE Glidepath
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES NavaidEquipmentTimeSlice (idTimeSlice),
  uuid        id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  frequency     ValFrequencyType,
  slope         ValAngleType,
  angleAccuracy ValAngleType,
  rdh           ValDistanceVerticalType,
  rdhAccuracy   ValDistanceVerticalType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_Localizer
CREATE TABLE Localizer
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES NavaidEquipmentTimeSlice (idTimeSlice),
  uuid        id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  frequency               ValFrequencyType,
  magneticBearing         ValBearingType,
  magneticBearingAccuracy ValAngleType,
  trueBearing             ValBearingType,
  trueBearingAccuracy     ValAngleType,
  declination             ValMagneticVariationType,
  widthCourse             ValAngleType,
  widthCourseAccuracy     ValAngleType,
  backCourseUsable        CodeILSBackCourseType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_NDB
CREATE TABLE NDB
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES NavaidEquipmentTimeSlice (idTimeSlice),
  uuid        id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  frequency    ValFrequencyType,
  class        CodeNDBUsageType,
  emissionBand CodeEmissionBandType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_SDF
CREATE TABLE SDF
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES NavaidEquipmentTimeSlice (idTimeSlice),
  uuid        id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  frequency       ValFrequencyType,
  magneticBearing ValBearingType,
  trueBearing     ValBearingType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_TACAN
CREATE TABLE TACAN
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES NavaidEquipmentTimeSlice (idTimeSlice),
  uuid        id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  channel     CodeTACANChannelType,
  declination ValMagneticVariationType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_VOR
CREATE TABLE VOR
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES NavaidEquipmentTimeSlice (idTimeSlice),
  uuid        id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  type                 CodeVORType,
  frequency            ValFrequencyType,
  zeroBearingDirection CodeNorthReferenceType,
  declination          ValMagneticVariationType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ObstacleArea
CREATE TABLE ObstacleArea
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE ObstacleAreaTimeSlice
(
  idTimeSlice                 INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                        id REFERENCES ObstacleArea (uuid),
  type                          CodeObstacleAreaType,
  obstructionIdSurfaceCondition CodeObstacleAssessmentSurfaceType
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_VerticalStructure
CREATE TABLE VerticalStructure
(
  uuid                        id PRIMARY KEY DEFAULT uuid_generate_v4()
);
CREATE TABLE VerticalStructureTimeSlice
(
  idTimeSlice                 INTEGER NOT NULL PRIMARY KEY REFERENCES TimeSlice (id),
  uuid                        id REFERENCES VerticalStructure (uuid),
  name                 TextNameType,
  type                 CodeVerticalStructureType,
  lighted              CodeYesNoType,
  markingICAOStandard  CodeYesNoType,
  "group"              CodeYesNoType,
  length               ValDistanceType,
  width                ValDistanceType,
  radius               ValDistanceType,
  lightingICAOStandard CodeYesNoType,
  synchronisedLighting CodeYesNoType
);

CREATE TABLE ObstacleArea_VerticalStructure
(
  uuidObstacleArea      id PRIMARY KEY REFERENCES ObstacleArea,
  uuidVerticalStructure id REFERENCES VerticalStructure
);
CREATE TABLE GroundLightSystem_VerticalStructure
(
  uuidGroundLightSystem id PRIMARY KEY REFERENCES GroundLightSystem,
  uuidVerticalStructure id REFERENCES VerticalStructure
);
CREATE TABLE NavaidEquipment_VerticalStructure
(
  uuidNavaidEquipment   id PRIMARY KEY REFERENCES NavaidEquipment,
  uuidVerticalStructure id REFERENCES VerticalStructure
);
CREATE TABLE OrganisationAuthority_VerticalStructure
(
  uuidOrganisationAuthority id PRIMARY KEY REFERENCES OrganisationAuthority,
  uuidVerticalStructure     id REFERENCES VerticalStructure
);
CREATE TABLE Unit_VerticalStructure
(
  uuidUnit              id PRIMARY KEY REFERENCES Unit,
  uuidVerticalStructure id REFERENCES VerticalStructure
);
CREATE TABLE Service_VerticalStructure
(
  uuidService           id PRIMARY KEY REFERENCES Service,
  uuidVerticalStructure id REFERENCES VerticalStructure
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_MarkerBeacon
CREATE TABLE MarkerBeacon
(
  idTimeSlice INTEGER NOT NULL PRIMARY KEY REFERENCES NavaidEquipmentTimeSlice (idTimeSlice),
  uuid        id REFERENCES NavaidEquipment (uuid) ON DELETE CASCADE ON UPDATE CASCADE,
  class                 CodeMarkerBeaconSignalType,
  frequency             ValFrequencyType,
  axisBearing           ValBearingType,
  auralMorseCode        CodeAuralMorseType,
  uuidVerticalStructure id REFERENCES VerticalStructure
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_VerticalStructurePart
CREATE TABLE VerticalStructurePart
(
  id                     INTEGER PRIMARY KEY REFERENCES PropertiesWithSchedule (id) ON DELETE CASCADE ON UPDATE CASCADE,
  _transasID             VARCHAR(20),
  verticalExtent         ValDistanceType,
  verticalExtentAccuracy ValDistanceType,
  type                   CodeVerticalStructureType,
  constructionStatus     CodeStatusConstructionType,
  markingPattern         CodeVerticalStructureMarkingType,
  markingFirstColour     CodeColourType,
  markingSecondColour    CodeColourType,
  mobile                 CodeYesNoType,
  frangible              CodeYesNoType,
  visibleMaterial        CodeVerticalStructureMaterialType,
  designator             TextDesignatorType,
  uuidVerticalStructure  id REFERENCES VerticalStructure
);

-- https://ext.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_VerticalStructurePartGeometry
CREATE TABLE VerticalStructurePartGeometry
(
  idVerticalStructurePart INTEGER PRIMARY KEY REFERENCES VerticalStructurePart ON DELETE CASCADE ON UPDATE CASCADE,
  idElevatedPoint         INTEGER REFERENCES ElevatedPoint (id) ON DELETE CASCADE ON UPDATE CASCADE,
  idElevatedCurve         INTEGER REFERENCES ElevatedCurve (id) ON DELETE CASCADE ON UPDATE CASCADE,
  idElevatedSurface       INTEGER REFERENCES ElevatedSurface (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE CartographyLabel_OBS
(
  id                      INTEGER NOT NULL PRIMARY KEY  DEFAULT nextval('auto_id_cartography_label'),
  xlbl                    longitude,
  ylbl                    latitude,
  srid                    INTEGER REFERENCES spatial_ref_sys (srid),
  visibility              INTEGER,
  idVerticalStructurePart INTEGER REFERENCES VerticalStructurePart ON DELETE CASCADE ON UPDATE CASCADE,
  geom                    GEOMETRY(POINT, 4326)
);
/*
CREATE VIEW OBS AS
  SELECT
    VerticalStructurePart.id,
    VerticalStructurePart._transasID AS trID,
    VerticalStructurePart.type,
    VerticalStructureTimeSlice.name  AS nm,
    (ElevatedPoint.elevation).value  AS ab,
    (verticalExtent).value           AS ta,
    VerticalStructureTimeSlice.lighted        AS le,
    (SELECT CartographyLabel_OBS.xlbl
     FROM CartographyLabel_OBS
     WHERE CartographyLabel_OBS.idVerticalStructurePart = VerticalStructurePart.id),
    (SELECT CartographyLabel_OBS.ylbl
     FROM CartographyLabel_OBS
     WHERE CartographyLabel_OBS.idVerticalStructurePart = VerticalStructurePart.id),
    (SELECT CartographyLabel_OBS.visibility AS v
     FROM CartographyLabel_OBS
     WHERE CartographyLabel_OBS.idVerticalStructurePart = VerticalStructurePart.id),
    point.geom,
    Point.longitude,
    point.latitude,
    Point.srid
  FROM VerticalStructure, VerticalStructureTimeSlice, VerticalStructurePart, VerticalStructurePartGeometry, ElevatedPoint, Point
  WHERE VerticalStructurePart.uuidVerticalStructure = VerticalStructure.uuid AND
        VerticalStructureTimeSlice.uuid = VerticalStructure.uuid AND
        VerticalStructurePartGeometry.idVerticalStructurePart = VerticalStructurePart.id AND
        ElevatedPoint.id = VerticalStructurePartGeometry.idElevatedPoint AND ElevatedPoint.id = Point.id;

CREATE OR REPLACE FUNCTION obs_function()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
BEGIN
  IF TG_OP = 'INSERT'
  THEN
    WITH inserted_Point AS ( INSERT INTO Point (geom, latitude, longitude, srid)
    VALUES (NEW.geom, NEW.latitude, NEW.longitude, NEW.srid)
    RETURNING id),
        inserted_ElevatedPoint AS (INSERT INTO ElevatedPoint (id, elevation) VALUES ((SELECT inserted_Point.id
                                                                                      FROM inserted_Point),
                                                                                     ROW (NEW.ab, NULL, 'M'))),
        inserted_VerticalStructure AS ( INSERT INTO VerticalStructure (uuid, name, lighted)
      VALUES (uuid_generate_v4(), NEW.nm, NEW.le)
      RETURNING uuid),
        inserted_VerticalStructurePart AS (INSERT INTO VerticalStructurePart (id, _transasID, type, verticalExtent, uuidVerticalStructure)
      VALUES (NEW.id, NEW.trID, NEW.type, ROW (NEW.ta, 'M'), (SELECT inserted_VerticalStructure.uuid
                                                              FROM inserted_VerticalStructure))
      RETURNING id),
        inserted_CartographyLabel_OBS AS (INSERT INTO CartographyLabel_OBS (xlbl, ylbl, visibility, idVerticalStructurePart)
      VALUES (NEW.xlbl, NEW.ylbl, NEW.v, (SELECT inserted_VerticalStructurePart.id
                                          FROM inserted_VerticalStructurePart)))
    INSERT INTO VerticalStructurePartGeometry (idVerticalStructurePart, idElevatedPoint)
    VALUES ((SELECT inserted_VerticalStructurePart.id
             FROM inserted_VerticalStructurePart), (SELECT inserted_Point.id
                                                    FROM inserted_Point));
    RETURN NEW;
  ELSIF TG_OP = 'UPDATE'
    THEN
      UPDATE VerticalStructurePart
      SET _transasID = NEW.trID, type = NEW.type, verticalExtent.value = NEW.ta
      WHERE VerticalStructurePart.id = OLD.id;
      UPDATE VerticalStructure
      SET name = NEW.nm, lighted = NEW.le
      WHERE VerticalStructure.uuid = (SELECT VerticalStructurePart.uuidVerticalStructure
                                      FROM VerticalStructurePart
                                      WHERE VerticalStructurePart.id = OLD.id);
      UPDATE Point
      SET geom = NEW.geom, latitude = NEW.latitude, longitude = NEW.longitude, srid = NEW.srid
      WHERE Point.id = (SELECT VerticalStructurePartGeometry.idElevatedPoint
                        FROM VerticalStructurePartGeometry
                        WHERE VerticalStructurePartGeometry.idVerticalStructurePart = OLD.id);
      UPDATE ElevatedPoint
      SET elevation.value = NEW.ab
      WHERE ElevatedPoint.id = (SELECT VerticalStructurePartGeometry.idElevatedPoint
                                FROM VerticalStructurePartGeometry
                                WHERE VerticalStructurePartGeometry.idVerticalStructurePart = OLD.id);
      UPDATE CartographyLabel_OBS
      SET CartographyLabel_OBS.xlbl     = NEW.xlbl, CartographyLabel_OBS.ylbl = NEW.ylbl,
        CartographyLabel_OBS.visibility = NEW.v
      WHERE CartographyLabel_OBS.idVerticalStructurePart = OLD.id;
      RETURN NEW;
  ELSIF TG_OP = 'DELETE'
    THEN
      DELETE FROM VerticalStructurePart
      WHERE VerticalStructurePart.id = OLD.id;
      DELETE FROM VerticalStructure
      WHERE VerticalStructure.uuid = (SELECT VerticalStructurePart.uuidVerticalStructure
                                      FROM VerticalStructurePart
                                      WHERE VerticalStructurePart.id = OLD.id);
      DELETE FROM Point
      WHERE Point.id = (SELECT VerticalStructurePartGeometry.idElevatedPoint
                        FROM VerticalStructurePartGeometry
                        WHERE VerticalStructurePartGeometry.idVerticalStructurePart = OLD.id);
      DELETE FROM ElevatedPoint
      WHERE ElevatedPoint.id = (SELECT VerticalStructurePartGeometry.idElevatedPoint
                                FROM VerticalStructurePartGeometry
                                WHERE VerticalStructurePartGeometry.idVerticalStructurePart = OLD.id);
      DELETE FROM CartographyLabel_OBS
      WHERE CartographyLabel_OBS.idVerticalStructurePart = OLD.id;
      RETURN NULL;
  END IF;
  RETURN NEW;
END;
$function$;

CREATE TRIGGER obs_trigger
INSTEAD OF INSERT OR UPDATE OR DELETE ON
  OBS FOR EACH ROW EXECUTE PROCEDURE obs_function();
*/

-- The conversion function from decimal coordinates to DMS format
CREATE OR REPLACE FUNCTION DD2DMS( p_dDecDeg       IN FLOAT,
                                   p_sDegreeSymbol IN VARCHAR(1),
                                   p_sMinuteSymbol IN VARCHAR(1),
                                   p_sSecondSymbol IN VARCHAR(1),
                                   laltlon IN VARCHAR(10))
RETURNS VARCHAR(50)
AS
$BODY$
DECLARE
   v_iDeg INT;
   v_iMin INT;
   v_dSec INT;
BEGIN
   v_iDeg := Trunc(p_dDecDeg)::INT;
   v_iMin := Trunc(   (Abs(p_dDecDeg) - Abs(v_iDeg)) * 60)::INT;
   v_dSec := Trunc(((((Abs(p_dDecDeg) - Abs(v_iDeg)) * 60) - v_iMin) * 60)::NUMERIC)::INT;
   RETURN
     (case when laltlon::text = 'lon' then LPAD((TRIM(to_char(v_iDeg,'9999')))::text, 3, '0')
       else LPAD((TRIM(to_char(v_iDeg,'9999')))::text, 2, '0') end)
   || p_sDegreeSymbol::text || LPAD((TRIM(to_char(v_iMin,'99')))::text, 2, '0') || p_sMinuteSymbol::text ||
          CASE WHEN v_dSec = 0::FLOAT THEN '00' ELSE LPAD((TRIM(to_char(v_dSec,'99')))::text, 2, '0') END || p_sSecondSymbol::text;
END;
$BODY$
  LANGUAGE 'plpgsql' IMMUTABLE STRICT
  COST 100;

-- The conversion function from DMS format coordinates to decimal coordinates
CREATE OR REPLACE FUNCTION DMS2DD( p_dDeg IN FLOAT,
                                   p_dMin IN FLOAT,
                                   p_dSec IN FLOAT)
RETURNS FLOAT
AS
$BODY$
DECLARE
   v_dDD FLOAT;
BEGIN
   v_dDD := ABS(p_dDeg) + p_dMin / 60::FLOAT + p_dSec / 3600::FLOAT;
   RETURN SIGN(p_dDeg) * v_dDD;
END;
$BODY$
  LANGUAGE 'plpgsql' IMMUTABLE STRICT
  COST 100;


CREATE OR REPLACE VIEW arp1702 AS
  SELECT DISTINCT ON (gid)
    cartographylabelarp.id AS gid,
    AirportHeliport._transasID AS id,
    -- наименование на русском
    AirportHeliportTimeSlice.name AS nl,
    -- четырехбуквенник
    AirportHeliportTimeSlice.designator AS nm,
    --  тип аэродрома
    AirportHeliportTimeSlice.controltype AS tp,
    (elevation).value AS ha_m,
    (nominallength).value AS lr_m,
    -- поле покрытие ВПП аэродрома cov
     CASE WHEN
       -- если composition равен любому значению из перечисленного множества - то покрытие ВПП аэродрома твёрдон
       (surfacecharacteristics.composition IN
         ('ASPH', 'ASPH_GRASS', 'CONC', 'CONC_ASPH', 'CONC_GRS', 'BITUM', 'BRICK', 'MEMBRANE', 'METAL', 'MATS', 'PIERCED_STEEL', 'NON_BITUM_MIX', 'OTHER: H'))
       THEN text 'твердое покрытие'
      -- если покрытие не входит в этот список - то оно NULL
      ELSE NULL
      END
      AS cov,
    -- поле угол поворота ВПП аэродрома
    RunwayDirectionTimeSlice.trueBearing AS ugol,
    -- закрыт или открыт аэродром
    AirportHeliportTimeSlice.abandoned AS st,
    -- освещение аэродрома
     CASE WHEN RunwayDirectionTimeSlice.classLightingJAR = 'BALS' THEN text 'есть'
       WHEN RunwayDirectionTimeSlice.classLightingJAR = 'OTHER: NODATA' THEN text 'неизвестно'
       WHEN RunwayDirectionTimeSlice.classLightingJAR = 'NALS' THEN text 'нет'
       ELSE RunwayDirectionTimeSlice.classLightingJAR
     END
       AS le,
    -- coords in DMS
    concat(DD2DMS(point.latitude,'°', '''','"', 'lat'), 'N') as "N",
    concat(DD2DMS(point.longitude,'°', '''','"', 'lon'), 'E') as "E",
    -- координаты подписи
    CartographyLabelARP.longitude as xlbl,
    CartographyLabelARP.latitude as ylbl,
    CartographyLabelARP.map as map,
    -- геометрия
    Point.geom
    FROM cartographylabelarp
    LEFT JOIN airportheliport ON cartographylabelarp.uuidarphlp = airportheliport.uuid
  LEFT JOIN airportheliporttimeslice ON airportheliport.uuid = airportheliporttimeslice.uuid
  LEFT JOIN elevatedpoint ON airportheliporttimeslice.idelevatedpoint = elevatedpoint.id
  LEFT JOIN runwaytimeslice ON cartographylabelarp.uuidarphlp = runwaytimeslice.uuidarphlp
  LEFT JOIN surfacecharacteristics ON runwaytimeslice.idsurfacecharacteristics = surfacecharacteristics.id
  LEFT JOIN runwaydirectiontimeslice ON runwaydirectiontimeslice.uuidrunway = runwaytimeslice.uuid
  LEFT JOIN point ON elevatedpoint.id = point.id
  LEFT JOIN timeslice ON timeslice.id IN (airportheliporttimeslice.idtimeslice, runwaydirectiontimeslice.idtimeslice, runwaytimeslice.idtimeslice)
  WHERE TimeSlice.validTimeBegin <= '2017-02-02' AND (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)
        AND AirportHeliportTimeSlice.controltype IS NOT NULL;



CREATE OR REPLACE VIEW als1702 AS
  SELECT
    cartographylabelarp.id AS gid,
    (SELECT AirportHeliport._transasID AS id
    FROM AirportHeliport
    WHERE AirportHeliport.uuid = cartographylabelarp.uuidarphlp),
    -- наименование на русском
    (SELECT AirportHeliportTimeSlice.name AS nl
    FROM AirportHeliportTimeSlice, timeslice
    WHERE airportheliporttimeslice.uuid = cartographylabelarp.uuidarphlp AND airportheliporttimeslice.idTimeSlice  = TimeSlice.id
          AND TimeSlice.validTimeBegin <= '2017-02-02' AND (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
    -- четырехбуквенник
    (SELECT AirportHeliportTimeSlice.designator AS nm
    FROM AirportHeliportTimeSlice, timeslice
    WHERE airportheliporttimeslice.uuid = cartographylabelarp.uuidarphlp AND airportheliporttimeslice.idTimeSlice  = TimeSlice.id
          AND TimeSlice.validTimeBegin <= '2017-02-02' AND (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
    --  тип аэродрома
    (SELECT AirportHeliportTimeSlice.type AS tp
    FROM AirportHeliportTimeSlice, timeslice
    WHERE airportheliporttimeslice.uuid = cartographylabelarp.uuidarphlp AND airportheliporttimeslice.idTimeSlice  = TimeSlice.id
          AND TimeSlice.validTimeBegin <= '2017-02-02' AND (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
    (SELECT (elevation).value AS ha_m
      FROM elevatedpoint, airportheliporttimeslice, timeslice
    WHERE elevatedpoint.id = airportheliporttimeslice.idelevatedpoint AND airportheliporttimeslice.uuid = cartographylabelarp.uuidarphlp
          AND airportheliporttimeslice.idTimeSlice  = timeslice.id
          AND timeslice.validTimeBegin <= '2017-02-02' AND (timeslice.validTimeEnd > '2017-02-02' OR timeslice.validTimeEnd is NULL)),
    (SELECT (nominallength).value AS lr_m
     FROM RunwayTimeSlice, timeslice
     WHERE RunwayTimeSlice.uuidarphlp = cartographylabelarp.uuidarphlp AND
           RunwayTimeSlice.idtimeslice = timeslice.id and TimeSlice.validTimeBegin <= '2017-02-02' AND
         (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
    -- поле покрытие ВПП аэродрома cov
    (SELECT
       CASE WHEN
         -- если composition равен любому значению из перечисленного множества - то покрытие ВПП аэродрома твёрдон
         (surfacecharacteristics.composition IN
           ('ASPH', 'ASPH_GRASS', 'CONC', 'CONC_ASPH', 'CONC_GRS', 'BITUM', 'BRICK', 'MEMBRANE', 'METAL', 'MATS', 'PIERCED_STEEL', 'NON_BITUM_MIX', 'OTHER: H'))
         THEN text 'твердое покрытие'
        -- если покрытие не входит в этот список - то оно NULL
        ELSE NULL
         END
         AS cov
     FROM surfacecharacteristics, runwaytimeslice, timeslice
     WHERE RunwayTimeSlice.idsurfacecharacteristics = surfacecharacteristics.id
           AND RunwayTimeSlice.uuidarphlp = cartographylabelarp.uuidarphlp AND RunwayTimeSlice.idtimeslice = timeslice.id AND TimeSlice.validTimeBegin <= '2017-02-02' AND
         (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
    -- поле угол поворота ВПП аэродрома
    (SELECT RunwayDirectionTimeSlice.trueBearing AS ugol
    FROM RunwayDirectionTimeSlice
    WHERE runwaydirectiontimeslice.uuidrunway = (SELECT runwaytimeslice.uuid FROM runwaytimeslice WHERE runwaytimeslice.idtimeslice IN (SELECT timeslice.id From TimeSlice WHERE
      TimeSlice.validTimeBegin <= '2017-02-02' AND
         (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)) AND
      runwaytimeslice.uuidarphlp = cartographylabelarp.uuidarphlp)
          AND runwaydirectiontimeslice.idtimeslice IN (SELECT timeslice.id From TimeSlice WHERE TimeSlice.validTimeBegin <= '2017-02-02' AND
         (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL))),
    -- закрыт или открыт аэродром
    (SELECT AirportHeliportTimeSlice.abandoned AS st
    FROM AirportHeliportTimeSlice, timeslice
    WHERE airportheliporttimeslice.uuid = cartographylabelarp.uuidarphlp AND airportheliporttimeslice.idTimeSlice  = TimeSlice.id
          AND TimeSlice.validTimeBegin <= '2017-02-02' AND (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
    -- освещение аэродрома
    (SELECT
       CASE WHEN RunwayDirectionTimeSlice.classLightingJAR = 'BALS' THEN text 'есть'
         WHEN RunwayDirectionTimeSlice.classLightingJAR = 'OTHER: NODATA' THEN text 'неизвестно'
         WHEN RunwayDirectionTimeSlice.classLightingJAR = 'NALS' THEN text 'нет'
         ELSE RunwayDirectionTimeSlice.classLightingJAR
      END
         AS le
    FROM RunwayDirectionTimeSlice
    WHERE runwaydirectiontimeslice.uuidrunway = (SELECT runwaytimeslice.uuid FROM runwaytimeslice WHERE runwaytimeslice.idtimeslice IN (SELECT timeslice.id From TimeSlice WHERE
      TimeSlice.validTimeBegin <= '2017-02-02' AND
         (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)) AND
      runwaytimeslice.uuidarphlp = cartographylabelarp.uuidarphlp)
          AND runwaydirectiontimeslice.idtimeslice IN (SELECT timeslice.id From TimeSlice WHERE TimeSlice.validTimeBegin <= '2017-02-02' AND
         (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL))),
    -- координаты подписи
    CartographyLabelARP.longitude as xlbl,
    CartographyLabelARP.latitude as ylbl,
    CartographyLabelARP.map as map,
    -- геометрия
    (SELECT Point.geom
      FROM Point, airportheliporttimeslice, timeslice
      WHERE Point.id = airportheliporttimeslice.idelevatedpoint AND airportheliporttimeslice.uuid = cartographylabelarp.uuidarphlp  AND AirportHeliportTimeSlice.idTimeSlice  = TimeSlice.id  AND
           TimeSlice.validTimeBegin <= '2017-02-02' AND
         (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL))
  FROM cartographylabelarp WHERE cartographylabelarp.uuidarphlp in (SELECT airportheliporttimeslice.uuid
                  FROM airportheliporttimeslice, timeslice WHERE AirportHeliportTimeSlice.type IS NOT NULL AND AirportHeliportTimeSlice.idTimeSlice  = TimeSlice.id
          AND TimeSlice.validTimeBegin <= '2017-02-02' AND (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL));



CREATE OR REPLACE FUNCTION arp_function()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
BEGIN
  IF TG_OP = 'INSERT'
  THEN
    -- вставка нового объекта подписи. При вставке в view ARP вставляется только подпись без геометрии и nm, nl и прочих полей , взятых от Feature
        WITH select_ArpHlpuuid AS (SELECT uuid FROM airportheliport WHERE airportheliport._transasid = NEW.id)
        INSERT INTO cartographylabelarp (id, longitude, latitude, map, uuidarphlp)
        VALUES (nextval('auto_id_cartography_label_arp'), NEW.xlbl, NEW.ylbl, NEW.map, (SELECT select_ArpHlpuuid.uuid FROM select_ArpHlpuuid));
    RETURN NEW;
  ELSIF TG_OP = 'UPDATE' THEN
          UPDATE AirportHeliportTimeSlice
          SET designator = NEW.nm, name = NEW.nl, controltype = NEW.tp, abandoned = NEW.st
          WHERE AirportHeliportTimeSlice.uuid = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid);
          UPDATE RunwayTimeSlice
          SET nominalLength.value = NEW.lr_m
          WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid);
        IF NEW.le = 'есть' THEN
          UPDATE RunwayDirectionTimeSlice
          SET trueBearing = NEW.ugol, classLightingJAR = 'BALS'
          WHERE RunwayDirectionTimeSlice.uuidRunway = (SELECT uuid
                                              FROM RunwayTimeSlice
                                              WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
        ELSEIF NEW.le = 'неизвестно' THEN
          UPDATE RunwayDirectionTimeSlice
          SET trueBearing = NEW.ugol, classLightingJAR = 'OTHER: NODATA'
          WHERE RunwayDirectionTimeSlice.uuidRunway = (SELECT uuid
                                              FROM RunwayTimeSlice
                                              WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
        ELSEIF NEW.le = 'нет' THEN
          UPDATE RunwayDirectionTimeSlice
          SET trueBearing = NEW.ugol, classLightingJAR = 'NALS'
          WHERE RunwayDirectionTimeSlice.uuidRunway = (SELECT uuid
                                              FROM RunwayTimeSlice
                                              WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
        ELSE
          UPDATE RunwayDirectionTimeSlice
          SET trueBearing = NEW.ugol, classLightingJAR = OLD.le
          WHERE RunwayDirectionTimeSlice.uuidRunway = (SELECT uuid
                                              FROM RunwayTimeSlice
                                              WHERE RunwayTimeSlice.uuidarphlp =  (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
        END IF;

          UPDATE Point
          SET geom = NEW.geom
          WHERE Point.id = (SELECT AirportHeliportTimeSlice.idelevatedpoint
                            FROM AirportHeliportTimeSlice
                            WHERE AirportHeliportTimeSlice.uuid = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
          UPDATE elevatedpoint
          SET elevation = ROW (NEW.ha_m, NULL, 'M')
          WHERE elevatedpoint.id = (SELECT AirportHeliportTimeSlice.idelevatedpoint
                            FROM AirportHeliportTimeSlice
                            WHERE AirportHeliportTimeSlice.uuid = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
          UPDATE cartographylabelarp
          SET longitude = NEW.xlbl, latitude = NEW.ylbl, map = NEW.map
          WHERE cartographylabelarp.id = OLD.gid;
          IF NEW.cov = 'твердое покрытие'
          THEN
            UPDATE surfacecharacteristics
            SET composition = 'OTHER: H'
            WHERE SurfaceCharacteristics.id = (SELECT RunwayTimeSlice.idSurfaceCharacteristics
                                               FROM RunwayTimeSlice
                                               WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
          ELSEIF NEW.cov is NULL
            THEN
              UPDATE surfacecharacteristics
              SET composition = 'OTHER: SOFT'
              WHERE SurfaceCharacteristics.id = (SELECT RunwayTimeSlice.idSurfaceCharacteristics
                                                 FROM RunwayTimeSlice
                                                 WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
          END IF;
          RETURN NEW;
  ELSIF TG_OP = 'DELETE'
    THEN
       WITH delete_arpTS AS (DELETE FROM AirportHeliportTimeSlice
      WHERE AirportHeliportTimeSlice.uuid = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid)
       RETURNING idelevatedpoint, AirportHeliportTimeSlice.uuid, airportheliporttimeslice.idtimeslice),
         delete_point AS (DELETE FROM Point WHERE Point.id IN (SELECT delete_arpTS.idelevatedpoint FROM delete_arpTS)),
         delete_TSofARP AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_arpTS.idtimeslice FROM delete_arpTS)),
         delete_RnwTS AS (DELETE FROM RunwayTimeSlice WHERE uuidarphlp IN (SELECT delete_arpTS.uuid FROM delete_arpTS) RETURNING RunwayTimeSlice.uuid, runwaytimeslice.idsurfacecharacteristics, runwaytimeslice.idtimeslice),
         delete_RnwDrctnTS AS (DELETE FROM RunwayDirectionTimeSlice WHERE RunwayDirectionTimeSlice.uuidRunway IN (SELECT delete_RnwTS.uuid FROM delete_RnwTS) RETURNING runwaydirectiontimeslice.uuid, runwaydirectiontimeslice.idtimeslice),
         delete_Rnw AS (DELETE FROM Runway WHERE Runway.uuid IN (SELECT delete_RnwTS.uuid FROM delete_RnwTS)),
         delete_RnwDrctn AS (DELETE FROM RunwayDirection WHERE runwaydirection.uuid IN (SELECT delete_RnwDrctnTS.uuid FROM delete_RnwDrctnTS)),
         delete_TSofRnw AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_RnwTS.idtimeslice FROM delete_RnwTS)),
         delete_TSofRnwDrctn AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_RnwDrctnTS.idtimeslice FROM delete_RnwDrctnTS)),
         delete_SrfcChrctrstcs AS (DELETE FROM surfacecharacteristics WHERE surfacecharacteristics.id IN (SELECT delete_RnwTS.idsurfacecharacteristics FROM delete_RnwTS)),
         delete_UnitTS AS (DELETE FROM UnitTimeSlice WHERE uuidarphlp IN (SELECT delete_arpTS.uuid FROM delete_arpTS) RETURNING UnitTimeSlice.uuid, unittimeslice.idtimeslice),
         delete_Unit AS (DELETE FROM Unit WHERE Unit.uuid IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS)),
         delete_TSofUnit AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_UnitTS.idtimeslice FROM delete_UnitTS)),
         delete_AirTrffcCntrlSrvcTS AS (DELETE FROM AirTrafficControlServiceTimeSlice WHERE AirTrafficControlServiceTimeSlice.uuid IN (SELECT ServiceTimeSlice.uuid FROM servicetimeslice WHERE ServiceTimeSlice.uuidUnit IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS))  RETURNING AirTrafficControlServiceTimeSlice.uuid),
         delete_AirTrffcCntrlSrvc AS (DELETE FROM AirTrafficControlService WHERE AirTrafficControlService.uuid IN (SELECT delete_AirTrffcCntrlSrvcTS.uuid FROM delete_AirTrffcCntrlSrvcTS)),
         delete_GrndTrffcCntrlSrvcTS AS (DELETE FROM GroundTrafficControlServiceTimeSlice WHERE GroundTrafficControlServiceTimeSlice.uuid IN (SELECT ServiceTimeSlice.uuid FROM servicetimeslice WHERE ServiceTimeSlice.uuidUnit IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS))  RETURNING GroundTrafficControlServiceTimeSlice.uuid),
         delete_GrndTrffcCntrlSrvc AS (DELETE FROM GroundTrafficControlService WHERE GroundTrafficControlService.uuid IN (SELECT delete_GrndTrffcCntrlSrvcTS.uuid FROM delete_GrndTrffcCntrlSrvcTS)),
         delete_TrffcSprtnSrvcTS AS (DELETE FROM trafficseparationservicetimeslice WHERE trafficseparationservicetimeslice.uuid IN (SELECT ServiceTimeSlice.uuid FROM servicetimeslice WHERE ServiceTimeSlice.uuidUnit IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS))  RETURNING trafficseparationservicetimeslice.uuid),
         delete_TrffcSprtnSrvc AS (DELETE FROM trafficseparationservice WHERE trafficseparationservice.uuid IN (SELECT delete_TrffcSprtnSrvcTS.uuid FROM delete_TrffcSprtnSrvcTS)),
         delete_InfrmtnSrvcTS AS (DELETE FROM InformationServiceTimeSlice WHERE InformationServiceTimeSlice.uuid IN (SELECT ServiceTimeSlice.uuid FROM servicetimeslice WHERE ServiceTimeSlice.uuidUnit IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS))  RETURNING InformationServiceTimeSlice.uuid),
         delete_InfrmtnSrvc AS (DELETE FROM InformationService WHERE InformationService.uuid IN (SELECT delete_InfrmtnSrvcTS.uuid FROM delete_InfrmtnSrvcTS)),
         delete_SrvcTS AS (DELETE FROM ServiceTimeSlice WHERE ServiceTimeSlice.uuidUnit IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS) RETURNING servicetimeslice.uuid, servicetimeslice.idtimeslice),
         delete_Srvc AS (DELETE FROM Service WHERE Service.uuid IN (SELECT delete_SrvcTS.uuid FROM delete_SrvcTS)),
         delete_TSofSrvc AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_SrvcTS.idtimeslice FROM delete_SrvcTS)),
         delete_CllsgnDtl AS (DELETE FROM CallsignDetail WHERE CallsignDetail.uuidservice IN (SELECT delete_SrvcTS.uuid FROM delete_SrvcTS)),
         delete_RdCmmnctnChnnlTS AS (DELETE FROM RadioCommunicationChannelTimeSlice WHERE RadioCommunicationChannelTimeSlice.uuid IN (SELECT Service_RadioCommunicationChannel.uuidradiocommunicationchannel FROM Service_RadioCommunicationChannel
         WHERE Service_RadioCommunicationChannel.uuidservice IN (SELECT delete_SrvcTS.uuid FROM delete_SrvcTS)) RETURNING RadioCommunicationChannelTimeSlice.uuid, RadioCommunicationChannelTimeSlice.idtimeslice),
         delete_SrvcRdCmmnctnChnnl AS (DELETE FROM service_radiocommunicationchannel WHERE service_radiocommunicationchannel.uuidservice IN (SELECT delete_SrvcTS.uuid FROM delete_SrvcTS)),
         delete_TSRdCmmnctnChnnl AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_RdCmmnctnChnnlTS.idtimeslice FROM delete_RdCmmnctnChnnlTS)),
         delete_RdCmmnctnChnnl AS (DELETE FROM RadioCommunicationChannel WHERE RadioCommunicationChannel.uuid IN (SELECT delete_RdCmmnctnChnnlTS.uuid FROM delete_RdCmmnctnChnnlTS)),
         delete_CrtgrphLblArp AS (DELETE FROM CartographyLabelARP WHERE CartographyLabelARP.id = OLD.gid),
         delete_Arp AS (DELETE FROM AirportHeliport
      WHERE AirportHeliport.uuid = (SELECT CartographyLabelARP.uuidarphlp FROM CartographyLabelARP WHERE id = OLD.gid))
      DELETE FROM ElevatedPoint
        WHERE ElevatedPoint.id IN (SELECT delete_arpTS.idelevatedpoint FROM delete_arpTS);
      RETURN NULL;
  END IF;
  RETURN NEW;
END;
$function$;

CREATE TRIGGER arp_trigger
INSTEAD OF INSERT OR UPDATE OR DELETE ON
  arp1702 FOR EACH ROW EXECUTE PROCEDURE arp_function();



CREATE OR REPLACE FUNCTION als_function1613()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
BEGIN
  IF TG_OP = 'INSERT'
  THEN
    -- вставка нового объекта подписи. При вставке в view ARP вставляется только подпись без геометрии и nm, nl и прочих полей , взятых от Feature
        WITH select_ArpHlpuuid AS (SELECT uuid FROM airportheliport WHERE airportheliport._transasid = NEW.id)
        INSERT INTO cartographylabelarp (id, longitude, latitude, map, uuidarphlp)
        VALUES (nextval('auto_id_cartography_label_arp'), NEW.xlbl, NEW.ylbl, NEW.map, (SELECT select_ArpHlpuuid.uuid FROM select_ArpHlpuuid));
    RETURN NEW;
  ELSIF TG_OP = 'UPDATE' THEN
          UPDATE AirportHeliportTimeSlice
          SET designator = NEW.nm, name = NEW.nl, type = NEW.tp, abandoned = NEW.st
          WHERE AirportHeliportTimeSlice.uuid = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid);
          UPDATE RunwayTimeSlice
          SET nominalLength.value = NEW.lr_m
          WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid);
        IF NEW.le = 'есть' THEN
          UPDATE RunwayDirectionTimeSlice
          SET trueBearing = NEW.ugol, classLightingJAR = 'BALS'
          WHERE RunwayDirectionTimeSlice.uuidRunway = (SELECT uuid
                                              FROM RunwayTimeSlice
                                              WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
        ELSEIF NEW.le = 'неизвестно' THEN
          UPDATE RunwayDirectionTimeSlice
          SET trueBearing = NEW.ugol, classLightingJAR = 'OTHER: NODATA'
          WHERE RunwayDirectionTimeSlice.uuidRunway = (SELECT uuid
                                              FROM RunwayTimeSlice
                                              WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
        ELSEIF NEW.le = 'нет' THEN
          UPDATE RunwayDirectionTimeSlice
          SET trueBearing = NEW.ugol, classLightingJAR = 'NALS'
          WHERE RunwayDirectionTimeSlice.uuidRunway = (SELECT uuid
                                              FROM RunwayTimeSlice
                                              WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
        ELSE
          UPDATE RunwayDirectionTimeSlice
          SET trueBearing = NEW.ugol, classLightingJAR = OLD.le
          WHERE RunwayDirectionTimeSlice.uuidRunway = (SELECT uuid
                                              FROM RunwayTimeSlice
                                              WHERE RunwayTimeSlice.uuidarphlp =  (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
        END IF;

          UPDATE Point
          SET geom = NEW.geom
          WHERE Point.id = (SELECT AirportHeliportTimeSlice.idelevatedpoint
                            FROM AirportHeliportTimeSlice
                            WHERE AirportHeliportTimeSlice.uuid = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
          UPDATE elevatedpoint
          SET elevation = ROW (NEW.ha_m, NULL, 'M')
          WHERE elevatedpoint.id = (SELECT AirportHeliportTimeSlice.idelevatedpoint
                            FROM AirportHeliportTimeSlice
                            WHERE AirportHeliportTimeSlice.uuid = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
          UPDATE cartographylabelarp
          SET longitude = NEW.xlbl, latitude = NEW.ylbl
          WHERE cartographylabelarp.id = OLD.gid;
          IF NEW.cov = 'твердое покрытие'
          THEN
            UPDATE surfacecharacteristics
            SET composition = 'OTHER: H'
            WHERE SurfaceCharacteristics.id = (SELECT RunwayTimeSlice.idSurfaceCharacteristics
                                               FROM RunwayTimeSlice
                                               WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
          ELSEIF NEW.cov is NULL
            THEN
              UPDATE surfacecharacteristics
              SET composition = 'OTHER: SOFT'
              WHERE SurfaceCharacteristics.id = (SELECT RunwayTimeSlice.idSurfaceCharacteristics
                                                 FROM RunwayTimeSlice
                                                 WHERE RunwayTimeSlice.uuidarphlp = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid));
          END IF;
          RETURN NEW;
  ELSIF TG_OP = 'DELETE'
    THEN
       WITH delete_arpTS AS (DELETE FROM AirportHeliportTimeSlice
      WHERE AirportHeliportTimeSlice.uuid = (SELECT uuidarphlp FROM cartographylabelarp WHERE id = OLD.gid)
       RETURNING idelevatedpoint, AirportHeliportTimeSlice.uuid, airportheliporttimeslice.idtimeslice),
         delete_point AS (DELETE FROM Point WHERE Point.id IN (SELECT delete_arpTS.idelevatedpoint FROM delete_arpTS)),
         delete_TSofARP AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_arpTS.idtimeslice FROM delete_arpTS)),
         delete_RnwTS AS (DELETE FROM RunwayTimeSlice WHERE uuidarphlp IN (SELECT delete_arpTS.uuid FROM delete_arpTS) RETURNING RunwayTimeSlice.uuid, runwaytimeslice.idsurfacecharacteristics, runwaytimeslice.idtimeslice),
         delete_RnwDrctnTS AS (DELETE FROM RunwayDirectionTimeSlice WHERE RunwayDirectionTimeSlice.uuidRunway IN (SELECT delete_RnwTS.uuid FROM delete_RnwTS) RETURNING runwaydirectiontimeslice.uuid, runwaydirectiontimeslice.idtimeslice),
         delete_Rnw AS (DELETE FROM Runway WHERE Runway.uuid IN (SELECT delete_RnwTS.uuid FROM delete_RnwTS)),
         delete_RnwDrctn AS (DELETE FROM RunwayDirection WHERE runwaydirection.uuid IN (SELECT delete_RnwDrctnTS.uuid FROM delete_RnwDrctnTS)),
         delete_TSofRnw AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_RnwTS.idtimeslice FROM delete_RnwTS)),
         delete_TSofRnwDrctn AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_RnwDrctnTS.idtimeslice FROM delete_RnwDrctnTS)),
         delete_SrfcChrctrstcs AS (DELETE FROM surfacecharacteristics WHERE surfacecharacteristics.id IN (SELECT delete_RnwTS.idsurfacecharacteristics FROM delete_RnwTS)),
         delete_UnitTS AS (DELETE FROM UnitTimeSlice WHERE uuidarphlp IN (SELECT delete_arpTS.uuid FROM delete_arpTS) RETURNING UnitTimeSlice.uuid, unittimeslice.idtimeslice),
         delete_Unit AS (DELETE FROM Unit WHERE Unit.uuid IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS)),
         delete_TSofUnit AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_UnitTS.idtimeslice FROM delete_UnitTS)),
         delete_AirTrffcCntrlSrvcTS AS (DELETE FROM AirTrafficControlServiceTimeSlice WHERE AirTrafficControlServiceTimeSlice.uuid IN (SELECT ServiceTimeSlice.uuid FROM servicetimeslice WHERE ServiceTimeSlice.uuidUnit IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS))  RETURNING AirTrafficControlServiceTimeSlice.uuid),
         delete_AirTrffcCntrlSrvc AS (DELETE FROM AirTrafficControlService WHERE AirTrafficControlService.uuid IN (SELECT delete_AirTrffcCntrlSrvcTS.uuid FROM delete_AirTrffcCntrlSrvcTS)),
         delete_GrndTrffcCntrlSrvcTS AS (DELETE FROM GroundTrafficControlServiceTimeSlice WHERE GroundTrafficControlServiceTimeSlice.uuid IN (SELECT ServiceTimeSlice.uuid FROM servicetimeslice WHERE ServiceTimeSlice.uuidUnit IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS))  RETURNING GroundTrafficControlServiceTimeSlice.uuid),
         delete_GrndTrffcCntrlSrvc AS (DELETE FROM GroundTrafficControlService WHERE GroundTrafficControlService.uuid IN (SELECT delete_GrndTrffcCntrlSrvcTS.uuid FROM delete_GrndTrffcCntrlSrvcTS)),
         delete_TrffcSprtnSrvcTS AS (DELETE FROM trafficseparationservicetimeslice WHERE trafficseparationservicetimeslice.uuid IN (SELECT ServiceTimeSlice.uuid FROM servicetimeslice WHERE ServiceTimeSlice.uuidUnit IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS))  RETURNING trafficseparationservicetimeslice.uuid),
         delete_TrffcSprtnSrvc AS (DELETE FROM trafficseparationservice WHERE trafficseparationservice.uuid IN (SELECT delete_TrffcSprtnSrvcTS.uuid FROM delete_TrffcSprtnSrvcTS)),
         delete_InfrmtnSrvcTS AS (DELETE FROM InformationServiceTimeSlice WHERE InformationServiceTimeSlice.uuid IN (SELECT ServiceTimeSlice.uuid FROM servicetimeslice WHERE ServiceTimeSlice.uuidUnit IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS))  RETURNING InformationServiceTimeSlice.uuid),
         delete_InfrmtnSrvc AS (DELETE FROM InformationService WHERE InformationService.uuid IN (SELECT delete_InfrmtnSrvcTS.uuid FROM delete_InfrmtnSrvcTS)),
         delete_SrvcTS AS (DELETE FROM ServiceTimeSlice WHERE ServiceTimeSlice.uuidUnit IN (SELECT delete_UnitTS.uuid FROM delete_UnitTS) RETURNING servicetimeslice.uuid, servicetimeslice.idtimeslice),
         delete_Srvc AS (DELETE FROM Service WHERE Service.uuid IN (SELECT delete_SrvcTS.uuid FROM delete_SrvcTS)),
         delete_TSofSrvc AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_SrvcTS.idtimeslice FROM delete_SrvcTS)),
         delete_CllsgnDtl AS (DELETE FROM CallsignDetail WHERE CallsignDetail.uuidservice IN (SELECT delete_SrvcTS.uuid FROM delete_SrvcTS)),
         delete_RdCmmnctnChnnlTS AS (DELETE FROM RadioCommunicationChannelTimeSlice WHERE RadioCommunicationChannelTimeSlice.uuid IN (SELECT Service_RadioCommunicationChannel.uuidradiocommunicationchannel FROM Service_RadioCommunicationChannel
         WHERE Service_RadioCommunicationChannel.uuidservice IN (SELECT delete_SrvcTS.uuid FROM delete_SrvcTS)) RETURNING RadioCommunicationChannelTimeSlice.uuid, RadioCommunicationChannelTimeSlice.idtimeslice),
         delete_SrvcRdCmmnctnChnnl AS (DELETE FROM service_radiocommunicationchannel WHERE service_radiocommunicationchannel.uuidservice IN (SELECT delete_SrvcTS.uuid FROM delete_SrvcTS)),
         delete_TSRdCmmnctnChnnl AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_RdCmmnctnChnnlTS.idtimeslice FROM delete_RdCmmnctnChnnlTS)),
         delete_RdCmmnctnChnnl AS (DELETE FROM RadioCommunicationChannel WHERE RadioCommunicationChannel.uuid IN (SELECT delete_RdCmmnctnChnnlTS.uuid FROM delete_RdCmmnctnChnnlTS)),
         delete_CrtgrphLblArp AS (DELETE FROM CartographyLabelARP WHERE CartographyLabelARP.id = OLD.gid)
      DELETE FROM ElevatedPoint
        WHERE ElevatedPoint.id IN (SELECT delete_arpTS.idelevatedpoint FROM delete_arpTS);
      DELETE FROM AirportHeliport
      WHERE AirportHeliport.uuid = (SELECT CartographyLabelARP.uuidarphlp FROM CartographyLabelARP WHERE id = OLD.gid);
      RETURN NULL;
  END IF;
  RETURN NEW;
END;
$function$;


CREATE TRIGGER als_function1613
INSTEAD OF INSERT OR UPDATE OR DELETE ON
  als1613 FOR EACH ROW EXECUTE PROCEDURE als_function1613();


-- CTA
CREATE OR REPLACE VIEW cta1702 AS
  SELECT DISTINCT ON (gid)
    cartographylabelairspacearea.id AS gid,
    Airspace._transasID AS id,
    cartographylabelairspacearea.index,
    -- наименование ИКАО воздушного пространства
    AirspaceTimeSlice.designator AS nm,
    -- наименование русское воздушного пространства
    AirspaceTimeSlice.name AS nl,
    AirspaceTimeSlice.controlType AS tp,
    -- соединение всех высотных полей для правильного вывода для стилистики
    concat(
                  -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                    CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN '(' END,
                    (CASE WHEN (upperLimit).unit = 'FL' THEN (upperLimit).unit
                      ELSE ''
                      END),
                   -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                   (CASE WHEN cast(round((upperLimit).value,0) as INTEGER) < 100
                      THEN concat('0', round((upperLimit).value,0))
                      WHEN (upperLimit).value IS NULL THEN 'UNL'
                      ELSE cast(round((upperLimit).value,0) as text)
                      END),
                   CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN ')' END,
                    '#',
                  CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN '(' END,
                  -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                    (CASE WHEN (lowerLimit).unit = 'FL' THEN (lowerLimit).unit
                      ELSE ''
                      END),
                   -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                   (CASE WHEN cast(round((lowerLimit).value,0) as INTEGER) < 100
                      THEN concat('0', round((lowerLimit).value,0))
                      WHEN (lowerLimit).value IS NULL THEN 'GND'
                      ELSE cast(round((lowerLimit).value,0) as text)
                      END),
                      CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN ')' END)
    AS he,
   -- Позывной
    (CASE WHEN callSign SIMILAR TO '%(-)%' then
    concat(substring(callSign FROM '^.*-'), initcap(reverse(split_part(reverse(callsign), '-', 1))))
  else callSign end) AS cs,
    -- Частота
    (frequencyTransmission).value AS tf,
    cartographylabelairspacearea.layerpos,
    cartographylabelairspacearea.longitude as xlbl,
    cartographylabelairspacearea.latitude as ylbl,
    Surface.geom,
    cartographylabelairspacearea.map as map
  FROM cartographylabelairspacearea
    LEFT JOIN Airspace ON cartographylabelairspacearea.uuidairspc = Airspace.uuid
    LEFT JOIN Airspace_AirTrafficManagementService ON cartographylabelairspacearea.uuidairspc = Airspace_AirTrafficManagementService.uuidairspc
    LEFT JOIN AirTrafficManagementServiceTimeSlice ON Airspace_AirTrafficManagementService.uuidAirTrafficManagementService = AirTrafficManagementServiceTimeSlice.uuid
    LEFT JOIN CallsignDetail ON AirTrafficManagementServiceTimeSlice.uuid = CallsignDetail.uuidService
    LEFT JOIN Service_RadioCommunicationChannel ON Airspace_AirTrafficManagementService.uuidAirTrafficManagementService = Service_RadioCommunicationChannel.uuidService
    LEFT JOIN RadioCommunicationChannelTimeSlice ON Service_RadioCommunicationChannel.uuidRadioCommunicationChannel = RadioCommunicationChannelTimeSlice.uuid
    LEFT JOIN AirspaceVolume ON Airspace.uuid = AirspaceVolume.uuidairspc
    LEFT JOIN Surface ON AirspaceVolume.idsurface = Surface.id
    LEFT JOIN AirspaceTimeSlice ON AirspaceVolume.uuidairspc = AirspaceTimeSlice.uuid
    LEFT JOIN timeslice ON TimeSlice.id IN (AirspaceTimeSlice.idTimeSlice, AirTrafficManagementServiceTimeSlice.idtimeslice, RadioCommunicationChannelTimeSlice.idtimeslice)
  WHERE TimeSlice.validTimeBegin <= '2017-02-02' AND (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL) AND AirspaceTimeSlice.type = 'CTA';


CREATE OR REPLACE VIEW ctr1702 AS
  SELECT DISTINCT ON (gid)
    cartographylabelairspacearea.id AS gid,
    Airspace._transasID AS id,
    cartographylabelairspacearea.index,
    -- наименование ИКАО воздушного пространства
    AirspaceTimeSlice.designator AS nm,
    -- наименование русское воздушного пространства
    AirspaceTimeSlice.name AS nl,
    AirspaceTimeSlice.controlType AS tp,
    -- соединение всех высотных полей для правильного вывода для стилистики
    concat(
                  -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                    CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN '(' END,
                    (CASE WHEN (upperLimit).unit = 'FL' THEN (upperLimit).unit
                      ELSE ''
                      END),
                   -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                   (CASE WHEN cast(round((upperLimit).value,0) as INTEGER) < 100
                      THEN concat('0', round((upperLimit).value,0))
                      WHEN (upperLimit).value IS NULL THEN 'UNL'
                      ELSE cast(round((upperLimit).value,0) as text)
                      END),
                   CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN ')' END,
                    '#',
                  CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN '(' END,
                  -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                    (CASE WHEN (lowerLimit).unit = 'FL' THEN (lowerLimit).unit
                      ELSE ''
                      END),
                   -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                   (CASE WHEN cast(round((lowerLimit).value,0) as INTEGER) < 100
                      THEN concat('0', round((lowerLimit).value,0))
                      WHEN (lowerLimit).value IS NULL THEN 'GND'
                      ELSE cast(round((lowerLimit).value,0) as text)
                      END),
                      CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN ')' END)
    AS he,
   -- Позывной
    (CASE WHEN callSign SIMILAR TO '%(-)%' then
    concat(substring(callSign FROM '^.*-'), initcap(reverse(split_part(reverse(callsign), '-', 1))))
   else callSign end) AS cs,
    -- Частота
    (frequencyTransmission).value AS tf,
    cartographylabelairspacearea.layerpos,
    cartographylabelairspacearea.longitude as xlbl,
    cartographylabelairspacearea.latitude as ylbl,
    Surface.geom,
    cartographylabelairspacearea.map as map
  FROM cartographylabelairspacearea
  LEFT JOIN Airspace ON cartographylabelairspacearea.uuidairspc = Airspace.uuid
    LEFT JOIN Airspace_AirTrafficManagementService ON cartographylabelairspacearea.uuidairspc = Airspace_AirTrafficManagementService.uuidairspc
    LEFT JOIN AirTrafficManagementServiceTimeSlice ON Airspace_AirTrafficManagementService.uuidAirTrafficManagementService = AirTrafficManagementServiceTimeSlice.uuid
    LEFT JOIN CallsignDetail ON AirTrafficManagementServiceTimeSlice.uuid = CallsignDetail.uuidService
    LEFT JOIN Service_RadioCommunicationChannel ON Airspace_AirTrafficManagementService.uuidAirTrafficManagementService = Service_RadioCommunicationChannel.uuidService
    LEFT JOIN RadioCommunicationChannelTimeSlice ON Service_RadioCommunicationChannel.uuidRadioCommunicationChannel = RadioCommunicationChannelTimeSlice.uuid
    LEFT JOIN AirspaceVolume ON Airspace.uuid = AirspaceVolume.uuidairspc
    LEFT JOIN Surface ON AirspaceVolume.idsurface = Surface.id
    LEFT JOIN AirspaceTimeSlice ON AirspaceVolume.uuidairspc = AirspaceTimeSlice.uuid
    LEFT JOIN timeslice ON AirspaceTimeSlice.idTimeSlice  = TimeSlice.id WHERE TimeSlice.validTimeBegin <= '2017-02-02'
                                                                                   AND (TimeSlice.validTimeEnd > '2017-02-02'
                                                                                        OR TimeSlice.validTimeEnd is NULL) AND AirspaceTimeSlice.type = 'CTR';


CREATE OR REPLACE VIEW tma1702 AS
  SELECT DISTINCT ON (gid)
    cartographylabelairspacearea.id AS gid,
    Airspace._transasID AS id,
    cartographylabelairspacearea.index,
    -- наименование ИКАО воздушного пространства
    AirspaceTimeSlice.designator AS nm,
    -- наименование русское воздушного пространства
    AirspaceTimeSlice.name AS nl,
    AirspaceTimeSlice.controlType AS tp,
    -- соединение всех высотных полей для правильного вывода для стилистики
    concat(
                  -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                    CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN '(' END,
                    (CASE WHEN (upperLimit).unit = 'FL' THEN (upperLimit).unit
                      ELSE ''
                      END),
                   -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                   (CASE WHEN cast(round((upperLimit).value,0) as INTEGER) < 100
                      THEN concat('0', round((upperLimit).value,0))
                      WHEN (upperLimit).value IS NULL THEN 'UNL'
                      ELSE cast(round((upperLimit).value,0) as text)
                      END),
                   CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN ')' END,
                    '#',
                  CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN '(' END,
                  -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                    (CASE WHEN (lowerLimit).unit = 'FL' THEN (lowerLimit).unit
                      ELSE ''
                      END),
                   -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                   (CASE WHEN cast(round((lowerLimit).value,0) as INTEGER) < 100
                      THEN concat('0', round((lowerLimit).value,0))
                      WHEN (lowerLimit).value IS NULL THEN 'GND'
                      ELSE cast(round((lowerLimit).value,0) as text)
                      END),
                      CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN ')' END)
    AS he,
   -- Позывной
    (CASE WHEN callSign SIMILAR TO '%(-)%' then
    concat(substring(callSign FROM '^.*-'), initcap(reverse(split_part(reverse(callsign), '-', 1))))
   else callSign end) AS cs,
    -- Частота
    (frequencyTransmission).value AS tf,
    cartographylabelairspacearea.layerpos,
    cartographylabelairspacearea.longitude as xlbl,
    cartographylabelairspacearea.latitude as ylbl,
    Surface.geom,
    cartographylabelairspacearea.map as map
  FROM cartographylabelairspacearea
  LEFT JOIN Airspace ON cartographylabelairspacearea.uuidairspc = Airspace.uuid
    LEFT JOIN Airspace_AirTrafficManagementService ON cartographylabelairspacearea.uuidairspc = Airspace_AirTrafficManagementService.uuidairspc
    LEFT JOIN AirTrafficManagementServiceTimeSlice ON Airspace_AirTrafficManagementService.uuidAirTrafficManagementService = AirTrafficManagementServiceTimeSlice.uuid
    LEFT JOIN CallsignDetail ON AirTrafficManagementServiceTimeSlice.uuid = CallsignDetail.uuidService
    LEFT JOIN Service_RadioCommunicationChannel ON Airspace_AirTrafficManagementService.uuidAirTrafficManagementService = Service_RadioCommunicationChannel.uuidService
    LEFT JOIN RadioCommunicationChannelTimeSlice ON Service_RadioCommunicationChannel.uuidRadioCommunicationChannel = RadioCommunicationChannelTimeSlice.uuid
    LEFT JOIN AirspaceVolume ON Airspace.uuid = AirspaceVolume.uuidairspc
    LEFT JOIN Surface ON AirspaceVolume.idsurface = Surface.id
    LEFT JOIN AirspaceTimeSlice ON AirspaceVolume.uuidairspc = AirspaceTimeSlice.uuid
    LEFT JOIN timeslice ON AirspaceTimeSlice.idTimeSlice  = TimeSlice.id WHERE TimeSlice.validTimeBegin <= '2017-02-02'
                                                                                   AND (TimeSlice.validTimeEnd > '2017-02-02'
                                                                                        OR TimeSlice.validTimeEnd is NULL) AND AirspaceTimeSlice.type = 'TMA';


-- Создание представления FIR
CREATE OR REPLACE VIEW fir1702 AS
SELECT
    cartographylabelfir.id AS gid,
    (SELECT Airspace._transasID AS id
    FROM Airspace
    WHERE Airspace.uuid = CartographyLabelFIR.uuidairspc),
    (SELECT AirspaceTimeSlice.designator AS nm
    FROM AirspaceTimeSlice, TimeSlice
    WHERE AirspaceTimeSlice.uuid = CartographyLabelFIR.uuidairspc AND AirspaceTimeSlice.idTimeSlice  = TimeSlice.id
          AND TimeSlice.validTimeBegin <= '2017-02-02' AND (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
    (SELECT AirspaceTimeSlice.name AS nl
    FROM AirspaceTimeSlice, TimeSlice
    WHERE AirspaceTimeSlice.uuid = CartographyLabelFIR.uuidairspc AND AirspaceTimeSlice.idTimeSlice  = TimeSlice.id
          AND TimeSlice.validTimeBegin <= '2017-02-02' AND (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
    (SELECT concat(
                    CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN '(' END,
                  -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                    (CASE WHEN (lowerLimit).unit = 'FL' THEN (lowerLimit).unit END),
                   -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                   (CASE WHEN cast(round((lowerLimit).value,0) as INTEGER) < 100
                      THEN concat('0', round((lowerLimit).value,0))
                      WHEN (lowerLimit).value IS NULL THEN 'GND'
                      ELSE cast(round((lowerLimit).value,0) as text)
                      END),
                      CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN ')' END,
                     ' - ',
                  -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                    CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN '(' END,
                    (CASE WHEN (upperLimit).unit = 'FL' THEN (upperLimit).unit END),
                   -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                   (CASE WHEN cast(round((upperLimit).value,0) as INTEGER) < 100
                      THEN concat('0', round((upperLimit).value,0))
                      WHEN (upperLimit).value IS NULL THEN 'UNL'
                      ELSE cast(round((upperLimit).value,0) as text)
                      END),
                   CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN ')' END)
    FROM AirspaceVolume
    WHERE AirspaceVolume.uuidairspc = CartographyLabelFIR.uuidairspc)
    AS he,
    CartographyLabelFIR.layerpos,
    CartographyLabelFIR.classfir as class,
    CartographyLabelFIR.inform as inform,
    CartographyLabelFIR.time as time,
    CartographyLabelFIR.type as type,
    CartographyLabelFIR.longitude as xlbl,
    CartographyLabelFIR.latitude as ylbl,
    (SELECT Surface.geom
      FROM Surface, AirspaceVolume, AirspaceTimeSlice, timeslice
    WHERE Surface.id = AirspaceVolume.idSurface AND AirspaceVolume.uuidairspc = CartographyLabelFIR.uuidairspc AND
          AirspaceTimeSlice.uuid = AirspaceVolume.uuidairspc AND AirspaceTimeSlice.idTimeSlice  = TimeSlice.id
          AND TimeSlice.validTimeBegin <= '2017-02-02' AND (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
    CartographyLabelFIR.map as map
  FROM CartographyLabelFIR;


CREATE OR REPLACE VIEW DRA_1702 AS
SELECT
  CartographyLabelDraPraRsa.id AS gid,
  Airspace._transasID AS id,
  AirspaceTimeSlice.designator AS nm,
  AirspaceTimeSlice.name AS nl,
  concat(
                -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                  CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN '(' END,
                  (CASE WHEN (upperLimit).unit = 'FL' THEN (upperLimit).unit
                    ELSE ''
                    END),
                 -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                 (CASE WHEN cast(round((upperLimit).value,0) as INTEGER) < 100
                    THEN concat('0', round((upperLimit).value,0))
                    WHEN (upperLimit).value IS NULL THEN 'UNL'
                    ELSE cast(round((upperLimit).value,0) as text)
                    END),
                 CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN ')' END,
                  '#',
                CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN '(' END,
                -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                  (CASE WHEN (lowerLimit).unit = 'FL' THEN (lowerLimit).unit
                    ELSE ''
                    END),
                 -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                 (CASE WHEN cast(round((lowerLimit).value,0) as INTEGER) < 100
                    THEN concat('0', round((lowerLimit).value,0))
                    WHEN (lowerLimit).value IS NULL THEN 'GND'
                    ELSE cast(round((lowerLimit).value,0) as text)
                    END),
                    CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN ')' END)
  AS he,
  CASE WHEN AirspaceActivation.status = 'IN_USE' THEN text 'NOTAM'
    WHEN AirspaceActivation.status = 'ACTIVE' THEN text 'H24'
  END AS rw,
  CartographyLabelDraPraRsa.longitude as xlbl,
  CartographyLabelDraPraRsa.latitude as ylbl,
  st_transform(Surface.geom, 102027),
  CartographyLabelDraPraRsa.map
FROM CartographyLabelDraPraRsa
LEFT JOIN Airspace ON CartographyLabelDraPraRsa.uuidairspc = Airspace.uuid
  LEFT JOIN AirspaceActivation ON Airspace.uuid = AirspaceActivation.uuidairspc
  LEFT JOIN Timesheet ON AirspaceActivation.id = Timesheet.idPropertiesWithSchedule
  LEFT JOIN AirspaceVolume ON Airspace.uuid = AirspaceVolume.uuidairspc
  LEFT JOIN Surface ON AirspaceVolume.idsurface = Surface.id
  LEFT JOIN AirspaceTimeSlice ON AirspaceVolume.uuidairspc = AirspaceTimeSlice.uuid
  LEFT JOIN timeslice ON AirspaceTimeSlice.idTimeSlice  = TimeSlice.id WHERE TimeSlice.validTimeBegin <= '2017-02-02'
                                                                                 AND (TimeSlice.validTimeEnd > '2017-02-02'
                                                                                      OR TimeSlice.validTimeEnd is NULL) AND AirspaceTimeSlice.type = 'D';


CREATE OR REPLACE VIEW PRA_1702 AS
SELECT
  CartographyLabelDraPraRsa.id AS gid,
  Airspace._transasID AS id,
  AirspaceTimeSlice.designator AS nm,
  AirspaceTimeSlice.name AS nl,
  concat(
                -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                  CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN '(' END,
                  (CASE WHEN (upperLimit).unit = 'FL' THEN (upperLimit).unit
                    ELSE ''
                    END),
                 -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                 (CASE WHEN cast(round((upperLimit).value,0) as INTEGER) < 100
                    THEN concat('0', round((upperLimit).value,0))
                    WHEN (upperLimit).value IS NULL THEN 'UNL'
                    ELSE cast(round((upperLimit).value,0) as text)
                    END),
                 CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN ')' END,
                  '#',
                CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN '(' END,
                -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                  (CASE WHEN (lowerLimit).unit = 'FL' THEN (lowerLimit).unit
                    ELSE ''
                    END),
                 -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                 (CASE WHEN cast(round((lowerLimit).value,0) as INTEGER) < 100
                    THEN concat('0', round((lowerLimit).value,0))
                    WHEN (lowerLimit).value IS NULL THEN 'GND'
                    ELSE cast(round((lowerLimit).value,0) as text)
                    END),
                    CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN ')' END)
  AS he,
  CASE WHEN AirspaceActivation.status = 'IN_USE' THEN text 'NOTAM'
    WHEN AirspaceActivation.status = 'ACTIVE' THEN text 'H24'
  END AS rw,
  CartographyLabelDraPraRsa.longitude as xlbl,
  CartographyLabelDraPraRsa.latitude as ylbl,
  st_transform(Surface.geom, 102027),
  CartographyLabelDraPraRsa.map
FROM CartographyLabelDraPraRsa
LEFT JOIN Airspace ON CartographyLabelDraPraRsa.uuidairspc = Airspace.uuid
  LEFT JOIN AirspaceActivation ON Airspace.uuid = AirspaceActivation.uuidairspc
  LEFT JOIN Timesheet ON AirspaceActivation.id = Timesheet.idPropertiesWithSchedule
  LEFT JOIN AirspaceVolume ON Airspace.uuid = AirspaceVolume.uuidairspc
  LEFT JOIN Surface ON AirspaceVolume.idsurface = Surface.id
  LEFT JOIN AirspaceTimeSlice ON AirspaceVolume.uuidairspc = AirspaceTimeSlice.uuid
  LEFT JOIN timeslice ON AirspaceTimeSlice.idTimeSlice  = TimeSlice.id WHERE TimeSlice.validTimeBegin <= '2017-02-02'
                                                                                 AND (TimeSlice.validTimeEnd > '2017-02-02'
                                                                                      OR TimeSlice.validTimeEnd is NULL) AND AirspaceTimeSlice.type = 'P';


CREATE OR REPLACE VIEW PRA2mln_1702 AS
SELECT
  CartographyLabelDraPraRsa.id AS gid,
  Airspace._transasID AS id,
  AirspaceTimeSlice.designator AS nm,
  AirspaceTimeSlice.name AS nl,
  concat(
                -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                  CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN '(' END,
                  (CASE WHEN (upperLimit).unit = 'FL' THEN (upperLimit).unit
                    ELSE ''
                    END),
                 -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                 (CASE WHEN cast(round((upperLimit).value,0) as INTEGER) < 100
                    THEN concat('0', round((upperLimit).value,0))
                    WHEN (upperLimit).value IS NULL THEN 'UNL'
                    ELSE cast(round((upperLimit).value,0) as text)
                    END),
                 CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN ')' END,
                  '#',
                CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN '(' END,
                -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                  (CASE WHEN (lowerLimit).unit = 'FL' THEN (lowerLimit).unit
                    ELSE ''
                    END),
                 -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                 (CASE WHEN cast(round((lowerLimit).value,0) as INTEGER) < 100
                    THEN concat('0', round((lowerLimit).value,0))
                    WHEN (lowerLimit).value IS NULL THEN 'GND'
                    ELSE cast(round((lowerLimit).value,0) as text)
                    END),
                    CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN ')' END)
  AS he,
  CASE WHEN AirspaceActivation.status = 'IN_USE' THEN text 'NOTAM'
    WHEN AirspaceActivation.status = 'ACTIVE' THEN text 'H24'
  END AS rw,
  CartographyLabelDraPraRsa.longitude2mln as xlbl,
  CartographyLabelDraPraRsa.latitude2mln as ylbl,
  CartographyLabelDraPraRsa.longitudefn as xlbl1,
  CartographyLabelDraPraRsa.latitudefn as ylbl1,
  CartographyLabelDraPraRsa.footnote AS sn,
  CartographyLabelDraPraRsa.size,
  st_transform(Surface.geom, 102027),
  CartographyLabelDraPraRsa.map2mln
FROM CartographyLabelDraPraRsa
LEFT JOIN Airspace ON CartographyLabelDraPraRsa.uuidairspc = Airspace.uuid
  LEFT JOIN AirspaceActivation ON Airspace.uuid = AirspaceActivation.uuidairspc
  LEFT JOIN Timesheet ON AirspaceActivation.id = Timesheet.idPropertiesWithSchedule
  LEFT JOIN AirspaceVolume ON Airspace.uuid = AirspaceVolume.uuidairspc
  LEFT JOIN Surface ON AirspaceVolume.idsurface = Surface.id
  LEFT JOIN AirspaceTimeSlice ON AirspaceVolume.uuidairspc = AirspaceTimeSlice.uuid
  LEFT JOIN timeslice ON AirspaceTimeSlice.idTimeSlice  = TimeSlice.id WHERE TimeSlice.validTimeBegin <= '2017-02-02'
                                          AND (TimeSlice.validTimeEnd > '2017-02-02'
                                          OR TimeSlice.validTimeEnd is NULL) AND AirspaceTimeSlice.type = 'P';

CREATE OR REPLACE FUNCTION cta_function1613()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
BEGIN
  IF TG_OP = 'INSERT'
  THEN
    -- вставляем все данные из представления в соответствующие ячейки реально существующих таблиц БД
    WITH
      select_Arspc AS (SELECT uuid FROM airspace WHERE airspace._transasid = NEW.id)
      -- НИЖЕ идёт вот этот длинный код - если его раскомментировать, то триггер будет полностью вставлять новый объект при вставке в view FIR (и геометрию, и nm, nl и тд)
      /*
        inserted_Srfc AS (INSERT INTO Surface (id, geom, srid) VALUES (nextval('auto_id_surface'), NEW.geom, '4326') RETURNING Surface.id),
        inserted_airspace AS (INSERT INTO Airspace (uuid, _transasID) VALUES (uuid_generate_v4(), NEW.id) RETURNING uuid),
        insert_TimeSliceAirspace AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-12-08') RETURNING timeslice.id),
        inserted_airspaceTS AS (INSERT INTO AirspaceTimeSlice (uuid, idTimeSlice, designator, name)
        VALUES ((SELECT inserted_airspace.uuid FROM inserted_airspace), (SELECT insert_TimeSliceAirspace.id FROM insert_TimeSliceAirspace), NEW.nm, NEW.nl)),
        -- парсинг строки he и вставка высот
        inserted_AirspaceVolume AS (INSERT INTO AirspaceVolume (lowerLimit, lowerLimitReference, upperLimit, upperLimitReference, idSurface, uuidairspc)
        VALUES ( ROW
                -- парсим столбец he из БД, чтобы вытащить нижнюю границу (достаем оттуда отдельно значение высоты, отдельно ед-цы измерения
                ( (SELECT cast((regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', 'g'))[1] as DECIMAL(12,4))), (SELECT (regexp_matches(NEW.he,'GND', 'g'))[1]),
                -- две строчки ниже - выбирают единицы измерения: если в нижней границе есть 'FL' - то ед-цы = FL, если только цифры - то ед-цы = М, в противном случае NULL
                (SELECT (CASE WHEN (SELECT (regexp_matches(NEW.he,'^FL', 'g'))[1]) ILIKE 'FL' THEN text 'FL'
                WHEN (exists(SELECT regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', '')) OR NEW.he ILIKE '%(%') THEN 'M' ELSE NULL END))),
                -- Если ед-цы измерения = M то нужно еще определить SFC или MSL (по нашему AGL или AMSL)
                (CASE WHEN  (SELECT (regexp_matches(NEW.he,'^\(', 'g'))[1]) ILIKE '('THEN 'SFC'
                WHEN (SELECT (regexp_matches(NEW.he,'^FL', 'g'))[1]) ILIKE 'FL' THEN NULL
                WHEN exists(SELECT regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', '')) THEN 'MSL' ELSE NULL END),
                -- парсим столбец he из БД, чтобы вытащить верхнюю границу
                 ROW( (SELECT cast((regexp_matches(NEW.he, '([1-9][0-9]*)\)?$', 's'))[1] as DECIMAL(12,4))), (SELECT (regexp_matches(NEW.he,'UNL', 'g'))[1]),
                (SELECT (CASE WHEN (SELECT (regexp_matches(NEW.he,'\sFL', 'g'))[1]) ILIKE ' FL' THEN text 'FL'
                  WHEN (regexp_replace(NEW.he, '[A-Z]*([0-9]*)? ?- ?([A-Z]*?)0*', '') != '' OR NEW.he ILIKE '%(%') THEN 'M' ELSE NULL END))),
                -- Если ед-цы измерения = M то нужно еще определить SFC или MSL (по нашему AGL или AMSL)
                CASE WHEN (SELECT (regexp_matches(NEW.he,'\s\(', 'g'))[1]) ILIKE ' (' THEN 'SFC'
                WHEN (SELECT (regexp_matches(NEW.he,'\sFL', 'g'))[1]) ILIKE ' FL' THEN NULL
                WHEN (SELECT regexp_matches(NEW.he, '([1-9][0-9]*)\)?$', 's')) NOTNULL THEN 'MSL' ELSE NULL END,
       (SELECT select_Srfc.id FROM select_Srfc), (SELECT select_Arspc.uuid FROM select_Arspc))),
      -- вставка в таблицу Unit. Когда приходит geojson - мы из него в базу вставляем параметр unit_type,
      -- чтобы тут тоже была аналогичная строка в Unit - вставим её
      insert_Unit AS (INSERT INTO Unit (uuid) VALUES (uuid_generate_v4()) RETURNING uuid),
      insert_TimeSliceUnit AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-09-15') RETURNING timeslice.id),
      insert_UnitTS AS (INSERT INTO UnitTimeSlice (uuid, idTimeSlice) VALUES ((SELECT insert_Unit.uuid FROM insert_Unit), (SELECT insert_TimeSliceUnit.id FROM insert_TimeSliceUnit))),
      -- вставка кучи таблиц (только uuid, id, timeslice) - необходимых для связки в конце концов таблиц CallsignDetail
      --  и AirTrafficManagementService, а AirTrafficManagementService в свою очередь можно связать с Airspace
      insert_service AS (INSERT INTO Service (uuid) VALUES (uuid_generate_v4()) RETURNING uuid),
      insert_TimeSliceService AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-09-15') RETURNING timeslice.id),
      insert_serviceTS AS (INSERT INTO ServiceTimeSlice (uuid, idTimeSlice) VALUES
        ((SELECT insert_service.uuid FROM insert_service), (SELECT insert_TimeSliceService.id FROM insert_TimeSliceService)) RETURNING idTimeSlice),
      insert_AirTrffcMngmntSrvc AS (INSERT INTO AirTrafficManagementService (uuid) VALUES ((SELECT insert_service.uuid FROM insert_service)) RETURNING uuid),
      insert_TimeSliceAirTrffcMngmntSrvc AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-09-15') RETURNING timeslice.id),
      insert_AirTrafficManagementServiceTS AS (INSERT INTO AirTrafficManagementServiceTimeSlice (idTimeSlice, uuid) VALUES
        ((SELECT insert_TimeSliceAirTrffcMngmntSrvc.id FROM insert_TimeSliceAirTrffcMngmntSrvc),(SELECT insert_AirTrffcMngmntSrvc.uuid FROM insert_AirTrffcMngmntSrvc))),
      insert_Arspc_AirTrffcMngmntSrvc AS (INSERT INTO Airspace_AirTrafficManagementService (uuidairspc, uuidAirTrafficManagementService)
        VALUES ((SELECT inserted_airspace.uuid FROM inserted_airspace), (SELECT insert_AirTrffcMngmntSrvc.uuid FROM insert_AirTrffcMngmntSrvc))),
      -- позывные вставлены в view -> вставляем в таблицу CallsignDetail
      insert_CllsgnDtl AS (INSERT INTO CallsignDetail (id, callSign, uuidService) VALUES (nextval('auto_id_callsign'), NEW.cs,
                                                                                          (SELECT insert_AirTrffcMngmntSrvc.uuid FROM insert_AirTrffcMngmntSrvc))),
      -- частоты
      insert_rdChnnl AS (INSERT INTO RadioCommunicationChannel(uuid) VALUES (uuid_generate_v4()) RETURNING RadioCommunicationChannel.uuid),
      insert_TimeSliceRdChnnl AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-09-15') RETURNING timeslice.id),
      insert_rdChnnlTS AS (INSERT INTO RadioCommunicationChannelTimeSlice (uuid, idTimeSlice, frequencyTransmission)
        VALUES ((SELECT insert_rdChnnl.uuid FROM insert_rdChnnl), (SELECT insert_TimeSliceRdChnnl.id FROM insert_TimeSliceRdChnnl), ROW (NEW.tf, NULL)))
*/
    INSERT INTO cartographylabelairspacearea(id, index, longitude, latitude, map, layerpos, uuidairspc) VALUES
        (NEW.gid, NEW.index, NEW.xlbl, NEW.ylbl, NEW.map, NEW.layerpos,
         (SELECT select_Arspc.uuid FROM select_Arspc));
    RETURN NEW;
  ELSIF TG_OP = 'UPDATE'
    THEN
      UPDATE AirspaceTimeSlice
        SET designator = NEW.nm, name = NEW.nl, controlType = NEW.tp
        WHERE AirspaceTimeSlice.uuid = (SELECT cartographylabelairspacearea.uuidairspc FROM cartographylabelairspacearea WHERE cartographylabelairspacearea.id = OLD.gid);
      UPDATE Airspace
        SET  _transasID = NEW.id
        WHERE Airspace.uuid = (SELECT cartographylabelairspacearea.uuidairspc FROM cartographylabelairspacearea WHERE cartographylabelairspacearea.id = OLD.gid);
      UPDATE AirspaceVolume

      SET
          lowerLimit     =     ROW
                -- парсим столбец he из БД, чтобы вытащить нижнюю границу (достаем оттуда отдельно значение высоты, отдельно ед-цы измерения
                ( (SELECT cast((regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', 'g'))[1] as DECIMAL(12,4))), (SELECT (regexp_matches(NEW.he,'GND', 'g'))[1]),
                -- две строчки ниже - выбирают единицы измерения: если в нижней границе есть 'FL' - то ед-цы = FL, если только цифры - то ед-цы = М, в противном случае NULL
                (SELECT (CASE WHEN (SELECT (regexp_matches(NEW.he,'^FL', 'g'))[1]) ILIKE 'FL' THEN text 'FL'
                WHEN (exists(SELECT regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', '')) OR NEW.he ILIKE '%(%') THEN 'M' ELSE NULL END))),
          lowerLimitReference = (CASE WHEN  (SELECT (regexp_matches(NEW.he,'^\(', 'g'))[1]) ILIKE '('THEN 'SFC'
                WHEN (SELECT (regexp_matches(NEW.he,'^FL', 'g'))[1]) ILIKE 'FL' THEN NULL
                WHEN exists(SELECT regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', '')) THEN 'MSL' ELSE NULL END),
          upperLimit          = ROW( (SELECT cast((regexp_matches(NEW.he, '([1-9][0-9]*)\)?$', 's'))[1] as DECIMAL(12,4))), (SELECT (regexp_matches(NEW.he,'UNL', 'g'))[1]),
                (SELECT (CASE WHEN (SELECT (regexp_matches(NEW.he,'\sFL', 'g'))[1]) ILIKE ' FL' THEN text 'FL'
                  WHEN (regexp_replace(NEW.he, '[A-Z]*([0-9]*)? ?- ?([A-Z]*?)0*', '') != '' OR NEW.he ILIKE '%(%') THEN 'M' ELSE NULL END))),
          upperLimitReference =  CASE WHEN (SELECT (regexp_matches(NEW.he,'\s\(', 'g'))[1]) ILIKE ' (' THEN 'SFC'
                WHEN (SELECT (regexp_matches(NEW.he,'\sFL', 'g'))[1]) ILIKE ' FL' THEN NULL
                WHEN (SELECT regexp_matches(NEW.he, '([1-9][0-9]*)\)?$', 's')) NOTNULL THEN 'MSL' ELSE NULL END
        WHERE AirspaceVolume.uuidairspc = (SELECT cartographylabelairspacearea.uuidairspc FROM cartographylabelairspacearea WHERE cartographylabelairspacearea.id = OLD.gid);

      UPDATE Surface
        SET geom = NEW.geom
        WHERE Surface.id = (SELECT AirspaceVolume.idSurface
                            FROM AirspaceVolume
                            WHERE AirspaceVolume.uuidairspc = (SELECT cartographylabelairspacearea.uuidairspc FROM cartographylabelairspacearea WHERE cartographylabelairspacearea.id = OLD.gid));
      UPDATE cartographylabelairspacearea
        SET index = NEW.index, layerpos = NEW.layerpos, longitude = NEW.xlbl, latitude = NEW.ylbl, map = NEW.map
        WHERE cartographylabelairspacearea.id = OLD.gid;
      UPDATE CallsignDetail
        SET callSign = NEW.cs
        WHERE CallsignDetail.uuidService IN (SELECT Airspace_AirTrafficManagementService.uuidAirTrafficManagementService
                                             FROM Airspace_AirTrafficManagementService
                                             WHERE Airspace_AirTrafficManagementService.uuidairspc = (SELECT cartographylabelairspacearea.uuidairspc FROM cartographylabelairspacearea WHERE cartographylabelairspacearea.id = OLD.gid));
      UPDATE RadioCommunicationChannelTimeSlice
      SET frequencyTransmission.value = NEW.tf
      WHERE RadioCommunicationChannelTimeSlice.uuid IN (SELECT Service_RadioCommunicationChannel.uuidRadioCommunicationChannel
                                               FROM Service_RadioCommunicationChannel
                                               WHERE Service_RadioCommunicationChannel.uuidService IN (SELECT Airspace_AirTrafficManagementService.uuidAirTrafficManagementService
                                                                                                   FROM Airspace_AirTrafficManagementService
                                                                                                   WHERE Airspace_AirTrafficManagementService.uuidairspc = (SELECT cartographylabelairspacearea.uuidairspc FROM cartographylabelairspacearea WHERE cartographylabelairspacearea.id = OLD.gid)));

      RETURN NEW;
  ELSIF TG_OP = 'DELETE'
    THEN
      WITH deleteAirspc AS (DELETE FROM Airspace WHERE Airspace.uuid = (SELECT cartographylabelairspacearea.uuidairspc FROM cartographylabelairspacearea WHERE cartographylabelairspacearea.id = OLD.gid)),
        deleteAirspcTS AS (DELETE FROM AirspaceTimeSlice WHERE AirspaceTimeSlice.uuid = (SELECT cartographylabelairspacearea.uuidairspc FROM cartographylabelairspacearea WHERE cartographylabelairspacearea.id = OLD.gid) RETURNING AirspaceTimeSlice.idTimeSlice),
        deleteTSAirspc AS (DELETE FROM TimeSlice WHERE TimeSlice.id IN (SELECT deleteAirspcTS.idTimeSlice FROM deleteAirspcTS)),
        deleteAirspcVlm AS (DELETE FROM AirspaceVolume WHERE AirspaceVolume.uuidairspc = (SELECT cartographylabelairspacearea.uuidairspc FROM cartographylabelairspacearea WHERE cartographylabelairspacearea.id = OLD.gid) RETURNING AirspaceVolume.idSurface),
        deleteSrfc AS (DELETE FROM Surface WHERE Surface.id IN (SELECT deleteAirspcVlm.idSurface FROM deleteAirspcVlm)),
        deleteAirspcAirTrffcMngmnt AS (DELETE FROM Airspace_AirTrafficManagementService WHERE Airspace_AirTrafficManagementService.uuidairspc = OLD.uuid RETURNING uuidAirTrafficManagementService),
        deleteAirTrffcMngmnt AS (DELETE FROM AirTrafficManagementService WHERE AirTrafficManagementService.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)),
        deleteAirTrffcMngmntTS AS (DELETE FROM AirTrafficManagementServiceTimeSlice WHERE AirTrafficManagementServiceTimeSlice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt) RETURNING idTimeSlice),
        deleteTSAirTrffcMngmnt AS (DELETE FROM TimeSlice WHERE TimeSlice.id IN (SELECT deleteAirTrffcMngmntTS.idTimeSlice FROM deleteAirTrffcMngmntTS)),
        delete_AirTrffcCntrlSrvcTS AS (DELETE FROM AirTrafficControlServiceTimeSlice WHERE AirTrafficControlServiceTimeSlice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)  RETURNING AirTrafficControlServiceTimeSlice.uuid),
        delete_AirTrffcCntrlSrvc AS (DELETE FROM AirTrafficControlService WHERE AirTrafficControlService.uuid IN (SELECT delete_AirTrffcCntrlSrvcTS.uuid FROM delete_AirTrffcCntrlSrvcTS)),
        delete_GrndTrffcCntrlSrvcTS AS (DELETE FROM GroundTrafficControlServiceTimeSlice WHERE GroundTrafficControlServiceTimeSlice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)  RETURNING GroundTrafficControlServiceTimeSlice.uuid),
        delete_GrndTrffcCntrlSrvc AS (DELETE FROM GroundTrafficControlService WHERE GroundTrafficControlService.uuid IN (SELECT delete_GrndTrffcCntrlSrvcTS.uuid FROM delete_GrndTrffcCntrlSrvcTS)),
        delete_TrffcSprtnSrvcTS AS (DELETE FROM trafficseparationservicetimeslice WHERE trafficseparationservicetimeslice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)  RETURNING trafficseparationservicetimeslice.uuid),
        delete_TrffcSprtnSrvc AS (DELETE FROM trafficseparationservice WHERE trafficseparationservice.uuid IN (SELECT delete_TrffcSprtnSrvcTS.uuid FROM delete_TrffcSprtnSrvcTS)),
        delete_InfrmtnSrvcTS AS (DELETE FROM InformationServiceTimeSlice WHERE InformationServiceTimeSlice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)  RETURNING InformationServiceTimeSlice.uuid),
        delete_InfrmtnSrvc AS (DELETE FROM InformationService WHERE InformationService.uuid IN (SELECT delete_InfrmtnSrvcTS.uuid FROM delete_InfrmtnSrvcTS)),
        deleteSrvc AS (DELETE FROM Service WHERE Service.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt) ),
        deleteSrvcTS AS (DELETE FROM ServiceTimeSlice WHERE ServiceTimeSlice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt) RETURNING idTimeSlice, uuidUnit),
        deleteTSSrvc AS (DELETE FROM TimeSlice WHERE id IN (SELECT deleteSrvcTS.idTimeSlice FROM deleteSrvcTS)),
        deleteUnit AS (DELETE FROM Unit WHERE Unit.uuid IN (SELECT deleteSrvcTS.uuidUnit FROM deleteSrvcTS)),
        deleteUnitTS AS (DELETE FROM UnitTimeSlice WHERE UnitTimeSlice.uuid IN (SELECT deleteSrvcTS.uuidUnit FROM deleteSrvcTS) RETURNING idTimeSlice),
        deleteTSUnit AS (DELETE FROM TimeSlice WHERE TimeSlice.id IN (SELECT deleteUnitTS.idTimeSlice FROM deleteUnitTS)),
        deleteCrtgrphLbl AS (DELETE FROM cartographylabelairspacearea WHERE cartographylabelairspacearea.id = OLD.gid),
        deleteAirpcActvtn AS (DELETE FROM AirspaceActivation WHERE AirspaceActivation.uuidairspc = (SELECT cartographylabelairspacearea.uuidairspc FROM cartographylabelairspacearea WHERE cartographylabelairspacearea.id = OLD.gid) RETURNING AirspaceActivation.id),
        deleteTmshht AS (DELETE FROM Timesheet WHERE Timesheet.idpropertieswithschedule = (SELECT deleteAirpcActvtn.id FROM deleteAirpcActvtn)),
        deleteCllsgnDtl AS (DELETE FROM CallsignDetail WHERE CallsignDetail.uuidService IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)),
        deleteSrvcRdCmmnctnChnnl AS (DELETE FROM Service_RadioCommunicationChannel WHERE Service_RadioCommunicationChannel.uuidService IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt) RETURNING uuidRadioCommunicationChannel),
        deleteRdCmmnctnChnnl AS (DELETE FROM RadioCommunicationChannel WHERE RadioCommunicationChannel.uuid IN (SELECT deleteSrvcRdCmmnctnChnnl.uuidRadioCommunicationChannel FROM deleteSrvcRdCmmnctnChnnl)),
        deleteRdCmmnctnChnnlTS AS (DELETE FROM RadioCommunicationChannelTimeSlice WHERE RadioCommunicationChannelTimeSlice.uuid IN (SELECT deleteSrvcRdCmmnctnChnnl.uuidRadioCommunicationChannel FROM deleteSrvcRdCmmnctnChnnl) RETURNING idTimeSlice)
        DELETE FROM PropertiesWithSchedule WHERE id = (SELECT deleteAirpcActvtn.id FROM deleteAirpcActvtn);
      RETURN NULL;
  END IF;
  RETURN NEW;
END;
$function$;




CREATE OR REPLACE FUNCTION fir_function1613()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
BEGIN
  IF TG_OP = 'INSERT'
  THEN
    -- вставляем все данные из представления в соответствующие ячейки реально существующих таблиц БД
    WITH inserted_Srfc AS (INSERT INTO Surface (id, geom, srid) VALUES (nextval('auto_id_surface'), NEW.geom, '4326') RETURNING Surface.id),
      inserted_airspace AS (INSERT INTO Airspace (uuid, _transasID) VALUES (uuid_generate_v4(), NEW.id) RETURNING uuid),
      insert_TimeSliceAirspace AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-12-08') RETURNING timeslice.id),
      inserted_airspaceTS AS (INSERT INTO AirspaceTimeSlice (uuid, idTimeSlice, designator, name)
      VALUES ((SELECT inserted_airspace.uuid FROM inserted_airspace), (SELECT insert_TimeSliceAirspace.id FROM insert_TimeSliceAirspace), NEW.nm, NEW.nl)),
      inserted_AirspaceVolume AS (INSERT INTO AirspaceVolume (lowerLimit, lowerLimitReference, upperLimit, upperLimitReference, idSurface, uuidairspc)
        VALUES ( ROW
                -- парсим столбец he из БД, чтобы вытащить нижнюю границу (достаем оттуда отдельно значение высоты, отдельно ед-цы измерения
                ( (SELECT cast((regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', 'g'))[1] as DECIMAL(12,4))), (SELECT (regexp_matches(NEW.he,'GND', 'g'))[1]),
                -- две строчки ниже - выбирают единицы измерения: если в нижней границе есть 'FL' - то ед-цы = FL, если только цифры - то ед-цы = М, в противном случае NULL
                (SELECT (CASE WHEN (SELECT (regexp_matches(NEW.he,'^FL', 'g'))[1]) ILIKE 'FL' THEN text 'FL'
                WHEN (exists(SELECT regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', '')) OR NEW.he ILIKE '%(%') THEN 'M' ELSE NULL END))),
                -- Если ед-цы измерения = M то нужно еще определить SFC или MSL (по нашему AGL или AMSL)
                (CASE WHEN  (SELECT (regexp_matches(NEW.he,'^\(', 'g'))[1]) ILIKE '('THEN 'SFC'
                WHEN (SELECT (regexp_matches(NEW.he,'^FL', 'g'))[1]) ILIKE 'FL' THEN NULL
                WHEN exists(SELECT regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', '')) THEN 'MSL' ELSE NULL END),
                -- парсим столбец he из БД, чтобы вытащить верхнюю границу
                 ROW( (SELECT cast((regexp_matches(NEW.he, '([1-9][0-9]*)\)?$', 's'))[1] as DECIMAL(12,4))), (SELECT (regexp_matches(NEW.he,'UNL', 'g'))[1]),
                (SELECT (CASE WHEN (SELECT (regexp_matches(NEW.he,'\sFL', 'g'))[1]) ILIKE ' FL' THEN text 'FL'
                  WHEN (regexp_replace(NEW.he, '[A-Z]*([0-9]*)? ?- ?([A-Z]*?)0*', '') != '' OR NEW.he ILIKE '%(%') THEN 'M' ELSE NULL END))),
                -- Если ед-цы измерения = M то нужно еще определить SFC или MSL (по нашему AGL или AMSL)
                CASE WHEN (SELECT (regexp_matches(NEW.he,'\s\(', 'g'))[1]) ILIKE ' (' THEN 'SFC'
                WHEN (SELECT (regexp_matches(NEW.he,'\sFL', 'g'))[1]) ILIKE ' FL' THEN NULL
                WHEN (SELECT regexp_matches(NEW.he, '([1-9][0-9]*)\)?$', 's')) NOTNULL THEN 'MSL' ELSE NULL END,
       (SELECT inserted_Srfc.id FROM inserted_Srfc), (SELECT inserted_airspace.uuid FROM inserted_airspace)))
    INSERT INTO CartographyLabelFIR(id, inform, time, type, longitude, latitude, map, uuidairspc) VALUES
        (nextval('auto_id_cartography_label_fir'), NEW.inform, NEW.time, NEW.type, NEW.xlbl, NEW.ylbl, NEW.map,
         (SELECT inserted_airspace.uuid FROM inserted_airspace));
    RETURN NEW;
  ELSIF TG_OP = 'UPDATE'
    THEN
      UPDATE AirspaceTimeSlice
        SET designator = NEW.nm, name = NEW.nl
        WHERE AirspaceTimeSlice.uuid = (SELECT CartographyLabelFIR.uuidairspc FROM CartographyLabelFIR WHERE CartographyLabelFIR.id = OLD.gid);
      UPDATE Airspace
        SET  _transasID = NEW.id
        WHERE Airspace.uuid = (SELECT CartographyLabelFIR.uuidairspc FROM CartographyLabelFIR WHERE CartographyLabelFIR.id = OLD.gid);
      UPDATE AirspaceVolume

      SET
          lowerLimit     =     ROW
                -- парсим столбец he из БД, чтобы вытащить нижнюю границу (достаем оттуда отдельно значение высоты, отдельно ед-цы измерения
                ( (SELECT cast((regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', 'g'))[1] as DECIMAL(12,4))), (SELECT (regexp_matches(NEW.he,'GND', 'g'))[1]),
                -- две строчки ниже - выбирают единицы измерения: если в нижней границе есть 'FL' - то ед-цы = FL, если только цифры - то ед-цы = М, в противном случае NULL
                (SELECT (CASE WHEN (SELECT (regexp_matches(NEW.he,'^FL', 'g'))[1]) ILIKE 'FL' THEN text 'FL'
                WHEN (exists(SELECT regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', '')) OR NEW.he ILIKE '%(%') THEN 'M' ELSE NULL END))),
          lowerLimitReference = (CASE WHEN  (SELECT (regexp_matches(NEW.he,'^\(', 'g'))[1]) ILIKE '('THEN 'SFC'
                WHEN (SELECT (regexp_matches(NEW.he,'^FL', 'g'))[1]) ILIKE 'FL' THEN NULL
                WHEN exists(SELECT regexp_matches(NEW.he, '[1-9][0-9]*(?= ?-)', '')) THEN 'MSL' ELSE NULL END),
          upperLimit          = ROW( (SELECT cast((regexp_matches(NEW.he, '([1-9][0-9]*)\)?$', 's'))[1] as DECIMAL(12,4))), (SELECT (regexp_matches(NEW.he,'UNL', 'g'))[1]),
                (SELECT (CASE WHEN (SELECT (regexp_matches(NEW.he,'\sFL', 'g'))[1]) ILIKE ' FL' THEN text 'FL'
                  WHEN (regexp_replace(NEW.he, '[A-Z]*([0-9]*)? ?- ?([A-Z]*?)0*', '') != '' OR NEW.he ILIKE '%(%') THEN 'M' ELSE NULL END))),
          upperLimitReference =  CASE WHEN (SELECT (regexp_matches(NEW.he,'\s\(', 'g'))[1]) ILIKE ' (' THEN 'SFC'
                WHEN (SELECT (regexp_matches(NEW.he,'\sFL', 'g'))[1]) ILIKE ' FL' THEN NULL
                WHEN (SELECT regexp_matches(NEW.he, '([1-9][0-9]*)\)?$', 's')) NOTNULL THEN 'MSL' ELSE NULL END
        WHERE AirspaceVolume.uuidairspc = (SELECT CartographyLabelFIR.uuidairspc FROM CartographyLabelFIR WHERE CartographyLabelFIR.id = OLD.gid);

      UPDATE Surface
        SET geom = NEW.geom
        WHERE Surface.id = (SELECT AirspaceVolume.idSurface
                            FROM AirspaceVolume
                            WHERE AirspaceVolume.uuidairspc = (SELECT CartographyLabelFIR.uuidairspc FROM CartographyLabelFIR WHERE CartographyLabelFIR.id = OLD.gid));
      UPDATE CartographyLabelFIR
        SET longitude = NEW.xlbl, latitude = NEW.ylbl, inform = NEW.inform, time = NEW.time, type = NEW.type, map = NEW.map
        WHERE CartographyLabelFIR.id = OLD.gid;
      RETURN NEW;
  ELSIF TG_OP = 'DELETE'
    THEN
      WITH deleteAirspc AS (DELETE FROM Airspace WHERE Airspace.uuid = (SELECT CartographyLabelFIR.uuidairspc FROM CartographyLabelFIR WHERE CartographyLabelFIR.id = OLD.gid)),
        deleteAirspcTS AS (DELETE FROM AirspaceTimeSlice WHERE AirspaceTimeSlice.uuid = (SELECT CartographyLabelFIR.uuidairspc FROM CartographyLabelFIR WHERE CartographyLabelFIR.id = OLD.gid) RETURNING AirspaceTimeSlice.idTimeSlice),
        deleteTSAirspc AS (DELETE FROM TimeSlice WHERE TimeSlice.id IN (SELECT deleteAirspcTS.idTimeSlice FROM deleteAirspcTS)),
        deleteAirspcVlm AS (DELETE FROM AirspaceVolume WHERE AirspaceVolume.uuidairspc = (SELECT CartographyLabelFIR.uuidairspc FROM CartographyLabelFIR WHERE CartographyLabelFIR.id = OLD.gid) RETURNING AirspaceVolume.idSurface),
        deleteSrfc AS (DELETE FROM Surface WHERE Surface.id IN (SELECT deleteAirspcVlm.idSurface FROM deleteAirspcVlm)),
        deleteCrtgrphLbl AS (DELETE FROM CartographyLabelFIR WHERE CartographyLabelFIR.id = OLD.gid),
        deleteAirpcActvtn AS (DELETE FROM AirspaceActivation WHERE AirspaceActivation.uuidairspc = (SELECT CartographyLabelFIR.uuidairspc FROM CartographyLabelFIR WHERE CartographyLabelFIR.id = OLD.gid) RETURNING AirspaceActivation.id),
        deleteTmshht AS (DELETE FROM Timesheet WHERE Timesheet.idpropertieswithschedule = (SELECT deleteAirpcActvtn.id FROM deleteAirpcActvtn))
        DELETE FROM PropertiesWithSchedule WHERE id = (SELECT deleteAirpcActvtn.id FROM deleteAirpcActvtn);
      RETURN NULL;
  END IF;
  RETURN NEW;
END;
$function$;




CREATE OR REPLACE FUNCTION zapr_function()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
BEGIN
  IF TG_OP = 'INSERT'
  THEN
    WITH inserted_Srfc AS (INSERT INTO Surface (id, geom, srid) VALUES (nextval('auto_id_surface'), NEW.geom, NEW.srid) RETURNING Surface.id),
      inserted_airspace AS (INSERT INTO Airspace (uuid, _transasID) VALUES (uuid_generate_v4(), NEW.trID) RETURNING uuid),
      insert_TimeSliceAirspace AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-09-15') RETURNING timeslice.id),
      inserted_airspaceTS AS (INSERT INTO AirspaceTimeSlice (uuid, idTimeSlice, designator, name)
      VALUES (uuid_generate_v4(), (SELECT insert_TimeSliceAirspace.id FROM insert_TimeSliceAirspace), NEW.nm, NEW.nl)),
      inserted_AirspaceVolume AS (INSERT INTO AirspaceVolume (upperLimit, upperLimitReference, lowerLimit, lowerLimitReference, idSurface, uuidairspc)
        VALUES (ROW (NEW.top, NEW.UNL, NEW.top_unit), NEW.format_top, ROW (NEW.bottom, NEW.GND, NEW.bottom_unit), NEW.format_bottom,
       (SELECT inserted_Srfc.id FROM inserted_Srfc), (SELECT inserted_airspace.uuid FROM inserted_airspace))),
      insert_Unit AS (INSERT INTO Unit (uuid) VALUES (uuid_generate_v4()) RETURNING uuid),
      insert_service AS (INSERT INTO Service (uuid) VALUES (uuid_generate_v4()) RETURNING uuid),
      insert_TimeSliceService AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-09-15') RETURNING timeslice.id),
      insert_serviceTS AS (INSERT INTO ServiceTimeSlice (uuid, idTimeSlice, uuidUnit) VALUES
        ((SELECT insert_service.uuid FROM insert_service), (SELECT insert_TimeSliceService.id FROM insert_TimeSliceService), (SELECT insert_Unit.uuid FROM insert_Unit)) RETURNING idTimeSlice),
      insert_AirTrffcMngmntSrvc AS (INSERT INTO AirTrafficManagementService (uuid) VALUES ((SELECT insert_service.uuid FROM insert_service)) RETURNING uuid),
      insert_TimeSliceAirTrffcMngmntSrvc AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-09-15') RETURNING timeslice.id),
      insert_AirTrafficManagementServiceTS AS (INSERT INTO AirTrafficManagementServiceTimeSlice (idTimeSlice, uuid) VALUES
        ((SELECT insert_TimeSliceAirTrffcMngmntSrvc.id FROM insert_TimeSliceAirTrffcMngmntSrvc),(SELECT insert_AirTrffcMngmntSrvc.uuid FROM insert_AirTrffcMngmntSrvc))),
      insert_Arspc_AirTrffcMngmntSrvc AS (INSERT INTO Airspace_AirTrafficManagementService (uuidairspc, uuidAirTrafficManagementService)
        VALUES ((SELECT inserted_airspace.uuid FROM inserted_airspace), (SELECT insert_AirTrffcMngmntSrvc.uuid FROM insert_AirTrffcMngmntSrvc))),
      insert_lblAirspaceArea AS (INSERT INTO CartographyLabelDraPraRsa(uuid) VALUES (uuid_generate_v4()) RETURNING CartographyLabelDraPraRsa.uuid),
      insert_TimeSliceLblAirspaceArea AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-09-15') RETURNING timeslice.id),
      insert_lblAirspaceAreaTS AS (INSERT INTO CartographyLabelDraPraRsaTimeSlice(idTimeSlice, uuid, longitude, latitude, uuidairspc) VALUES
        ((SELECT insert_TimeSliceLblAirspaceArea.id FROM insert_TimeSliceLblAirspaceArea), (SELECT insert_lblAirspaceArea.uuid FROM insert_lblAirspaceArea), NEW.xlbl, NEW.ylbl,
         (SELECT inserted_airspace.uuid FROM inserted_airspace))),
      insert_PrprtsWthSchdl AS (INSERT INTO PropertiesWithSchedule (id) VALUES (nextval('auto_id_properties_with_schedule')) RETURNING id),
      insert_AirspcActvtn AS (INSERT INTO AirspaceActivation (id, uuidairspc) VALUES ((SELECT insert_PrprtsWthSchdl.id FROM insert_PrprtsWthSchdl), (SELECT inserted_airspace.uuid FROM inserted_airspace)))
      INSERT INTO Timesheet (day, startTime, endTime, idPropertiesWithSchedule) VALUES (NEW.day_of_the_week, NEW.startTime, NEW.endTime, (SELECT insert_PrprtsWthSchdl.id FROM insert_PrprtsWthSchdl));
    RETURN NEW;
  ELSIF TG_OP = 'UPDATE'
    THEN
      UPDATE AirspaceTimeSlice
        SET uuid = NEW.uuid, designator = NEW.nm, name = NEW.nl
        WHERE AirspaceTimeSlice.uuid = OLD.uuid ;
      UPDATE Airspace
        SET uuid = NEW.uuid, _transasID = NEW.trID
        WHERE Airspace.uuid = OLD.uuid;
      UPDATE AirspaceVolume
        SET
          upperLimit          = ROW (NEW.top, NEW.UNL, NEW.top_unit),
          upperLimitReference = NEW.format_top,
          lowerLimit          = ROW (NEW.bottom, NEW.GND, NEW.bottom_unit),
          lowerLimitReference = NEW.format_bottom
        WHERE AirspaceVolume.uuidairspc = OLD.uuid;
      UPDATE Surface
        SET geom = NEW.geom, srid = NEW.srid
        WHERE Surface.id = (SELECT AirspaceVolume.idSurface
                            FROM AirspaceVolume
                            WHERE AirspaceVolume.uuidairspc = OLD.uuid);
      UPDATE CartographyLabelAirspaceAreaTimeSlice
        SET longitude = NEW.xlbl, latitude = NEW.ylbl
        WHERE CartographyLabelAirspaceAreaTimeSlice.uuidairspc = OLD.uuid;
      UPDATE Timesheet
      SET day = NEW.day_of_the_week, startTime = NEW.startTime, endTime = NEW.endTime;
      RETURN NEW;
  ELSIF TG_OP = 'DELETE'
    THEN
      WITH deleteAirspc AS (DELETE FROM Airspace WHERE Airspace.uuid = OLD.uuid),
        deleteAirspcTS AS (DELETE FROM AirspaceTimeSlice WHERE AirspaceTimeSlice.uuid = OLD.uuid RETURNING AirspaceTimeSlice.idTimeSlice),
        deleteTSAirspc AS (DELETE FROM TimeSlice WHERE TimeSlice.id IN (SELECT deleteAirspcTS.idTimeSlice FROM deleteAirspcTS)),
        deleteAirspcVlm AS (DELETE FROM AirspaceVolume WHERE AirspaceVolume.uuidairspc = OLD.uuid RETURNING AirspaceVolume.idSurface),
        deleteSrfc AS (DELETE FROM Surface WHERE Surface.id IN (SELECT deleteAirspcVlm.idSurface FROM deleteAirspcVlm)),
        deleteAirspcAirTrffcMngmnt AS (DELETE FROM Airspace_AirTrafficManagementService WHERE Airspace_AirTrafficManagementService.uuidairspc = OLD.uuid RETURNING uuidAirTrafficManagementService),
        deleteAirTrffcMngmnt AS (DELETE FROM AirTrafficManagementService WHERE AirTrafficManagementService.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)),
        deleteAirTrffcMngmntTS AS (DELETE FROM AirTrafficManagementServiceTimeSlice WHERE AirTrafficManagementServiceTimeSlice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt) RETURNING idTimeSlice),
        deleteTSAirTrffcMngmnt AS (DELETE FROM TimeSlice WHERE TimeSlice.id IN (SELECT deleteAirTrffcMngmntTS.idTimeSlice FROM deleteAirTrffcMngmntTS)),
        delete_AirTrffcCntrlSrvcTS AS (DELETE FROM AirTrafficControlServiceTimeSlice WHERE AirTrafficControlServiceTimeSlice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)  RETURNING AirTrafficControlServiceTimeSlice.uuid),
        delete_AirTrffcCntrlSrvc AS (DELETE FROM AirTrafficControlService WHERE AirTrafficControlService.uuid IN (SELECT delete_AirTrffcCntrlSrvcTS.uuid FROM delete_AirTrffcCntrlSrvcTS)),
        delete_GrndTrffcCntrlSrvcTS AS (DELETE FROM GroundTrafficControlServiceTimeSlice WHERE GroundTrafficControlServiceTimeSlice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)  RETURNING GroundTrafficControlServiceTimeSlice.uuid),
        delete_GrndTrffcCntrlSrvc AS (DELETE FROM GroundTrafficControlService WHERE GroundTrafficControlService.uuid IN (SELECT delete_GrndTrffcCntrlSrvcTS.uuid FROM delete_GrndTrffcCntrlSrvcTS)),
        delete_TrffcSprtnSrvcTS AS (DELETE FROM trafficseparationservicetimeslice WHERE trafficseparationservicetimeslice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)  RETURNING trafficseparationservicetimeslice.uuid),
        delete_TrffcSprtnSrvc AS (DELETE FROM trafficseparationservice WHERE trafficseparationservice.uuid IN (SELECT delete_TrffcSprtnSrvcTS.uuid FROM delete_TrffcSprtnSrvcTS)),
        delete_InfrmtnSrvcTS AS (DELETE FROM InformationServiceTimeSlice WHERE InformationServiceTimeSlice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)  RETURNING InformationServiceTimeSlice.uuid),
        delete_InfrmtnSrvc AS (DELETE FROM InformationService WHERE InformationService.uuid IN (SELECT delete_InfrmtnSrvcTS.uuid FROM delete_InfrmtnSrvcTS)),
        deleteSrvc AS (DELETE FROM Service WHERE Service.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt) ),
        deleteSrvcTS AS (DELETE FROM ServiceTimeSlice WHERE ServiceTimeSlice.uuid IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt) RETURNING idTimeSlice, uuidUnit),
        deleteTSSrvc AS (DELETE FROM TimeSlice WHERE id IN (SELECT deleteSrvcTS.idTimeSlice FROM deleteSrvcTS)),
        deleteUnit AS (DELETE FROM Unit WHERE Unit.uuid IN (SELECT deleteSrvcTS.uuidUnit FROM deleteSrvcTS)),
        deleteCrtgrphLblTS AS (DELETE FROM CartographyLabelDraPraRsaTimeSlice WHERE CartographyLabelDraPraRsaTimeSlice.uuidairspc = OLD.uuid RETURNING CartographyLabelDraPraRsaTimeSlice.uuid, idTimeSlice),
        deleteCrtgrphLbl AS (DELETE FROM CartographyLabelDraPraRsa WHERE CartographyLabelDraPraRsa.uuid IN (SELECT deleteCrtgrphLblTS.uuid FROM deleteCrtgrphLblTS)),
        deleteTSCrtgrphLbl AS (DELETE FROM TimeSlice WHERE id IN (SELECT deleteCrtgrphLblTS.idTimeSlice FROM deleteCrtgrphLblTS)),
        deleteCllsgnDtl AS (DELETE FROM CallsignDetail WHERE CallsignDetail.uuidService IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt)),
        deleteSrvcRdCmmnctnChnnl AS (DELETE FROM Service_RadioCommunicationChannel WHERE Service_RadioCommunicationChannel.uuidService IN (SELECT deleteAirspcAirTrffcMngmnt.uuidAirTrafficManagementService FROM deleteAirspcAirTrffcMngmnt) RETURNING uuidRadioCommunicationChannel),
        deleteRdCmmnctnChnnl AS (DELETE FROM RadioCommunicationChannel WHERE RadioCommunicationChannel.uuid IN (SELECT deleteSrvcRdCmmnctnChnnl.uuidRadioCommunicationChannel FROM deleteSrvcRdCmmnctnChnnl)),
        deleteRdCmmnctnChnnlTS AS (DELETE FROM RadioCommunicationChannelTimeSlice WHERE RadioCommunicationChannelTimeSlice.uuid IN (SELECT deleteSrvcRdCmmnctnChnnl.uuidRadioCommunicationChannel FROM deleteSrvcRdCmmnctnChnnl) RETURNING idTimeSlice),
        deleteAirpcActvtn AS (DELETE FROM AirspaceActivation WHERE AirspaceActivation.uuidairspc = OLD.uuid RETURNING AirspaceActivation.id),
        deleteTmshht AS (DELETE FROM Timesheet WHERE Timesheet.idpropertieswithschedule = (SELECT deleteAirpcActvtn.id FROM deleteAirpcActvtn)),
        deletePrprtsWthSchdl AS (DELETE FROM PropertiesWithSchedule WHERE id = (SELECT deleteAirpcActvtn.id FROM deleteAirpcActvtn))
      DELETE FROM TimeSlice WHERE TimeSlice.id IN (SELECT deleteRdCmmnctnChnnlTS.idTimeSlice FROM deleteRdCmmnctnChnnlTS);
      RETURN NULL;
  END IF;
  RETURN NEW;
END;
$function$;



CREATE OR REPLACE VIEW tpm1702 AS
  SELECT
    CartographyLabelTPMTPT.id AS gid,
    designatedpoint._transasID AS id,
    designatedpointtimeslice.designator AS nm,
    segmentpoint.reportingatc AS tp,
    point.magneticVariation AS ugol,
    concat(DD2DMS(point.latitude,'°', '''','"', 'lat'), 'N') as "N",
    concat(DD2DMS(point.longitude,'°', '''','"', 'lon'), 'E') as "E",
    CartographyLabelTPMTPT.longitude as xlbl,
    CartographyLabelTPMTPT.latitude as ylbl,
    CartographyLabelTPMTPT.map as map,
    point.geom
  FROM CartographyLabelTPMTPT
    LEFT JOIN designatedpoint ON CartographyLabelTPMTPT.uuiddsnpnt = designatedpoint.uuid
    LEFT JOIN designatedpointtimeslice ON designatedpointtimeslice.uuid = designatedpoint.uuid
    LEFT JOIN point ON designatedpointtimeslice.idpoint = point.id
    LEFT JOIN significantpoint ON designatedpoint.uuid = significantpoint.uuiddsnpnt
    LEFT JOIN segmentpoint ON significantpoint.id = segmentpoint.idsignificantpoint
    LEFT JOIN timeslice ON designatedpointtimeslice.idtimeslice = timeslice.id
      WHERE TimeSlice.validTimeBegin <= '2017-03-30' AND (TimeSlice.validTimeEnd > '2017-03-30' OR TimeSlice.validTimeEnd is NULL)
            and designatedpoint._transasid ILIKE 'TPM%';

CREATE OR REPLACE VIEW tpt1702 AS
  SELECT
    CartographyLabelTPMTPT.id AS gid,
    designatedpoint._transasID AS id,
    designatedpointtimeslice.designator AS nm,
    segmentpoint.reportingatc AS tp,
    point.magneticVariation AS ugol,
    concat(DD2DMS(point.latitude,'°', '''','"', 'lat'), 'N') as "N",
    concat(DD2DMS(point.longitude,'°', '''','"', 'lon'), 'E') as "E",
    CartographyLabelTPMTPT.longitude as xlbl,
    CartographyLabelTPMTPT.latitude as ylbl,
    CartographyLabelTPMTPT.map as map,
    point.geom
  FROM CartographyLabelTPMTPT
    LEFT JOIN designatedpoint ON CartographyLabelTPMTPT.uuiddsnpnt = designatedpoint.uuid
    LEFT JOIN designatedpointtimeslice ON designatedpointtimeslice.uuid = designatedpoint.uuid
    LEFT JOIN point ON designatedpointtimeslice.idpoint = point.id
    LEFT JOIN significantpoint ON designatedpoint.uuid = significantpoint.uuiddsnpnt
    LEFT JOIN segmentpoint ON significantpoint.id = segmentpoint.idsignificantpoint
    LEFT JOIN timeslice ON designatedpointtimeslice.idtimeslice = timeslice.id
  WHERE TimeSlice.validTimeBegin <= '2017-03-30' AND
        (TimeSlice.validTimeEnd > '2017-03-30' OR TimeSlice.validTimeEnd is NULL) AND
        designatedpoint._transasid ILIKE 'TPT%';

CREATE OR REPLACE VIEW tpt2mln_1702 AS
  SELECT
    CartographyLabelTPMTPT.id AS gid,
    designatedpoint._transasID AS id,
    designatedpointtimeslice.designator AS nm,
    segmentpoint.reportingatc AS tp,
    cartographylabeltpmtpt.coordlbl AS coord,
    CartographyLabelTPMTPT.longitude2mln as xlbl,
    CartographyLabelTPMTPT.latitude2mln as ylbl,
    CartographyLabelTPMTPT.map2mln as map,
    point.geom,
    CartographyLabelTPMTPT.footnote as sn,
    CartographyLabelTPMTPT.longitudefn as xlbl1,
    CartographyLabelTPMTPT.latitudefn as ylbl1,
    CartographyLabelTPMTPT.alignment as align,
    CartographyLabelTPMTPT.size
  FROM CartographyLabelTPMTPT
    LEFT JOIN designatedpoint ON CartographyLabelTPMTPT.uuiddsnpnt = designatedpoint.uuid
    LEFT JOIN designatedpointtimeslice ON designatedpointtimeslice.uuid = designatedpoint.uuid
    LEFT JOIN point ON designatedpointtimeslice.idpoint = point.id
    LEFT JOIN significantpoint ON designatedpoint.uuid = significantpoint.uuiddsnpnt
    LEFT JOIN segmentpoint ON significantpoint.id = segmentpoint.idsignificantpoint
    LEFT JOIN timeslice ON designatedpointtimeslice.idtimeslice = timeslice.id
  WHERE TimeSlice.validTimeBegin <= '2017-03-30' AND
        (TimeSlice.validTimeEnd > '2017-03-30' OR TimeSlice.validTimeEnd is NULL) AND
        designatedpoint._transasid ILIKE 'TPT%';

-- old version of tpm view
/*
CREATE OR REPLACE VIEW tpm1702 AS
  SELECT
    CartographyLabelTPMTPT.id AS gid,
    (SELECT DesignatedPoint._transasID AS id
    FROM DesignatedPoint
    WHERE DesignatedPoint.uuid = CartographyLabelTPMTPT.uuiddsnpnt),
    -- ИКАО наименование
    (SELECT DesignatedPointTimeSlice.designator AS nm
    FROM DesignatedPointTimeSlice, timeslice
    WHERE DesignatedPointTimeSlice.uuid = CartographyLabelTPMTPT.uuiddsnpnt AND DesignatedPointTimeSlice.idTimeSlice  = TimeSlice.id
          AND TimeSlice.validTimeBegin <= '2017-03-30' AND (TimeSlice.validTimeEnd > '2017-03-30' OR TimeSlice.validTimeEnd is NULL)),
     --  тип ТПТ/ТПМ
    (SELECT segmentpoint.reportingatc AS tp
    FROM SegmentPoint, SignificantPoint, DesignatedPointTimeSlice, timeslice
    WHERE SegmentPoint.idSignificantPoint = SignificantPoint.id AND CartographyLabelTPMTPT.uuiddsnpnt = SignificantPoint.uuiddsnpnt
          AND DesignatedPointTimeSlice.uuid = CartographyLabelTPMTPT.uuiddsnpnt AND DesignatedPointTimeSlice.idTimeSlice  = TimeSlice.id
          AND TimeSlice.validTimeBegin <= '2017-03-30' AND (TimeSlice.validTimeEnd > '2017-03-30' OR TimeSlice.validTimeEnd is NULL) ),
    -- магнитное склонение
    (SELECT Point.magneticVariation AS ugol
     FROM Point, designatedpointtimeslice, timeslice
     WHERE Point.id = designatedpointtimeslice.idpoint AND designatedpointtimeslice.uuid = CartographyLabelTPMTPT.uuiddsnpnt  AND designatedpointtimeslice.idTimeSlice  = TimeSlice.id  AND
           TimeSlice.validTimeBegin <= '2017-03-30' AND
         (TimeSlice.validTimeEnd > '2017-03-30' OR TimeSlice.validTimeEnd is NULL)),

    -- coords in DMS
    (SELECT concat(DD2DMS(point.latitude,'°', '''','"', 'lat'), 'N') as "N"
      FROM Point, designatedpointtimeslice, timeslice
      WHERE Point.id = designatedpointtimeslice.idpoint AND designatedpointtimeslice.uuid = CartographyLabelTPMTPT.uuiddsnpnt  AND designatedpointtimeslice.idTimeSlice  = TimeSlice.id  AND
           TimeSlice.validTimeBegin <= '2017-03-30' AND
         (TimeSlice.validTimeEnd > '2017-03-30' OR TimeSlice.validTimeEnd is NULL)),
    (SELECT concat(DD2DMS(point.longitude,'°', '''','"', 'lon'), 'E') as "E"
      FROM Point, designatedpointtimeslice, timeslice
      WHERE Point.id = designatedpointtimeslice.idpoint AND designatedpointtimeslice.uuid = CartographyLabelTPMTPT.uuiddsnpnt  AND designatedpointtimeslice.idTimeSlice  = TimeSlice.id  AND
           TimeSlice.validTimeBegin <= '2017-03-30' AND
         (TimeSlice.validTimeEnd > '2017-03-30' OR TimeSlice.validTimeEnd is NULL)),
    -- координаты подписи,
    CartographyLabelTPMTPT.longitude as xlbl,
    CartographyLabelTPMTPT.latitude as ylbl,
    CartographyLabelTPMTPT.map as map,

    -- геометрия
    (SELECT Point.geom
      FROM Point, designatedpointtimeslice, timeslice
      WHERE Point.id = designatedpointtimeslice.idpoint AND designatedpointtimeslice.uuid = CartographyLabelTPMTPT.uuiddsnpnt  AND designatedpointtimeslice.idTimeSlice  = TimeSlice.id  AND
           TimeSlice.validTimeBegin <= '2017-03-30' AND
         (TimeSlice.validTimeEnd > '2017-03-30' OR TimeSlice.validTimeEnd is NULL))

  FROM CartographyLabelTPMTPT WHERE CartographyLabelTPMTPT.uuiddsnpnt in (SELECT designatedpointtimeslice.uuid
                  FROM designatedpointtimeslice, timeslice WHERE designatedpointtimeslice.idTimeSlice  = TimeSlice.id
          AND TimeSlice.validTimeBegin <= '2017-03-30' AND (TimeSlice.validTimeEnd > '2017-03-30' OR TimeSlice.validTimeEnd is NULL));
 */


CREATE OR REPLACE FUNCTION tpm_function()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
BEGIN
  IF TG_OP = 'INSERT'
  THEN
    -- вставка нового объекта подписи. При вставке в view TPM/TPT вставляется только подпись без геометрии и nm и прочих полей , взятых от Feature
        WITH select_ArpHlpuuid AS (SELECT uuid FROM designatedpoint WHERE designatedpoint._transasid = NEW.id)
        INSERT INTO CartographyLabelTPMTPT (id, longitude, latitude, map, uuiddsnpnt)
        VALUES (nextval('auto_id_cartography_label_tpt'), NEW.xlbl, NEW.ylbl, NEW.map, (SELECT select_ArpHlpuuid.uuid FROM select_ArpHlpuuid));
    RETURN NEW;
  ELSIF TG_OP = 'UPDATE' THEN
          UPDATE designatedpointtimeslice
          SET designator = NEW.nm
          WHERE designatedpointtimeslice.uuid = (SELECT uuiddsnpnt FROM CartographyLabelTPMTPT WHERE id = OLD.gid);
          UPDATE CartographyLabelTPMTPT
          SET longitude = NEW.xlbl, latitude = NEW.ylbl, map = NEW.map
          WHERE CartographyLabelTPMTPT.id = OLD.gid;
          UPDATE segmentpoint
          SET reportingatc = NEW.tp
          WHERE segmentpoint.idsignificantpoint = (SELECT id FROM significantpoint WHERE uuiddsnpnt IN
           (SELECT uuid FROM designatedpointtimeslice WHERE designatedpointtimeslice.uuid = (SELECT uuiddsnpnt FROM CartographyLabelTPMTPT WHERE id = OLD.gid)));
          UPDATE Point
          SET geom = NEW.geom, magneticvariation = NEW.ugol,
            latitude = DMS2DD((cast(substr(NEW."N", 1, 2) as float)), (cast(substr(NEW."N", 4, 2) as float)), (cast(substr(NEW."N", 7, 2) as float))),
            longitude = DMS2DD((cast(substr(NEW."E", 1, 3) as float)), (cast(substr(NEW."E", 5, 2) as float)), (cast(substr(NEW."E", 8, 2) as float)))
          WHERE Point.id = (SELECT designatedpointtimeslice.idPoint
                            FROM designatedpointtimeslice
                            WHERE designatedpointtimeslice.uuid = (SELECT uuiddsnpnt FROM CartographyLabelTPMTPT WHERE id = OLD.gid));
          RETURN NEW;
  ELSIF TG_OP = 'DELETE'
    THEN
       WITH delete_dsgnPtTS AS (DELETE FROM designatedpointtimeslice
      WHERE designatedpointtimeslice.uuid IN (SELECT uuiddsnpnt FROM CartographyLabelTPMTPT WHERE id = OLD.gid)
       RETURNING idpoint, uuid, idtimeslice),
         delete_point AS (DELETE FROM Point WHERE Point.id IN (SELECT delete_dsgnPtTS.idpoint FROM delete_dsgnPtTS)),
         delete_TSofDsgnPt AS (DELETE FROM timeslice WHERE timeslice.id IN (SELECT delete_dsgnPtTS.idtimeslice FROM delete_dsgnPtTS)),
         delete_SgnfctPt AS (DELETE FROM significantpoint WHERE significantpoint.uuiddsnpnt IN (SELECT delete_dsgnPtTS.uuid FROM delete_dsgnPtTS) RETURNING id),
         delete_dsgnPt AS (DELETE FROM designatedpoint WHERE designatedpoint.uuid IN (SELECT CartographyLabelTPMTPT.uuiddsnpnt FROM CartographyLabelTPMTPT WHERE id = OLD.gid)),
         delete_LblDsgnPt AS (DELETE FROM CartographyLabelTPMTPT WHERE id = OLD.gid)
      DELETE FROM segmentpoint
        WHERE segmentpoint.idsignificantpoint = (SELECT id FROM delete_SgnfctPt);
      RETURN NULL;
  END IF;
  RETURN NEW;
END;
$function$;

CREATE TRIGGER tpm_trigger
INSTEAD OF INSERT OR UPDATE OR DELETE ON
  tpm1702 FOR EACH ROW EXECUTE PROCEDURE tpm_function();

CREATE TRIGGER tpt_trigger
INSTEAD OF INSERT OR UPDATE OR DELETE ON
  tpt1702 FOR EACH ROW EXECUTE PROCEDURE tpm_function();

-- VIEW MVL isn't true
-- Need to check TimeSlice relations for Routetimeslice
CREATE OR REPLACE VIEW mvl1702 AS
  SELECT
    CartographyLabelMVL.id AS gid,
    routesegment._transasid as id,
    routetimeslice.locationDesignator as nm,
    cast(round((length).value, 1) as valdistancebasetype) as lb_km,
    RouteSegmentTimeSlice.magnetictrack AS mta,
    RouteSegmentTimeSlice.reverseMagneticTrack AS rmta,
    concat(
               -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
               (CASE WHEN cast(round((lowerLimit).value,0) as INTEGER) < 100
                  THEN concat('0', round((lowerLimit).value,0))
                  WHEN (lowerLimit).value IS NULL THEN 'GND'
                  ELSE cast(round((lowerLimit).value,0) as text)
                  END),
                 ' - ',
               -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
               (CASE WHEN cast(round((upperLimit).value,0) as INTEGER) < 100
                  THEN concat('0', round((upperLimit).value,0))
                  WHEN (upperLimit).value IS NULL THEN 'UNL'
                  ELSE cast(round((upperLimit).value,0) as text)
                  END))
      AS he,
    -- wd
      CartographyLabelMVL.longitude as xlbl,
      CartographyLabelMVL.latitude as ylbl,
      CartographyLabelMVL.footnote as sn,
      CartographyLabelMVL.size as size,
      CartographyLabelMVL.map as map,
      st_transform(st_collect(ARRAY [geom2, geom, geom3]), 102027)
  FROM cartographylabelmvl
    LEFT JOIN routesegment ON cartographylabelmvl.uuidrtseg = routesegment.uuid
    LEFT JOIN RouteSegmentTimeSlice ON cartographylabelmvl.uuidrtseg = RouteSegmentTimeSlice.uuid
    LEFT JOIN routetimeslice ON routetimeslice.uuid = routesegmenttimeslice.uuidroute
    LEFT JOIN timeslice ON RouteSegmentTimeSlice.idTimeSlice  = TimeSlice.id WHERE TimeSlice.validTimeBegin <= '2017-02-02'
                                                                                   AND (TimeSlice.validTimeEnd > '2017-02-02'
                                                                                        OR TimeSlice.validTimeEnd is NULL) AND routesegment._transasid ILIKE 'MVL%';


CREATE OR REPLACE VIEW mvlline1702 AS
  SELECT RouteSegmentTimeSlice.idtimeslice as gid,
    routesegment._transasid as id,
    coalesce((widthLeft).value + (widthRight).value) AS wd,
    st_transform(curve.geom, 102027)
  FROM routesegmenttimeslice
  LEFT JOIN routesegment ON routesegmenttimeslice.uuid = routesegment.uuid
  LEFT JOIN curve ON routesegmenttimeslice.idcurve = curve.id
  LEFT JOIN timeslice ON RouteSegmentTimeSlice.idTimeSlice  = TimeSlice.id WHERE TimeSlice.validTimeBegin <= '2017-02-02'
                                                                                   AND (TimeSlice.validTimeEnd > '2017-02-02'
                                                                                        OR TimeSlice.validTimeEnd is NULL) AND routesegment._transasid ILIKE 'MVL%';


CREATE OR REPLACE VIEW tra1702 AS
  SELECT
    cartographylabelmvl.id AS gid,
    routesegment._transasid as id,
    routetimeslice.locationDesignator as nm,
    cast(round((length).value, 1) as valdistancebasetype) as lb_km,
    RouteSegmentTimeSlice.magnetictrack AS mta,
    RouteSegmentTimeSlice.reverseMagneticTrack AS rmta,
      cartographylabelmvl.longitude as xlbl,
      cartographylabelmvl.latitude as ylbl,
      cartographylabelmvl.footnote as sn,
      cartographylabelmvl.sogl as sogl,
      cartographylabelmvl.size as size,
      cartographylabelmvl.map as map,
      st_transform(st_collect(ARRAY [geom2, geom, geom3]), 102027)
  FROM cartographylabelmvl
    LEFT JOIN routesegment ON cartographylabelmvl.uuidrtseg = routesegment.uuid
    LEFT JOIN RouteSegmentTimeSlice ON cartographylabelmvl.uuidrtseg = RouteSegmentTimeSlice.uuid
    LEFT JOIN routetimeslice ON routetimeslice.uuid = routesegmenttimeslice.uuidroute
    LEFT JOIN timeslice ON RouteSegmentTimeSlice.idTimeSlice  = TimeSlice.id WHERE TimeSlice.validTimeBegin <= '2017-02-02'
                                                                                   AND (TimeSlice.validTimeEnd > '2017-02-02'
                                                                                        OR TimeSlice.validTimeEnd is NULL) AND routesegment._transasid ILIKE 'TRA%';
CREATE OR REPLACE VIEW traline1702 AS
  SELECT RouteSegmentTimeSlice.idtimeslice as gid,
    routesegment._transasid as id,
    cartographylabelmvl.sogl as sogl,
    st_transform(curve.geom, 102027)
  FROM routesegmenttimeslice
  LEFT JOIN cartographylabelmvl ON cartographylabelmvl.uuidrtseg = RouteSegmentTimeSlice.uuid
  LEFT JOIN routesegment ON routesegmenttimeslice.uuid = routesegment.uuid
  LEFT JOIN curve ON routesegmenttimeslice.idcurve = curve.id
  LEFT JOIN timeslice ON RouteSegmentTimeSlice.idTimeSlice  = TimeSlice.id WHERE TimeSlice.validTimeBegin <= '2017-02-02'
                                                                                   AND (TimeSlice.validTimeEnd > '2017-02-02'
                                                                                        OR TimeSlice.validTimeEnd is NULL) AND routesegment._transasid ILIKE 'TRA%';


CREATE OR REPLACE VIEW MVL_PSPE AS
  SELECT
    RouteSegmentTimeSlice.idtimeslice as gid,
    RouteSegmentTimeSlice.uuid,
   concat(
    (SELECT routesegment._transasid as id
    FROM routesegment
    WHERE routesegment.uuid = routesegmenttimeslice.uuid) ,
    ' ',
    case when (SELECT designatedpointtimeslice.designator
       FROM designatedpointtimeslice, DesignatedPoint, SignificantPoint, SegmentPoint
      WHERE designatedpointtimeslice.uuid = designatedpoint.uuid and DesignatedPoint.uuid = SignificantPoint.uuiddsnpnt AND
             SignificantPoint.id = SegmentPoint.idSignificantPoint AND
             SegmentPoint.id = RouteSegmentTimeSlice.idEnRouteSegmentPointStart) is not null then
      (SELECT designatedpointtimeslice.designator
       FROM designatedpointtimeslice, DesignatedPoint, SignificantPoint, SegmentPoint
      WHERE designatedpointtimeslice.uuid = designatedpoint.uuid and DesignatedPoint.uuid = SignificantPoint.uuiddsnpnt AND
             SignificantPoint.id = SegmentPoint.idSignificantPoint AND
             SegmentPoint.id = RouteSegmentTimeSlice.idEnRouteSegmentPointStart)
    else
        (SELECT navaidtimeslice.designator
       FROM Navaid, navaidtimeslice, SignificantPoint, SegmentPoint
      WHERE navaidtimeslice.uuid = navaid.uuid and Navaid.uuid = SignificantPoint.uuidNavaid AND
             SignificantPoint.id = SegmentPoint.idSignificantPoint AND
             SegmentPoint.id = RouteSegmentTimeSlice.idEnRouteSegmentPointStart)
        end,
    case when (SELECT designatedpointtimeslice.designator
       FROM designatedpointtimeslice, DesignatedPoint, SignificantPoint, SegmentPoint
      WHERE designatedpointtimeslice.uuid = designatedpoint.uuid and DesignatedPoint.uuid = SignificantPoint.uuiddsnpnt AND
             SignificantPoint.id = SegmentPoint.idSignificantPoint AND
             SegmentPoint.id = RouteSegmentTimeSlice.idEnRouteSegmentPointEnd) is not null then
      (SELECT designatedpointtimeslice.designator
       FROM designatedpointtimeslice, DesignatedPoint, SignificantPoint, SegmentPoint
      WHERE designatedpointtimeslice.uuid = designatedpoint.uuid and DesignatedPoint.uuid = SignificantPoint.uuiddsnpnt AND
             SignificantPoint.id = SegmentPoint.idSignificantPoint AND
             SegmentPoint.id = RouteSegmentTimeSlice.idEnRouteSegmentPointEnd)
    else
        (SELECT navaidtimeslice.designator
       FROM Navaid, navaidtimeslice, SignificantPoint, SegmentPoint
      WHERE navaidtimeslice.uuid = navaid.uuid and Navaid.uuid = SignificantPoint.uuidNavaid AND
             SignificantPoint.id = SegmentPoint.idSignificantPoint AND
             SegmentPoint.id = RouteSegmentTimeSlice.idEnRouteSegmentPointEnd)
        end)
  FROM RouteSegmentTimeSlice WHERE RouteSegmentTimeSlice.uuid IN (SELECT routesegment.uuid from routesegment where routesegment._transasid ILIKE 'TRA%');

CREATE OR REPLACE FUNCTION mvl_function()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
BEGIN
  IF TG_OP = 'INSERT'
  THEN
     IF ((SELECT DesignatedPointTimeSlice.uuid FROM DesignatedPointTimeSlice WHERE DesignatedPointTimeSlice.designator = NEW.PS) is NULL
       AND (SELECT DesignatedPointTimeSlice.uuid FROM DesignatedPointTimeSlice WHERE DesignatedPointTimeSlice.designator = NEW.PE) is NULL)
     THEN
    with insert_Curve AS (INSERT INTO Curve (geom, srid) VALUES (NEW.geom, '4326') RETURNING Curve.id),
      -- здесь нужно вставить точку TPM TPT
      -- point Start
      insert_PointS AS (INSERT INTO Point(srid, geom) VALUES ('4326', ST_StartPoint(NEW.geom)) RETURNING Point.id),
      insert_dsgntdpntS AS (INSERT INTO DesignatedPoint(uuid) VALUES (uuid_generate_v4()) RETURNING DesignatedPoint.uuid),
      insert_TSdsgntdpntS AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-07-21') RETURNING timeslice.id),
      insert_dsgntdpntSTS AS (INSERT INTO DesignatedPointTimeSlice(idTimeSlice, uuid, designator, type, idpoint) VALUES
        ((SELECT insert_TSdsgntdpntS.id FROM insert_TSdsgntdpntS),(SELECT insert_dsgntdpntS.uuid FROM insert_dsgntdpntS),(NEW.PS), 'ICAO', (SELECT insert_PointS.id FROM insert_PointS))),
      insert_sgnfS AS (INSERT INTO SignificantPoint(id, uuiddsnpnt, idPoint) VALUES
        (nextval('auto_id_significant_point'),(SELECT insert_dsgntdpntS.uuid FROM insert_dsgntdpntS), (SELECT insert_PointS.id FROM insert_PointS)) RETURNING SignificantPoint.id),
      insert_sgmntPS AS (INSERT INTO SegmentPoint (idSignificantPoint) VALUES ((SELECT insert_sgnfS.id FROM insert_sgnfS)) RETURNING SegmentPoint.id),
      insert_enRtSgmntPS AS (INSERT INTO EnRouteSegmentPoint(id) VALUES ((SELECT insert_sgmntPS.id FROM insert_sgmntPS))),
      -- point End
      insert_PointE AS (INSERT INTO Point(srid, geom) VALUES ('4326', ST_EndPoint(NEW.geom)) RETURNING Point.id),
      insert_dsgntdpntE AS (INSERT INTO DesignatedPoint(uuid) VALUES (uuid_generate_v4()) RETURNING DesignatedPoint.uuid),
      insert_TSdsgntdpntE AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_dsgntdpntETS AS (INSERT INTO DesignatedPointTimeSlice(idTimeSlice, uuid, designator, type, idpoint) VALUES
        ((SELECT insert_TSdsgntdpntE.id FROM insert_TSdsgntdpntE),(SELECT insert_dsgntdpntE.uuid FROM insert_dsgntdpntE),(NEW.PE), 'ICAO', (SELECT insert_PointE.id FROM insert_PointE))),
      insert_sgnfE AS (INSERT INTO SignificantPoint(id, uuiddsnpnt, idPoint) VALUES
        (nextval('auto_id_significant_point'),(SELECT insert_dsgntdpntE.uuid FROM insert_dsgntdpntE), (SELECT insert_PointE.id FROM insert_PointE)) RETURNING SignificantPoint.id),
      insert_sgmntPE AS (INSERT INTO SegmentPoint (idSignificantPoint) VALUES ((SELECT insert_sgnfE.id FROM insert_sgnfE)) RETURNING SegmentPoint.id),
      insert_enRtSgmntPE AS (INSERT INTO EnRouteSegmentPoint(id) VALUES ((SELECT insert_sgmntPE.id FROM insert_sgmntPE))),
      -- route
      insert_route AS (INSERT INTO Route (uuid) VALUES (uuid_generate_v4()) RETURNING Route.uuid),
      insert_TSrt AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_rtsgmnt AS (INSERT INTO RouteSegment(uuid, _transasID) VALUES (uuid_generate_v4(), NEW.trID) RETURNING RouteSegment.uuid),
      insert_TSrtsgmnt AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_rtsgmntTS AS (INSERT INTO RouteSegmentTimeSlice (uuid, idTimeSlice, magneticTrack, reverseMagneticTrack,
                                                                length, widthLeft, widthRight, upperLimit, upperLimitReference, lowerLimit,
                                                                lowerLimitReference, idCurve, idEnRouteSegmentPointStart, idEnRouteSegmentPointEnd, uuidRoute) VALUES
        ((SELECT insert_rtsgmnt.uuid FROM insert_rtsgmnt), (SELECT insert_TSrtsgmnt.id FROM insert_TSrtsgmnt), NEW.mta, NEW.rmta, ROW(NEW.lb, 'M'), ROW(NEW.wd/2, 'M'),
                   ROW(NEW.wd/2, 'M'), ROW(NEW.top, NEW.UNL, NEW.top_unit), NEW.format_top, ROW(NEW.bottom, NEW.GND, NEW.bottom_unit), NEW.format_bottom,
                  (SELECT insert_Curve.id FROM insert_Curve),(SELECT insert_sgmntPS.id FROM insert_sgmntPS),(SELECT insert_sgmntPE.id FROM insert_sgmntPE), (SELECT insert_route.uuid FROM insert_route))),
      insert_crtgrphLblMVL AS (INSERT INTO cartographylabelmvl(uuid) VALUES (uuid_generate_v4()) RETURNING cartographylabelmvl.uuid),
      insert_TScrtgrphLblMVL AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_crtgrphLblMVLTS AS (INSERT INTO  cartographylabelmvltimeslice(uuid, idTimeSlice, uuidrtseg) VALUES ((SELECT insert_crtgrphLblMVL.uuid FROM insert_crtgrphLblMVL),
                                                                                                                        (SELECT insert_TScrtgrphLblMVL.id FROM insert_TScrtgrphLblMVL),
                                                                                                                        (SELECT insert_rtsgmnt.uuid FROM insert_rtsgmnt)))
       INSERT INTO RouteTimeSlice (idTimeSlice, uuid, locationDesignator, type) VALUES ((SELECT insert_TSrt.id FROM insert_TSrt), (SELECT insert_route.uuid FROM insert_route), NEW.nm, 'OTHER: MVL');
      ELSE
      WITH insert_Curve AS (INSERT INTO Curve (geom, srid) VALUES (NEW.geom, '4326') RETURNING Curve.id),
      select_pointStart AS (SELECT DesignatedPointTimeSlice.uuid FROM DesignatedPointTimeSlice WHERE DesignatedPointTimeSlice.designator = NEW.PS),
      select_pointEnd AS (SELECT DesignatedPointTimeSlice.uuid FROM DesignatedPointTimeSlice WHERE DesignatedPointTimeSlice.designator = NEW.PE),
      insert_route AS (INSERT INTO Route (uuid) VALUES (uuid_generate_v4()) RETURNING Route.uuid),
      insert_TSrt AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_rtsgmnt AS (INSERT INTO RouteSegment(uuid, _transasID) VALUES (uuid_generate_v4(), NEW.trID) RETURNING RouteSegment.uuid),
      insert_TSrtsgmnt AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_rtsgmntTS AS (INSERT INTO RouteSegmentTimeSlice (uuid, idTimeSlice, magneticTrack, reverseMagneticTrack,
                                                                length, widthLeft, widthRight, upperLimit, upperLimitReference, lowerLimit,
                                                                lowerLimitReference, idCurve, idEnRouteSegmentPointStart, idEnRouteSegmentPointEnd, uuidRoute) VALUES
        ((SELECT insert_rtsgmnt.uuid FROM insert_rtsgmnt), (SELECT insert_TSrtsgmnt.id FROM insert_TSrtsgmnt), NEW.mta, NEW.rmta, ROW(NEW.lb, 'M'), ROW(NEW.wd/2, 'M'),
                   ROW(NEW.wd/2, 'M'), ROW(NEW.top, NEW.UNL, NEW.top_unit), NEW.format_top, ROW(NEW.bottom, NEW.GND, NEW.bottom_unit), NEW.format_bottom,
                  (SELECT insert_Curve.id FROM insert_Curve),
                  (SELECT SegmentPoint.id FROM SegmentPoint WHERE idSignificantPoint = (SELECT id FROM SignificantPoint WHERE uuiddsnpnt = (SELECT select_pointStart.uuid FROM select_pointStart))),
                  (SELECT SegmentPoint.id FROM SegmentPoint WHERE idSignificantPoint = (SELECT id FROM SignificantPoint WHERE uuiddsnpnt = (SELECT select_pointEnd.uuid FROM select_pointEnd))), (SELECT insert_route.uuid FROM insert_route))),
      insert_crtgrphLblMVL AS (INSERT INTO cartographylabelmvl(uuid) VALUES (uuid_generate_v4()) RETURNING cartographylabelmvl.uuid),
      insert_TScrtgrphLblMVL AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_crtgrphLblMVLTS AS (INSERT INTO  cartographylabelmvltimeslice(uuid, idTimeSlice, uuidrtseg) VALUES ((SELECT insert_crtgrphLblMVL.uuid FROM insert_crtgrphLblMVL),
                                                                                                                        (SELECT insert_TScrtgrphLblMVL.id FROM insert_TScrtgrphLblMVL),
                                                                                                                        (SELECT insert_rtsgmnt.uuid FROM insert_rtsgmnt)))
       INSERT INTO RouteTimeSlice (idTimeSlice, uuid, locationDesignator, type) VALUES ((SELECT insert_TSrt.id FROM insert_TSrt), (SELECT insert_route.uuid FROM insert_route), NEW.nm, 'OTHER: MVL');
      END IF ;
    RETURN NEW;
  ELSIF TG_OP = 'UPDATE'
    THEN
      UPDATE RouteSegmentTimeSlice
        SET magneticTrack = NEW.mta, reverseMagneticTrack = NEW.rmta, length =  ROW(NEW.lb, 'M'), widthLeft = ROW(NEW.wd/2, 'M'), widthRight = ROW(NEW.wd/2, 'M'),
          upperLimit = ROW(NEW.top, NEW.UNL, NEW.top_unit), upperLimitReference =  NEW.format_top, lowerLimit = ROW(NEW.bottom, NEW.GND, NEW.bottom_unit), lowerLimitReference = NEW.format_bottom
        WHERE RouteSegmentTimeSlice.uuid = OLD.uuid;
      UPDATE Curve
        SET geom = NEW.geom
        WHERE id = (SELECT idCurve FROM RouteSegmentTimeSlice WHERE RouteSegmentTimeSlice.uuid = OLD.uuid);
      UPDATE RouteTimeSlice
        SET locationDesignator = NEW.nm
        WHERE RouteTimeSlice.uuid = (SELECT uuidRoute FROM RouteSegmentTimeSlice WHERE RouteSegmentTimeSlice.uuid = OLD.uuid);
      UPDATE DesignatedPointTimeSlice
        SET designator = NEW.PS
        WHERE DesignatedPointTimeSlice.uuid IN (SELECT uuiddsnpnt FROM SignificantPoint WHERE id IN (SELECT idSignificantPoint FROM SegmentPoint WHERE id = (SELECT idEnRouteSegmentPointStart FROM RouteSegmentTimeSlice WHERE RouteSegmentTimeSlice.uuid = OLD.uuid)));
      UPDATE DesignatedPointTimeSlice
        SET designator = NEW.PE
        WHERE DesignatedPointTimeSlice.uuid IN (SELECT uuiddsnpnt FROM SignificantPoint WHERE id IN (SELECT idSignificantPoint FROM SegmentPoint WHERE id = (SELECT idEnRouteSegmentPointEnd FROM RouteSegmentTimeSlice WHERE  RouteSegmentTimeSlice.uuid = OLD.uuid)));
      RETURN NEW;
  ELSIF TG_OP = 'DELETE'
    THEN
      WITH
        delete_RtSgmntTS AS (DELETE FROM RouteSegmentTimeSlice WHERE uuid = OLD.uuid RETURNING uuidRoute, idEnRouteSegmentPointStart, idEnRouteSegmentPointEnd, idCurve, idTimeSlice),
        delete_RtSgmt AS (DELETE FROM RouteSegment WHERE uuid = OLD.uuid),
        delete_TSRtSgmnt AS (DELETE FROM TimeSlice WHERE id = (SELECT idTimeSlice FROM delete_RtSgmntTS)),
        delete_Curve AS (DELETE FROM Curve WHERE id = (SELECT idCurve FROM delete_RtSgmntTS)),
        delete_RtTS AS (DELETE FROM RouteTimeSlice WHERE uuid = (SELECT uuidRoute FROM delete_RtSgmntTS) RETURNING idTimeSlice),
        delete_Rt AS (DELETE FROM Route WHERE uuid = (SELECT uuidRoute FROM delete_RtSgmntTS)),
        delete_TSRt AS (DELETE FROM TimeSlice WHERE id = (SELECT idTimeSlice FROM delete_RtTS)),
        delete_crtgrphLblMVLTS AS (DELETE FROM CartographyLabelMVLTimeSlice WHERE uuidrtseg = OLD.uuid RETURNING uuid, idTimeSlice),
        delete_crtgrphLblMVL AS (DELETE FROM CartographyLabelMVL WHERE uuid = (SELECT delete_crtgrphLblMVLTS.uuid FROM delete_crtgrphLblMVLTS))
      DELETE FROM TimeSlice WHERE id = (SELECT idTimeSlice FROM delete_crtgrphLblMVLTS);
      RETURN NULL;
  END IF;
  RETURN NEW;
END;
$function$;


CREATE OR REPLACE FUNCTION tra_function()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
BEGIN
  IF TG_OP = 'INSERT'
  THEN
     IF ((SELECT DesignatedPointTimeSlice.uuid FROM DesignatedPointTimeSlice WHERE DesignatedPointTimeSlice.designator = NEW.PS) is NULL
       AND (SELECT DesignatedPointTimeSlice.uuid FROM DesignatedPointTimeSlice WHERE DesignatedPointTimeSlice.designator = NEW.PE) is NULL)
     THEN
    with insert_Curve AS (INSERT INTO Curve (geom, srid) VALUES (NEW.geom, '4326') RETURNING Curve.id),
      -- здесь нужно вставить точку TPM TPT
      -- point Start
      insert_PointS AS (INSERT INTO Point(srid, geom) VALUES ('4326', ST_StartPoint(NEW.geom)) RETURNING Point.id),
      insert_dsgntdpntS AS (INSERT INTO DesignatedPoint(uuid) VALUES (uuid_generate_v4()) RETURNING DesignatedPoint.uuid),
      insert_TSdsgntdpntS AS (INSERT INTO TimeSlice (id, validTimeBegin) VALUES (nextval('auto_id_timeslice'), '2016-07-21') RETURNING timeslice.id),
      insert_dsgntdpntSTS AS (INSERT INTO DesignatedPointTimeSlice(idTimeSlice, uuid, designator, type, idpoint) VALUES
        ((SELECT insert_TSdsgntdpntS.id FROM insert_TSdsgntdpntS),(SELECT insert_dsgntdpntS.uuid FROM insert_dsgntdpntS),(NEW.PS), 'ICAO', (SELECT insert_PointS.id FROM insert_PointS))),
      insert_sgnfS AS (INSERT INTO SignificantPoint(id, uuiddsnpnt, idPoint) VALUES
        (nextval('auto_id_significant_point'),(SELECT insert_dsgntdpntS.uuid FROM insert_dsgntdpntS), (SELECT insert_PointS.id FROM insert_PointS)) RETURNING SignificantPoint.id),
      insert_sgmntPS AS (INSERT INTO SegmentPoint (idSignificantPoint) VALUES ((SELECT insert_sgnfS.id FROM insert_sgnfS)) RETURNING SegmentPoint.id),
      insert_enRtSgmntPS AS (INSERT INTO EnRouteSegmentPoint(id) VALUES ((SELECT insert_sgmntPS.id FROM insert_sgmntPS))),
      -- point End
      insert_PointE AS (INSERT INTO Point(srid, geom) VALUES ('4326', ST_EndPoint(NEW.geom)) RETURNING Point.id),
      insert_dsgntdpntE AS (INSERT INTO DesignatedPoint(uuid) VALUES (uuid_generate_v4()) RETURNING DesignatedPoint.uuid),
      insert_TSdsgntdpntE AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_dsgntdpntETS AS (INSERT INTO DesignatedPointTimeSlice(idTimeSlice, uuid, designator, type, idpoint) VALUES
        ((SELECT insert_TSdsgntdpntE.id FROM insert_TSdsgntdpntE),(SELECT insert_dsgntdpntE.uuid FROM insert_dsgntdpntE),(NEW.PE), 'ICAO', (SELECT insert_PointE.id FROM insert_PointE))),
      insert_sgnfE AS (INSERT INTO SignificantPoint(id, uuiddsnpnt, idPoint) VALUES
        (nextval('auto_id_significant_point'),(SELECT insert_dsgntdpntE.uuid FROM insert_dsgntdpntE), (SELECT insert_PointE.id FROM insert_PointE)) RETURNING SignificantPoint.id),
      insert_sgmntPE AS (INSERT INTO SegmentPoint (idSignificantPoint) VALUES ((SELECT insert_sgnfE.id FROM insert_sgnfE)) RETURNING SegmentPoint.id),
      insert_enRtSgmntPE AS (INSERT INTO EnRouteSegmentPoint(id) VALUES ((SELECT insert_sgmntPE.id FROM insert_sgmntPE))),
      -- route
      insert_route AS (INSERT INTO Route (uuid) VALUES (uuid_generate_v4()) RETURNING Route.uuid),
      insert_TSrt AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_rtsgmnt AS (INSERT INTO RouteSegment(uuid, _transasID) VALUES (uuid_generate_v4(), NEW.trID) RETURNING RouteSegment.uuid),
      insert_TSrtsgmnt AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_rtsgmntTS AS (INSERT INTO RouteSegmentTimeSlice (uuid, idTimeSlice, magneticTrack, reverseMagneticTrack,
                                                                length, widthLeft, widthRight, upperLimit, upperLimitReference, lowerLimit,
                                                                lowerLimitReference, idCurve, idEnRouteSegmentPointStart, idEnRouteSegmentPointEnd, uuidRoute) VALUES
        ((SELECT insert_rtsgmnt.uuid FROM insert_rtsgmnt), (SELECT insert_TSrtsgmnt.id FROM insert_TSrtsgmnt), NEW.mta, NEW.rmta, ROW(NEW.lb, 'M'), ROW(NEW.wd/2, 'M'),
                   ROW(NEW.wd/2, 'M'), ROW(NEW.top, NEW.UNL, NEW.top_unit), NEW.format_top, ROW(NEW.bottom, NEW.GND, NEW.bottom_unit), NEW.format_bottom,
                  (SELECT insert_Curve.id FROM insert_Curve),(SELECT insert_sgmntPS.id FROM insert_sgmntPS),(SELECT insert_sgmntPE.id FROM insert_sgmntPE), (SELECT insert_route.uuid FROM insert_route))),
      insert_crtgrphLblMVL AS (INSERT INTO cartographylabelmvl(uuid) VALUES (uuid_generate_v4()) RETURNING cartographylabelmvl.uuid),
      insert_TScrtgrphLblMVL AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_crtgrphLblMVLTS AS (INSERT INTO  cartographylabelmvltimeslice(uuid, idTimeSlice, uuidrtseg) VALUES ((SELECT insert_crtgrphLblMVL.uuid FROM insert_crtgrphLblMVL),
                                                                                                                        (SELECT insert_TScrtgrphLblMVL.id FROM insert_TScrtgrphLblMVL),
                                                                                                                        (SELECT insert_rtsgmnt.uuid FROM insert_rtsgmnt)))
       INSERT INTO RouteTimeSlice (idTimeSlice, uuid, locationDesignator, type) VALUES ((SELECT insert_TSrt.id FROM insert_TSrt), (SELECT insert_route.uuid FROM insert_route), NEW.nm, 'ATS');
      ELSE
      WITH insert_Curve AS (INSERT INTO Curve (geom, srid) VALUES (NEW.geom, '4326') RETURNING Curve.id),
      select_pointStart AS (SELECT DesignatedPointTimeSlice.uuid FROM DesignatedPointTimeSlice WHERE DesignatedPointTimeSlice.designator = NEW.PS),
      select_pointEnd AS (SELECT DesignatedPointTimeSlice.uuid FROM DesignatedPointTimeSlice WHERE DesignatedPointTimeSlice.designator = NEW.PE),
      insert_route AS (INSERT INTO Route (uuid) VALUES (uuid_generate_v4()) RETURNING Route.uuid),
      insert_TSrt AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_rtsgmnt AS (INSERT INTO RouteSegment(uuid, _transasID) VALUES (uuid_generate_v4(), NEW.trID) RETURNING RouteSegment.uuid),
      insert_TSrtsgmnt AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_rtsgmntTS AS (INSERT INTO RouteSegmentTimeSlice (uuid, idTimeSlice, magneticTrack, reverseMagneticTrack,
                                                                length, widthLeft, widthRight, upperLimit, upperLimitReference, lowerLimit,
                                                                lowerLimitReference, idCurve, idEnRouteSegmentPointStart, idEnRouteSegmentPointEnd, uuidRoute) VALUES
        ((SELECT insert_rtsgmnt.uuid FROM insert_rtsgmnt), (SELECT insert_TSrtsgmnt.id FROM insert_TSrtsgmnt), NEW.mta, NEW.rmta, ROW(NEW.lb, 'M'), ROW(NEW.wd/2, 'M'),
                   ROW(NEW.wd/2, 'M'), ROW(NEW.top, NEW.UNL, NEW.top_unit), NEW.format_top, ROW(NEW.bottom, NEW.GND, NEW.bottom_unit), NEW.format_bottom,
                  (SELECT insert_Curve.id FROM insert_Curve),
                  (SELECT SegmentPoint.id FROM SegmentPoint WHERE idSignificantPoint = (SELECT id FROM SignificantPoint WHERE uuiddsnpnt = (SELECT select_pointStart.uuid FROM select_pointStart))),
                  (SELECT SegmentPoint.id FROM SegmentPoint WHERE idSignificantPoint = (SELECT id FROM SignificantPoint WHERE uuiddsnpnt = (SELECT select_pointEnd.uuid FROM select_pointEnd))), (SELECT insert_route.uuid FROM insert_route))),
      insert_crtgrphLblMVL AS (INSERT INTO cartographylabelmvl(uuid) VALUES (uuid_generate_v4()) RETURNING cartographylabelmvl.uuid),
      insert_TScrtgrphLblMVL AS (INSERT INTO TimeSlice (validTimeBegin) VALUES ('2016-07-21') RETURNING timeslice.id),
      insert_crtgrphLblMVLTS AS (INSERT INTO  cartographylabelmvltimeslice(uuid, idTimeSlice, uuidrtseg) VALUES ((SELECT insert_crtgrphLblMVL.uuid FROM insert_crtgrphLblMVL),
                                                                                                                        (SELECT insert_TScrtgrphLblMVL.id FROM insert_TScrtgrphLblMVL),
                                                                                                                        (SELECT insert_rtsgmnt.uuid FROM insert_rtsgmnt)))
       INSERT INTO RouteTimeSlice (idTimeSlice, uuid, locationDesignator, type) VALUES ((SELECT insert_TSrt.id FROM insert_TSrt), (SELECT insert_route.uuid FROM insert_route), NEW.nm, 'ATS');
      END IF ;
    RETURN NEW;
  ELSIF TG_OP = 'UPDATE'
    THEN
      UPDATE RouteSegmentTimeSlice
        SET magneticTrack = NEW.mta, reverseMagneticTrack = NEW.rmta, length =  ROW(NEW.lb, 'M'), widthLeft = ROW(NEW.wd/2, 'M'), widthRight = ROW(NEW.wd/2, 'M'),
          upperLimit = ROW(NEW.top, NEW.UNL, NEW.top_unit), upperLimitReference =  NEW.format_top, lowerLimit = ROW(NEW.bottom, NEW.GND, NEW.bottom_unit), lowerLimitReference = NEW.format_bottom
        WHERE RouteSegmentTimeSlice.uuid = OLD.uuid;
      UPDATE Curve
        SET geom = NEW.geom
        WHERE id = (SELECT idCurve FROM RouteSegmentTimeSlice WHERE RouteSegmentTimeSlice.uuid = OLD.uuid);
      UPDATE RouteTimeSlice
        SET locationDesignator = NEW.nm
        WHERE RouteTimeSlice.uuid = (SELECT uuidRoute FROM RouteSegmentTimeSlice WHERE RouteSegmentTimeSlice.uuid = OLD.uuid);
      UPDATE DesignatedPointTimeSlice
        SET designator = NEW.PS
        WHERE DesignatedPointTimeSlice.uuid IN (SELECT uuiddsnpnt FROM SignificantPoint WHERE id IN (SELECT idSignificantPoint FROM SegmentPoint WHERE id = (SELECT idEnRouteSegmentPointStart FROM RouteSegmentTimeSlice WHERE RouteSegmentTimeSlice.uuid = OLD.uuid)));
      UPDATE DesignatedPointTimeSlice
        SET designator = NEW.PE
        WHERE DesignatedPointTimeSlice.uuid IN (SELECT uuiddsnpnt FROM SignificantPoint WHERE id IN (SELECT idSignificantPoint FROM SegmentPoint WHERE id = (SELECT idEnRouteSegmentPointEnd FROM RouteSegmentTimeSlice WHERE  RouteSegmentTimeSlice.uuid = OLD.uuid)));
      RETURN NEW;
  ELSIF TG_OP = 'DELETE'
    THEN
      WITH
        delete_RtSgmntTS AS (DELETE FROM RouteSegmentTimeSlice WHERE uuid = OLD.uuid RETURNING uuidRoute, idEnRouteSegmentPointStart, idEnRouteSegmentPointEnd, idCurve, idTimeSlice),
        delete_RtSgmt AS (DELETE FROM RouteSegment WHERE uuid = OLD.uuid),
        delete_TSRtSgmnt AS (DELETE FROM TimeSlice WHERE id = (SELECT idTimeSlice FROM delete_RtSgmntTS)),
        delete_Curve AS (DELETE FROM Curve WHERE id = (SELECT idCurve FROM delete_RtSgmntTS)),
        delete_RtTS AS (DELETE FROM RouteTimeSlice WHERE uuid = (SELECT uuidRoute FROM delete_RtSgmntTS) RETURNING idTimeSlice),
        delete_Rt AS (DELETE FROM Route WHERE uuid = (SELECT uuidRoute FROM delete_RtSgmntTS)),
        delete_TSRt AS (DELETE FROM TimeSlice WHERE id = (SELECT idTimeSlice FROM delete_RtTS)),
        delete_crtgrphLblMVLTS AS (DELETE FROM CartographyLabelMVLTimeSlice WHERE uuidrtseg = OLD.uuid RETURNING uuid, idTimeSlice),
        delete_crtgrphLblMVL AS (DELETE FROM CartographyLabelMVL WHERE uuid = (SELECT delete_crtgrphLblMVLTS.uuid FROM delete_crtgrphLblMVLTS))
      DELETE FROM TimeSlice WHERE id = (SELECT idTimeSlice FROM delete_crtgrphLblMVLTS);
      RETURN NULL;
  END IF;
  RETURN NEW;
END;
$function$;

CREATE TRIGGER tra_trigger
INSTEAD OF INSERT OR UPDATE OR DELETE ON
  tra_1608 FOR EACH ROW EXECUTE PROCEDURE tra_function();


CREATE OR REPLACE VIEW uaa1702 AS
  SELECT DISTINCT ON (gid)
    cartographylabelairspacearea.id AS gid,
    Airspace._transasID AS id,
    cartographylabelairspacearea.index,
    -- наименование ИКАО воздушного пространства
    AirspaceTimeSlice.designator AS nm,
    -- наименование русское воздушного пространства
    AirspaceTimeSlice.name AS nl,
    AirspaceTimeSlice.controlType AS tp,
    -- соединение всех высотных полей для правильного вывода для стилистики
    concat(
                    CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN '(' END,
                  -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                    (CASE WHEN (lowerLimit).unit = 'FL' THEN (lowerLimit).unit
                      ELSE ''
                      END),
                   -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                   (CASE WHEN cast(round((lowerLimit).value,0) as INTEGER) < 100
                      THEN concat('0', round((lowerLimit).value,0))
                      WHEN (lowerLimit).value IS NULL THEN 'GND'
                      ELSE cast(round((lowerLimit).value,0) as text)
                      END),
                      CASE WHEN AirspaceVolume.lowerLimitReference = 'SFC' THEN ')' END,
                     '#',
                  -- проверяем в FL или метрах у нас высота, если в FL - выводим это в столбец
                    CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN '(' END,
                    (CASE WHEN (upperLimit).unit = 'FL' THEN (upperLimit).unit
                      ELSE ''
                      END),
                   -- проверяем количество цифр в высоте, если их две - то добавляем спереди нолик
                   (CASE WHEN cast(round((upperLimit).value,0) as INTEGER) < 100
                      THEN concat('0', round((upperLimit).value,0))
                      WHEN (upperLimit).value IS NULL THEN 'UNL'
                      ELSE cast(round((upperLimit).value,0) as text)
                      END),
                   CASE WHEN AirspaceVolume.upperlimitreference = 'SFC' THEN ')' END)
    AS he,
   -- Позывной
    concat(
        (CASE WHEN callSign SIMILAR TO '%(-)%' then
    concat(substring(callSign FROM '^.*-'), initcap(reverse(split_part(reverse(callsign), '-', 1))))
    else callSign end),

        (frequencyTransmission).value)
    AS fr,
    cartographylabelairspacearea.layerpos,
    cartographylabelairspacearea.longitude as xlbl,
    cartographylabelairspacearea.latitude as ylbl,
    Surface.geom,
    cartographylabelairspacearea.map as map
  FROM cartographylabelairspacearea
  LEFT JOIN Airspace ON cartographylabelairspacearea.uuidairspc = Airspace.uuid
    LEFT JOIN Airspace_AirTrafficManagementService ON cartographylabelairspacearea.uuidairspc = Airspace_AirTrafficManagementService.uuidairspc
    LEFT JOIN AirTrafficManagementServiceTimeSlice ON Airspace_AirTrafficManagementService.uuidAirTrafficManagementService = AirTrafficManagementServiceTimeSlice.uuid
    LEFT JOIN CallsignDetail ON AirTrafficManagementServiceTimeSlice.uuid = CallsignDetail.uuidService
    LEFT JOIN Service_RadioCommunicationChannel ON Airspace_AirTrafficManagementService.uuidAirTrafficManagementService = Service_RadioCommunicationChannel.uuidService
    LEFT JOIN RadioCommunicationChannelTimeSlice ON Service_RadioCommunicationChannel.uuidRadioCommunicationChannel = RadioCommunicationChannelTimeSlice.uuid
    LEFT JOIN AirspaceVolume ON Airspace.uuid = AirspaceVolume.uuidairspc
    LEFT JOIN Surface ON AirspaceVolume.idsurface = Surface.id
    LEFT JOIN AirspaceTimeSlice ON AirspaceVolume.uuidairspc = AirspaceTimeSlice.uuid
    LEFT JOIN timeslice ON AirspaceTimeSlice.idTimeSlice  = TimeSlice.id WHERE TimeSlice.validTimeBegin <= '2017-02-02'
                                                                                   AND (TimeSlice.validTimeEnd > '2017-02-02'
                                                                                        OR TimeSlice.validTimeEnd is NULL) AND AirspaceTimeSlice.type = 'ATZ';


CREATE OR REPLACE VIEW nav1702  as
SELECT
    cartographylabelnav.id AS gid,
    (SELECT Navaid._transasID AS id
     FROM Navaid
     WHERE Navaid.uuid = cartographylabelnav.uuidnavaid),
    (SELECT NavaidTimeSlice.designator AS nm
     FROM NavaidTimeSlice, timeslice
     WHERE navaidtimeslice.uuid = cartographylabelnav.uuidnavaid AND navaidtimeslice.idTimeSlice = TimeSlice.id
           AND TimeSlice.validTimeBegin <= '2017-02-02' AND
           (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL)),
    (SELECT NavaidTimeSlice.name AS nl
     FROM NavaidTimeSlice, timeslice
     WHERE navaidtimeslice.uuid = cartographylabelnav.uuidnavaid AND navaidtimeslice.idTimeSlice = TimeSlice.id
           AND TimeSlice.validTimeBegin <= '2017-02-02' AND
           (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL)),
    (SELECT NavaidTimeSlice.type AS tp
     FROM NavaidTimeSlice, timeslice
     WHERE NavaidTimeSlice.uuid = cartographylabelnav.uuidnavaid AND NavaidTimeSlice.idTimeSlice = TimeSlice.id
           AND TimeSlice.validTimeBegin <= '2017-02-02' AND
           (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL)),
    -- Выборка частоты РНС. В зависимости от типа РНС частота храняится в разных таблицах. Если Nav.type = 'NDB',
    -- то информация о частоте будет лежать в таблице NDB

    -- если тип NDB
    CASE WHEN (SELECT NavaidTimeSlice.type FROM navaidtimeslice, timeslice
           WHERE navaidtimeslice.uuid = cartographylabelnav.uuidnavaid AND NavaidTimeSlice.idTimeSlice = TimeSlice.id
           AND TimeSlice.validTimeBegin <= '2017-02-02' AND
           (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL)) = 'NDB'
      -- то частоту выбираем из таблицы NDB
       THEN (SELECT ((frequency).value || ' ' || (frequency).unit)
             FROM NDB, timeslice, navaid_navaidequipment
             WHERE NDB.uuid = navaid_navaidequipment.uuidnavaidequipment AND
                   navaid_navaidequipment.uuidnavaid = cartographylabelnav.uuidnavaid AND
                   NDB.idtimeslice = TimeSlice.id AND TimeSlice.validTimeBegin <= '2017-02-02' AND
                   (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL))
    -- если тип DME
    WHEN (SELECT NavaidTimeSlice.type FROM navaidtimeslice, timeslice
           WHERE navaidtimeslice.uuid = cartographylabelnav.uuidnavaid AND NavaidTimeSlice.idTimeSlice = TimeSlice.id
           AND TimeSlice.validTimeBegin <= '2017-02-02' AND
           (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL)) = 'DME'
      --  то частоту выбираем из таблицы DME
      THEN (SELECT ((ghostFrequency).value || ' ' || (ghostFrequency).unit)
             FROM DME, timeslice, navaid_navaidequipment
             WHERE DME.uuid = navaid_navaidequipment.uuidnavaidequipment AND
                   navaid_navaidequipment.uuidnavaid = cartographylabelnav.uuidnavaid AND
                   DME.idtimeslice = TimeSlice.id AND TimeSlice.validTimeBegin <= '2017-02-02' AND
                   (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL))
    -- если тип ILS_DME
    WHEN (SELECT NavaidTimeSlice.type FROM navaidtimeslice, timeslice
           WHERE navaidtimeslice.uuid = cartographylabelnav.uuidnavaid AND NavaidTimeSlice.idTimeSlice = TimeSlice.id
           AND TimeSlice.validTimeBegin <= '2017-02-02' AND
           (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL)) = 'ILS_DME'
      --  то частоту выбираем из таблицы Localizer
      THEN (SELECT ((frequency).value || ' ' || (frequency).unit)
             FROM Localizer, timeslice, navaid_navaidequipment
             WHERE Localizer.uuid = navaid_navaidequipment.uuidnavaidequipment AND
                   navaid_navaidequipment.uuidnavaid = cartographylabelnav.uuidnavaid AND
                   Localizer.idtimeslice = TimeSlice.id AND TimeSlice.validTimeBegin <= '2017-02-02' AND
                   (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL))
    -- оставшийся тип, еще не рассмотренный - VOR
    ELSE (SELECT ((frequency).value || ' ' || (frequency).unit)
           FROM VOR, timeslice, navaid_navaidequipment
           WHERE VOR.uuid = navaid_navaidequipment.uuidnavaidequipment AND
                   navaid_navaidequipment.uuidnavaid = cartographylabelnav.uuidnavaid AND
                   VOR.idtimeslice = TimeSlice.id AND TimeSlice.validTimeBegin <= '2017-02-02' AND
                   (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL))
     END
     AS tf,
    -- магнитное склонение
       (SELECT Point.magneticVariation AS ugol
       FROM point, NavaidTimeSlice, timeslice
       WHERE point.id = NavaidTimeSlice.idElevatedPoint AND navaidtimeslice.uuid = cartographylabelnav.uuidnavaid
             AND navaidtimeslice.idTimeSlice = TimeSlice.id AND TimeSlice.validTimeBegin <= '2017-02-02' AND
             (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL)),
    -- проверка, является ли РНС трассовым
    CASE WHEN (SELECT NavaidTimeSlice.purpose FROM navaidtimeslice, timeslice
           WHERE navaidtimeslice.uuid = cartographylabelnav.uuidnavaid AND NavaidTimeSlice.idTimeSlice = TimeSlice.id
           AND TimeSlice.validTimeBegin <= '2017-02-02' AND
           (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL)) = 'ENROUTE'
          THEN text 'да'
          WHEN (SELECT NavaidTimeSlice.purpose FROM navaidtimeslice, timeslice
           WHERE navaidtimeslice.uuid = cartographylabelnav.uuidnavaid AND NavaidTimeSlice.idTimeSlice = TimeSlice.id
           AND TimeSlice.validTimeBegin <= '2017-02-02' AND
           (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL)) = 'ALL'
       THEN text 'да'
       ELSE text 'нет'
       END
    AS ist,
    -- проверка является ли РНС аэродромным
     CASE WHEN (SELECT NavaidTimeSlice.purpose FROM navaidtimeslice, timeslice
           WHERE navaidtimeslice.uuid = cartographylabelnav.uuidnavaid AND NavaidTimeSlice.idTimeSlice = TimeSlice.id
           AND TimeSlice.validTimeBegin <= '2017-02-02' AND
           (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL)) = 'TERMINAL'
       THEN text 'да'
       WHEN (SELECT NavaidTimeSlice.purpose FROM navaidtimeslice, timeslice
           WHERE navaidtimeslice.uuid = cartographylabelnav.uuidnavaid AND NavaidTimeSlice.idTimeSlice = TimeSlice.id
           AND TimeSlice.validTimeBegin <= '2017-02-02' AND
           (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd IS NULL)) = 'ALL'
       THEN text 'да'
       ELSE text 'нет'
       END
    AS isa,
    -- высотная отметка
    (SELECT (elevation).value AS ha_m
      FROM elevatedpoint, timeslice, navaidtimeslice
      WHERE elevatedpoint.id = NavaidTimeSlice.idelevatedpoint AND navaidtimeslice.uuid = cartographylabelnav.uuidnavaid
            AND NavaidTimeSlice.idTimeSlice  = TimeSlice.id  AND TimeSlice.validTimeBegin <= '2017-02-02' AND
            (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
       -- координаты подписи
    (SELECT concat(DD2DMS(point.latitude,'°', '''','"', 'lat'), 'N') as "N"
      FROM Point, navaidtimeslice, timeslice
      WHERE Point.id = navaidtimeslice.idelevatedpoint AND navaidtimeslice.uuid = cartographylabelnav.uuidnavaid
            AND navaidtimeslice.idTimeSlice  = TimeSlice.id  AND TimeSlice.validTimeBegin <= '2017-02-02' AND
            (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
    (SELECT concat(DD2DMS(point.longitude,'°', '''','"', 'lon'), 'E') as "E"
    FROM Point, navaidtimeslice, timeslice
    WHERE Point.id = navaidtimeslice.idelevatedpoint AND navaidtimeslice.uuid = cartographylabelnav.uuidnavaid
          AND navaidtimeslice.idTimeSlice  = TimeSlice.id  AND TimeSlice.validTimeBegin <= '2017-02-02' AND
          (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL)),
       cartographylabelnav.longitude AS xlbl,
       cartographylabelnav.latitude  AS ylbl,
       cartographylabelnav.map       AS map,
       cartographylabelnav.text,
       (SELECT Point.geom
        FROM Point, navaidtimeslice, timeslice
        WHERE Point.id = navaidtimeslice.idelevatedpoint AND navaidtimeslice.uuid = cartographylabelnav.uuidnavaid
            AND NavaidTimeSlice.idTimeSlice  = TimeSlice.id  AND TimeSlice.validTimeBegin <= '2017-02-02' AND
            (TimeSlice.validTimeEnd > '2017-02-02' OR TimeSlice.validTimeEnd is NULL))
FROM cartographylabelnav;


CREATE OR REPLACE FUNCTION nav_function()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
BEGIN
  IF TG_OP = 'INSERT'
  THEN
    -- вставка нового объекта подписи. При вставке в view NAV вставляется только подпись без геометрии и nm, nl и прочих полей , взятых от Feature
        WITH select_Navaiduuid AS (SELECT uuid FROM Navaid WHERE Navaid._transasid = NEW.id)
        INSERT INTO cartographylabelnav (id, longitude, latitude, map, uuidnavaid)
        VALUES (nextval('auto_id_cartography_label_arp'), NEW.xlbl, NEW.ylbl, NEW.map, (SELECT select_Navaiduuid.uuid FROM select_Navaiduuid));
    RETURN NEW;
  ELSIF TG_OP = 'UPDATE' THEN
          UPDATE NavaidTimeSlice
          SET designator = NEW.nm, name = NEW.nl, type = NEW.tp
          WHERE NavaidTimeSlice.uuid = (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid);

        IF NEW.tp = 'NDB' THEN
          UPDATE NDB
          SET frequency = ROW((SELECT cast((regexp_matches(NEW.tf, '^[0-9]*\.[0-9]*', ''))[1] as DECIMAL(12,4))), (SELECT cast((regexp_matches(NEW.tf, '[A-Z].*', ''))[1] as VARCHAR(40))))
          WHERE NDB.uuid IN (SELECT uuidnavaid FROM navaid_navaidequipment
                            WHERE navaid_navaidequipment.uuidnavaid = (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid));
        ELSEIF NEW.tp = 'DME' THEN
          UPDATE DME
          SET ghostFrequency = ROW((SELECT cast((regexp_matches(NEW.tf, '^[0-9]*\.[0-9]*', ''))[1] as DECIMAL(12,4))), (SELECT cast((regexp_matches(NEW.tf, '[A-Z].*', ''))[1] as VARCHAR(40))))
          WHERE DME.uuid IN (SELECT uuidnavaid FROM navaid_navaidequipment
                            WHERE navaid_navaidequipment.uuidnavaid = (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid));
        ELSEIF NEW.tp = 'ILS_DME' THEN
          UPDATE Localizer
          SET frequency = ROW((SELECT cast((regexp_matches(NEW.tf, '^[0-9]*\.[0-9]*', ''))[1] as DECIMAL(12,4))), (SELECT cast((regexp_matches(NEW.tf, '[A-Z].*', ''))[1] as VARCHAR(40))))
          WHERE Localizer.uuid IN (SELECT uuidnavaid FROM navaid_navaidequipment
                            WHERE navaid_navaidequipment.uuidnavaid = (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid));
        ELSE UPDATE VOR
          SET frequency = ROW((SELECT cast((regexp_matches(NEW.tf, '^[0-9]*\.[0-9]*', ''))[1] as DECIMAL(12,4))), (SELECT cast((regexp_matches(NEW.tf, '[A-Z].*', ''))[1] as VARCHAR(40))))
          WHERE VOR.uuid IN (SELECT uuidnavaid FROM navaid_navaidequipment
                            WHERE navaid_navaidequipment.uuidnavaid = (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid));
        END IF ;

        IF NEW.isa = 'да' AND NEW.ist = 'да'
          THEN
          UPDATE NavaidTimeSlice
          SET purpose = 'ALL'
          WHERE navaidtimeslice.uuid IN (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid);
        ELSEIF NEW.isa = 'да' AND NEW.ist = 'нет'
          THEN
          UPDATE NavaidTimeSlice
          SET purpose = 'TERMINAL'
          WHERE navaidtimeslice.uuid IN (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid);
        ELSEIF NEW.isa = 'нет' AND NEW.ist = 'да'
          THEN
          UPDATE NavaidTimeSlice
          SET purpose = 'ENROUTE'
          WHERE navaidtimeslice.uuid IN (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid);
        END IF;
          UPDATE Point
          SET magneticVariation = NEW.ugol
          WHERE Point.id = (SELECT NavaidTimeSlice.idelevatedpoint
                            FROM NavaidTimeSlice
                            WHERE NavaidTimeSlice.uuid = (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid));
          UPDATE Point
          SET geom = NEW.geom
          WHERE Point.id = (SELECT NavaidTimeSlice.idelevatedpoint
                            FROM NavaidTimeSlice
                            WHERE NavaidTimeSlice.uuid = (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid));
          UPDATE elevatedpoint
          SET elevation = ROW (NEW.ha_m, NULL, 'M')
          WHERE elevatedpoint.id = (SELECT NavaidTimeSlice.idelevatedpoint
                            FROM NavaidTimeSlice
                            WHERE NavaidTimeSlice.uuid = (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid));
          UPDATE cartographylabelnav
          SET longitude = NEW.xlbl, latitude = NEW.ylbl, map = NEW.map
          WHERE cartographylabelnav.id = OLD.gid;
          RETURN NEW;
  ELSIF TG_OP = 'DELETE'
    THEN
       WITH
    delete_navTS AS (DELETE FROM navaidtimeslice WHERE navaidtimeslice.uuid =
                        (SELECT uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid)
                      RETURNING idelevatedpoint, navaidtimeslice.uuid, navaidtimeslice.idtimeslice),
    delete_TS AS (DELETE FROM timeslice WHERE id = (SELECT delete_navTS.idtimeslice FROM delete_navTS)),
    delete_LblNav AS (DELETE FROM cartographylabelnav WHERE id = OLD.gid),
    delete_NavNavEqpmnt AS (DELETE FROM navaid_navaidequipment WHERE uuidnavaid = (SELECT uuid FROM delete_navTS) RETURNING uuidnavaidequipment),
    delete_NDB AS (DELETE FROM ndb WHERE ndb.uuid = (SELECT uuidnavaidequipment FROM delete_NavNavEqpmnt) RETURNING idtimeslice),
    delete_NDBTS AS (DELETE FROM timeslice WHERE id = (SELECT idtimeslice FROM delete_NDB)),
    delete_DME AS (DELETE FROM dme WHERE dme.uuid = (SELECT uuidnavaidequipment FROM delete_NavNavEqpmnt) RETURNING idtimeslice),
    delete_DMETS AS (DELETE FROM timeslice WHERE id = (SELECT idtimeslice FROM delete_DME)),
    delete_Localizer AS (DELETE FROM Localizer WHERE Localizer.uuid = (SELECT uuidnavaidequipment FROM delete_NavNavEqpmnt) RETURNING idtimeslice),
    delete_LocalizerTS AS (DELETE FROM timeslice WHERE id = (SELECT idtimeslice FROM delete_Localizer)),
    delete_VOR AS (DELETE FROM vor WHERE vor.uuid = (SELECT uuidnavaidequipment FROM delete_NavNavEqpmnt) RETURNING idtimeslice),
    delete_VORTS AS (DELETE FROM timeslice WHERE id = (SELECT idtimeslice FROM delete_VOR)),
    delete_point AS (DELETE FROM Point WHERE Point.id IN (SELECT delete_navTS.idelevatedpoint FROM delete_navTS)),
    delete_navaid AS (DELETE FROM Navaid WHERE Navaid.uuid = (SELECT cartographylabelnav.uuidnavaid FROM cartographylabelnav WHERE id = OLD.gid))
         DELETE FROM ElevatedPoint
        WHERE ElevatedPoint.id IN (SELECT delete_navTS.idelevatedpoint FROM delete_navTS);
      RETURN NULL;
  END IF;
  RETURN NEW;
END;
$function$;


CREATE TRIGGER nav_trigger
INSTEAD OF INSERT OR UPDATE OR DELETE ON
  nav1702 FOR EACH ROW EXECUTE PROCEDURE nav_function();



-- Триггеры для координат
/*
CREATE OR REPLACE FUNCTION trigger_update_CartographyLabel()
  RETURNS TRIGGER AS $update_lbl$
BEGIN
  INSERT INTO CartographyLabelARPTimeSlice (xlbl, ylbl, srid, uuidarphlp, geom) VALUES
    ((SELECT longitude
      FROM Point, ElevatedPoint
      WHERE Point.id = ElevatedPoint.id AND ElevatedPoint.id = NEW.idElevatedPoint),
     (SELECT latitude
      FROM Point, ElevatedPoint
      WHERE Point.id = ElevatedPoint.id AND ElevatedPoint.id = NEW.idElevatedPoint),
     (SELECT srid
      FROM Point, ElevatedPoint
      WHERE Point.id = ElevatedPoint.id AND ElevatedPoint.id = NEW.idElevatedPoint),
     NEW.uuid,
     (SELECT geom
      FROM Point, ElevatedPoint
      WHERE Point.id = ElevatedPoint.id AND ElevatedPoint.id = NEW.idElevatedPoint));
  RETURN NEW;
END;
$update_lbl$ LANGUAGE plpgsql;

CREATE TRIGGER CartographyLabel
AFTER INSERT ON AirportHeliportTimeSlice FOR EACH ROW EXECUTE PROCEDURE trigger_update_CartographyLabel();
*/


/*
CREATE OR REPLACE FUNCTION trigger_update_CartographyLabel_CTA()
  RETURNS TRIGGER AS $update_lbl$
BEGIN
  INSERT INTO CartographyLabel_CTA_CTR_TMA_UAA (uuidairspc) VALUES
    (
      -- (SELECT srid
      -- FROM Surface, airspacevolume, airspace
      -- WHERE Surface.id IN (SELECT AirspaceVolume.idSurface FROM AirspaceVolume WHERE AirspaceVolume.uuidairspc = (SELECT Airspace.uuid FROM Airspace WHERE Airspace.uuid = NEW.uuid))),
      NEW.uuid
    );
  RETURN NEW;
END;
$update_lbl$ LANGUAGE plpgsql;

CREATE TRIGGER CartographyLabel_CTA
AFTER INSERT ON Airspace FOR EACH ROW EXECUTE PROCEDURE trigger_update_CartographyLabel_CTA();

*/

-- Отслеживание изменений координат и SRID
--
CREATE FUNCTION trigger_insert_Point()
  RETURNS TRIGGER AS $$
BEGIN
  IF (TG_OP = 'INSERT' OR
      (TG_OP = 'UPDATE' AND (NEW.longitude <> OLD.longitude OR NEW.latitude <> OLD.latitude OR NEW.srid <> OLD.srid)))
  THEN
    IF NEW.longitude IS NULL OR NEW.latitude IS NULL
    THEN
      IF NEW.srid = 4326 OR NEW.srid IS NULL
      THEN
        NEW.geom = ST_SetSRID(NEW.geom, 4326);
        NEW.longitude = ST_X(NEW.geom);
        NEW.latitude = ST_Y(NEW.geom);
        NEW.srid = 4326;
      ELSE
        -- сначала возьмём X и Y, а потом перепроецируем
        NEW.longitude = ST_X(NEW.geom);
        NEW.latitude = ST_Y(NEW.geom);
        NEW.geom = ST_Transform(ST_SetSRID(NEW.geom, NEW.srid), 4326);
      END IF;
    ELSE
      IF NEW.srid = 4326 OR NEW.srid IS NULL
      THEN
        NEW.geom = ST_SetSRID(ST_MakePoint(NEW.longitude, NEW.latitude), 4326);
        NEW.srid = 4326;
      ELSE
        NEW.geom = ST_Transform(ST_SetSRID(ST_MakePoint(NEW.longitude, NEW.latitude), NEW.srid), 4326);
      END IF;
    END IF;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER inserting_Point
BEFORE INSERT OR UPDATE ON Point FOR EACH ROW
EXECUTE PROCEDURE trigger_insert_Point();

--CREATE TRIGGER inserting_Point_CartographyLabel_CTA_CTR_TMA_UAA
--BEFORE INSERT OR UPDATE ON CartographyLabel_CTA_CTR_TMA_UAA FOR EACH ROW
--EXECUTE PROCEDURE trigger_insert_Point();


CREATE OR REPLACE FUNCTION trigger_insert_polygon()
  RETURNS TRIGGER AS $$
BEGIN
  IF TG_OP = 'INSERT' OR (TG_OP = 'UPDATE' AND (NEW.coord <> OLD.coord OR NEW.srid <> OLD.srid))
  THEN
    IF NEW.coord IS NULL
    THEN
      IF NEW.srid = 4326 OR NEW.srid IS NULL
      THEN
        NEW.geom = ST_SetSRID(NEW.geom, 4326);
      ELSE
        NEW.geom = ST_Transform(ST_SetSRID(NEW.geom, NEW.srid), 4326);
      END IF;
    ELSE
      IF NEW.srid = 4326 OR NEW.srid IS NULL
      THEN
        NEW.geom = ST_Shift_Longitude(ST_SetSRID(ST_GeomFromGeoJSON(NEW.coord), 4326));
      ELSE
        NEW.geom = ST_Shift_Longitude(ST_Transform((ST_SetSRID(ST_GeomFromGeoJSON(NEW.coord), NEW.srid)), 4326));
      END IF;
    END IF;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER inserting_surface
BEFORE INSERT OR UPDATE ON Surface FOR EACH ROW
EXECUTE PROCEDURE trigger_insert_polygon();


CREATE OR REPLACE FUNCTION trigger_insert_curve()
  RETURNS TRIGGER AS $$
BEGIN
  IF (TG_OP = 'INSERT' OR
      (TG_OP = 'UPDATE' AND (NEW.coord <> OLD.coord)))
  THEN
      IF NEW.coord IS NULL
      THEN
          IF NEW.srid = 4326 OR NEW.srid IS NULL
          THEN
            NEW.geom = ST_SetSRID(NEW.geom, 4326);
          ELSE
            NEW.geom = ST_Transform(ST_SetSRID(NEW.geom, NEW.srid), 4326);
          END IF;
      ELSE
          IF NEW.srid = 4326 OR NEW.srid IS NULL
          THEN
            NEW.geom = ST_Shift_Longitude(ST_SetSRID(ST_GeomFromGeoJSON(NEW.coord), 4326));
          ELSE
            NEW.geom = ST_Shift_Longitude(ST_Transform((ST_SetSRID(ST_GeomFromGeoJSON(NEW.coord), NEW.srid)), 4326));
          END IF;
      END IF;

  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER inserting_curve
BEFORE INSERT OR UPDATE ON Curve FOR EACH ROW
EXECUTE PROCEDURE trigger_insert_curve();



-- USEFUL FUNCTIONS
-- NEED TO CREATE FUNCTION USING THIS QUERY TO INSERT NEW POINTS IN THE VIEW
/*
with
insert1 AS (INSERT INTO designatedpoint (_transasid) VALUES ('TPM3929701') RETURNING uuid),
insert2 AS (INSERT INTO CartographyLabelTPMTPT(uuiddsnpnt) VALUES ((SELECT uuid FROM insert1)) ),
insert3 AS (INSERT INTO point(latitude,longitude, magneticVariation) VALUES (45.271861, 61.750686, 7.8) RETURNING id),
insert4 AS (INSERT INTO timeslice(validtimebegin) VALUES ('2017-03-30') RETURNING id),
insert5 AS (INSERT INTO designatedpointtimeslice(uuid, designator, idtimeslice, idpoint) VALUES ((SELECT uuid FROM insert1), 'KAUKY',(SELECT id FROM insert4), (SELECT id FROM insert3)) ),
insert6 AS (INSERT INTO significantpoint(uuiddsnpnt) VALUES ((SELECT uuid FROM insert1)) RETURNING id)
INSERT INTO segmentpoint (reportingatc, idsignificantpoint) VALUES ('COMPULSORY', (SELECT id FROM insert6));
*/