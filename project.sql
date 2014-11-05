--Домены:

CREATE DOMAIN id AS integer;
ALTER DOMAIN id OWNER TO aviauser;

CREATE DOMAIN CodeAirportHeliportDesignatorType AS varchar(6)
CHECK (length(VALUE)> 3 AND length(VALUE)<6);
ALTER DOMAIN CodeAirportHeliportDesignatorType OWNER TO aviauser;

CREATE DOMAIN TextNameType AS varchar(60)
CHECK (length(VALUE)>= 1 AND length(VALUE)=<60);
ALTER DOMAIN TextNameType OWNER TO aviauser;

-- char(4) - установленной длины (4 символа)
CREATE DOMAIN CodeICAOType AS char(4)
CHECK (VALUE ~ '[:upper:]{4}');
-- previous variant: '([:upper:])' AND length(VALUE)=4);
ALTER DOMAIN CodeICAOType OWNER TO aviauser;

CREATE DOMAIN CodeIATAType AS char(3)
CHECK (VALUE ~ '[:upper:]{3}');
-- E'^[a-zA-z]*$' AND length(VALUE)=3);
ALTER DOMAIN CodeIATAType OWNER TO aviauser;

-- AD - только аэродром, АН - аэродром и вертодром, НР - только вертодром, LS - посадочная площадка
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeAirportHeliportType
CREATE TYPE CodeAirportHeliportType AS ENUM ('AD', 'AH', 'HP', 'LS', 'OTHER');

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeYesNoType
CREATE TYPE CodeYesNoType AS enum ('YES', 'NO', 'OTHER');

-- CIVIL - только гражданская авиация, MIL - только военная авиация, JOINT - и гражданская, и военная авиация
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeMilitaryOperationsType
CREATE TYPE CodeMilitaryOperationsType AS enum ('CIVIL', 'MIL', 'JOINT', 'OTHER');

-- значение расстояния по вертикали (например: верхние и нижние границы воздушного пространства)
-- этот тип данных также допускает некоторые специфические не числовые значения:
-- GND - значение "Поверхность Земли"
-- UNL - значение "неограниченный"
-- FLOOR - значение "основание (дно) воздушного пространства", необходимо отображать использование (?) для воздушного пространства с непостоянной нижней границей
-- CEILING - значение "верх воздушного пространства", необходимо отображать использование (?) для воздушного пространства с непостоянной верхней границей
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceVerticalType
CREATE DOMAIN ValDistanceVerticalType AS varchar
CHECK (VALUE ~ '((\+|\-){0,1}[0-9]{1,8}(\.[0-9]{1,4}){0,1})|UNL|GND|FLOOR|CEILING');
ALTER DOMAIN ValDistanceVerticalType  OWNER TO aviauser;

-- вообще в AIXM приведены три используемых датума: EGM_96, AHD, NAVD88, но я думаю что, возможно гораздо больше вариантов
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeVerticalDatumType
CREATE DOMAIN CodeVerticalDatumType AS varchar;
ALTER DOMAIN CodeVerticalDatumType  OWNER TO aviauser;

-- значение угла в данной точке между направление на магнитный север и направлением на географический север
-- положительное значение показывает, что магнитный север восточнее географического
-- отрицательное значение показывает, что магнитный север западнее географического
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValMagneticVariationType
CREATE DOMAIN ValMagneticVariationType AS REAL
CHECK (VALUE >= -180 AND VALUE <=180);
ALTER DOMAIN ValMagneticVariationType  OWNER TO aviauser;

-- значение угла
-- предлагаю объединить этот тип с предыдущим и сделать один, так как они одинаковые
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValAngleType
CREATE DOMAIN ValAngleType AS REAL
CHECK (VALUE >= -180 AND VALUE <=180);
ALTER DOMAIN ValAngleType  OWNER TO aviauser;

-- дата, в которой значимым является только год
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateYearType
CREATE DOMAIN DateYearType AS INTEGER
CHECK (VALUE ~ '[1-9][0-9][0-9][0-9]');
ALTER DOMAIN DateYearType  OWNER TO aviauser;

-- величина годового изменения магнитного склонения, единицы измерения - градус/год
-- вообще всё описание такое же, как у типа ValAngleType, хоть и ед-цы измерения разные, можно объединить
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValMagneticVariationChangeType
CREATE DOMAIN ValMagneticVariationChangeType AS REAL
CHECK (VALUE >= -180 AND VALUE <=180);
ALTER DOMAIN ValMagneticVariationChangeType OWNER TO aviauser;

-- значение температуры + единицы измерения: С - градусы Цельсия, F - Фаренгейта, К - Кельвина
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValTemperatureType
CREATE DOMAIN ValTemperatureType AS VARCHAR
CHECK (VALUE ~ '((\+|\-){0,1}[0-9]{1,8}(\.[0-9]{1,4}){0,1})|C|F|K');
ALTER DOMAIN ValTemperatureType OWNER TO aviauser;

-- единицы измерения: FL - уровень полёта в сотнях футов, SM - стандратные метры (десятки метров)
-- ставить ли здесь единицы измерения? не очень корректно получится, так как есть ограничение 999 (FL), а как сравнивать не числовое значение с числом?
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValFLType
CREATE DOMAIN ValFLType AS VARCHAR
CHECK (VALUE ~ '({0,1}[0-9]{1,8}(\.[0-9]{1,4}){0,1})|FL|SM' AND VALUE > 999);
ALTER DOMAIN ValFLType OWNER TO aviauser;

-- дата по календарю
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_DateType
CREATE DOMAIN DateType AS DATE;
ALTER DOMAIN  DateType OWNER TO aviauser;


-- единицы измерения: NM - морские мили, KM - километры, М - метры, FT - футы, MI - мили, CM - сантиметры
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceSignedType
CREATE DOMAIN ValDistanceSignedType AS VARCHAR
CHECK (VALUE ~ '((\+|\-){0,1}[0-9]{1,8}(\.[0-9]{1,4}){0,1})|NM|KM|M|FT|MI|CM');
ALTER DOMAIN  ValDistanceSignedType OWNER TO aviauser;

-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_ValDistanceType
CREATE DOMAIN ValDistanceType AS VARCHAR
CHECK (VALUE ~ '({0,1}[0-9]{1,8}(\.[0-9]{1,4}){0,1})|NM|KM|M|FT|MI|CM');
ALTER DOMAIN  ValDistanceType OWNER TO aviauser;

-- NORMAL - стандартные операции
-- DOWNGRADED - система теоритически может работать на более высоком уровне, но в нынешнее время она ограничена описанным уровнем
-- UNSERVICEABLE - не пригодна для эксплуатации
-- WORK_IN_PROGRESS - работа налаживается (в ремонте) - under construction
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeStatusOperationsType
CREATE TYPE CodeStatusOperationsType AS ENUM ('NORMAL', 'DOWNGRADED', 'UNSERVICEABLE', 'WORK_IN_PROGRESS', 'OTHER');

-- закодированный идентификатор организации, департамента, агенства или объединения
-- Максимальная длина = 12, минимальная = 1
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeOrganisationDesignatorType
CREATE DOMAIN CodeOrganisationDesignatorType AS VARCHAR(12)
CHECK (VALUE ~ '([A-Z]|[0-9])+([ \+\-/]*([A-Z]|[0-9])+)*' and length(VALUE )>=1);
ALTER DOMAIN CodeOrganisationDesignatorType OWNER TO aviauser;

-- код, указывающий на тип организации
-- STATE - область, STATE_GROUP - группа областей, ORG - организация в области,
-- INTL_ORG - международная организация, ACFT_OPR - авиационное агентство, HANDLING_AGENCY - транспортное агентство (или логистическое)
-- NTL_AUTH - национальный департамент, ATS - постащик услуг авиаперевозок, COMMERCIAL - другая коммерческая организация
CREATE TYPE CodeOrganisationType AS ENUM ('STATE', 'STATE_GROUP', 'ORG', 'INTL_ORG', 'ACFT_OPR', 'HANDLING_AGENCY', 'NTL_AUTH', 'ATS', 'COMMERCIAL', 'OTHER');



-- Table: AirportHeliport

CREATE TABLE AirportHeliport
(

  uuidAirportHeliport           id PRIMARY KEY,

-- Что мы задаём в designator:
-- 1)4х буквенник ИКАО, если таковой имеется
-- 2)3х буквенник IATA, 
-- 3)код Государства + порядковый номер (UU0001)
  designator     CodeAirportHeliportDesignatorType,

-- Первое официальное название аэродрома, назначенное соответствующисм органом
-- может содержать значение Nil
  name           TextNameType,

--индекс аэропорта ИКАО (ICAO DOC 7910), может содержать значение Nil
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeICAOType
  locationIndicatorICAO CodeICAOType,

-- коды ИАТА, может содержать значение Nil
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeIATAType
  designatorIATA CodeIATAType,

-- код, указывающий на тип аэродрома, например: только аэродром, аэродром/ветродром и т.д.
  type           CodeAirportHeliportType,

-- сертифицирован ли аэропорт по правилам ИКАО:
  certifiedICAO  CodeYesNoType,

-- аэродром или вертодром закрыт для общего пользования, только для владельцев
  privateUse     CodeYesNoType,

-- тип организации (гражданская/военная), которая контролирует аэропорт
  controlType    CodeMilitaryOperationsType,

-- высота над уровнем моря высшей точки района посадки (посадочной площадки)
  fieldElevation ValDistanceVerticalType,

-- расстояние по вертикали от установленной высоты, которое определяет точность истинного значения (?)
  fieldElevationAccuracy ValDistanceVerticalType,

-- поверхность относимости с указанием для каких высот и/или глубин установлена
  verticalDatum CodeVerticalDatumType,

-- угловая разница между истинным направление на север и магнитным, измеренными в данной точке и на данное время
  magneticVariation ValMagneticVariationType,

-- точность магнитного склонения в градусах
  magneticVariationAccuracy ValAngleType,

-- год, на который измерено значение магнитного склонения
  dateMagneticVariation DateYearType,

-- величина годового изменения магнитного склонения
  magneticVariationChange ValMagneticVariationChangeType,

-- среднемесячная величина максимальной дневной температуры самого теплого месяца в году на аэродроме
  referenceTemperature ValTemperatureType,

-- наличие точки или площади, указывающей на аэродром, где можно совершить контроль системы альтиметра
  altimeterCheckLocation CodeYesNoType,

-- наличие аварийного блока питания (электроснабжения) у аэродрома/вертодрома
  secondaryPowerSupply CodeYesNoType,

-- наличие прибора, показывающего направление и скорость ветра
  windDirectionIndicator CodeYesNoType,

-- наличие прибора, наглядно показывающего современное направление взлёта и посадки
  landingDirectionIndicator CodeYesNoType,

-- высота перемещений - высота, на которой или ниже которой вертикальное положение воздушного судна контролируется высотами (? - by reference to altitudes)
  transitionAltitude   ValDistanceVerticalType,

-- самый низкий полётный уровень, разрешённый для использования над высотой перемещений (transitionAltitude)
  transitionLevel ValFLType,

-- значение самой низкой температуры самого холодного месяца в году
  lowestTemperature ValTemperatureType,

-- показывает, что аэропорт больше не эксплуатируется, но его инфраструктура всё ещё существует и видна с воздуха
  abandoned CodeYesNoType,

-- дата, когда был сертифицирован надзирающим департаментом
  certificationDate DateType,

-- дата, когда сертификат аэропорта заканчивает свое действие
  certificationExpirationDate DateType
);


--    Лётные ассоциации от таблицы AiportHeliport


-- Table:  City
-- Наименование связи между таблицами AirportHeliport и City - "служит" (serves), связь - один ко многим: один город могут обслуживать несколько аэропортов (но тут вопрос: по диаграмме - один аэропорт может обслуживать несколько городов, обратной связи не показано - только так)
-- У таблицы AirportHeliport есть свойство - обслуживаемый аэропортом город
-- при удалении табл. AirportHeliport табл. City автоматически удаляется, также с отдельными строками
-- от табл.City идет ссылка к классу Note, насколько я поняла, это просто список всех таблиц
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_City
CREATE TABLE  City
 (
-- не знаю, что будем брать за первичный ключ, поэтому пока везде так буду писать
  uuidCity           id PRIMARY KEY,

-- полное название города
  name TextNameType,

-- внешний ключ (FOREIGN KEY), по которому связаны таблицы AirportHeliport и City
  uuidAirportHeliport id REFERENCES AirportHeliport (uuidAirportHeliport)
);


-- Table: ElevatedPoint
-- Наименование связи между таблицами AirportHeliport и ElevatedPoint - "имеет контрольную (?) точку" (hasReferencePoint), связь - один к одному: у каждого аэродрома/вертодрома своя одна контрольная точка
-- У табл. AirportHeliport есть свойство - контрольная точка аэродрома/вертодрома (ARP - airport point)
-- при удалении табл. AirportHeliport табл. ElevatedPoint автоматически удаляется, также с отдельными строками
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_ElevatedPoint
CREATE TABLE  ElevatedPoint
 (
-- внешний ключ (FOREIGN KEY), по которому связаны таблицы AirportHeliport и ElevatedPoint
  uuidAirportHeliport id REFERENCES AirportHeliport (uuidAirportHeliport),

-- расстояние по вертикали от уровня моря до измеряемой точки
  elevation ValDistanceVerticalType,

-- расстояние до геоида сверху (положительное) или снизу (отрицательное) от математического референц-эллипсоида в данной точке
  geoidUndulation ValDistanceSignedType,

-- набор опорных точек или математическая модель поверхности Земли (датум)
  verticalDatum CodeVerticalDatumType,

-- разница между записанной высотой точки и ее реальным значением, отнесенным к тому же вертикальному датуму, выражается как линейное отклонение с вероятностью 95%
  verticalAccuracy ValDistanceType,

-- разница между записанными горизонтальными координатами объекта и его реальным положением, отнесенным к тому же геодезическому датуму, выражается как круговое отклонение с вероятностью 95%
-- этот атрибут наследуется из табл.Point
  horizontalAccuracy ValDistanceType,

-- может здесь взять составной первичный ключ? в предыдущей таблице также можно, пара uuidAirportHeliport + elevation точно не может повториться
  PRIMARY KEY (uuidAirportHeliport, elevation)
);


-- Table: AltimeterSource
-- Наименование связи между таблицами AirportHeliport и AltimeterSource - "использует" (utilizes), связь - многие ко многим: один аэродром может использовать несколько источников и один источник может использоваться несколькими аэродромами
-- У табл. AirportHeliport есть свойство - источник альтиметрии (AltimeterSource)
-- AltimeterSource - это прибор, который измеряет и показывает высоту, на которой расположен объект (например, самолет)
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AltimeterSource
CREATE TABLE AltimeterSource
(
  uuidAltimeterSource id,

  uuidAirportHeliport id REFERENCES AirportHeliport (uuidAirportHeliport),

-- далеко или близко расположен альтиметр
  isRemote CodeYesNoType,

-- первичный или вторичный альтиметр
  isPrimary CodeYesNoType,

  PRIMARY KEY (uuidAirportHeliport, uuidAltimeterSource)
);


-- Table: AltimeterSourceStatus
-- Наименование связи между таблицами  AltimeterSource и AltimeterSourceStatus - "доступен на" (isAvailableOn), связь - один ко многим: у одного прибора может быть один статус, но один и тот же статус может быть у многих приборов
-- AltimeterSourceStatus - информация о рабочем статусе прибора альтиметрии (AltimeterSource)
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AltimeterSourceStatus
CREATE TABLE AltimeterSourceStatus
(
-- эта таблица могла бы быть и без первичного ключа, просто с одним внешним ключом, но на нее ссылаются еще 2 таблицы, поэтому я пока оставлю здесь первичный ключ, но подумаю
  uuidAltimeterSourceStatus          id PRIMARY KEY,

  uuidAltimeterSource id REFERENCES AltimeterSource (uuidAltimeterSource),

-- рабочий статус
  operationalStatus CodeStatusOperationsType
);


-- Table: OrganisationAuthority
-- Наименование связи между таблицами AirportHeliport и OrganisationAuthority - "под ответственностью" (isUnderResponsibilityOf), связь - один ко многим: одна организация может обслуживать несколько аэропортов, но у одного аэропорта может быть только одна ответственная организация (кажется так)
-- OrganisationAuthority - это организация, ответственная за управление аэропортом. Концепция "управления аэропортом" не обязательно действует по всему миру, в таком случае аэродром/вертодром относят к ответственной за его операции области (штату)
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_OrganisationAuthority
CREATE TABLE  OrganisationAuthority
(
  uuidOrganisationAuthority id PRIMARY KEY,

  uuidAirportHeliport id REFERENCES AirportHeliport (uuidAirportHeliport),

-- полное официальное название штата, области, организации, департамента, авиационного агентства (aircraft operating agency)
  name TextNameType,

-- закодированный идентификатор организации, департамента, агентства или объединения
-- например: СА = Canada, FAA = Federal Aviation Administration, UK = United Kingdom, ICAO = International Civil Aviation Organization
  designator CodeOrganisationDesignatorType,

-- код, указывающий на происхождение ответственной организации в соответствии с его статусом или бизнесс-ролью в ATM (?).
-- Например: штат, группа штатов, организация в штате, авиационное агентство и т.д.
  type CodeOrganisationType,

-- информация о том, какова типа операции разрешены
  military CodeMilitaryOperationsType
);

