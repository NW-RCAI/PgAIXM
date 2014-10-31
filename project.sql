--Домены:

CREATE DOMAIN id AS integer;
ALTER DOMAIN id OWNER TO aviauser;

CREATE DOMAIN CodeAirportHeliportDesignatorType AS varchar(6);
CHECK (length(VALUE)> 3 AND length(VALUE)<6)
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
CHECK (VALUE ~ '[:upper:]{3}')
-- E'^[a-zA-z]*$' AND length(VALUE)=3);
ALTER DOMAIN CodeIATAType OWNER TO aviauser;

-- AD - только аэродром, АН - аэродром и вертодром, НР - только вертодром, LS - посадочная площадка
CREATE DOMAIN CodeAirportHeliportType AS enum ('AD', 'AH', 'HP', 'LS', 'OTHER')
CHECK (VALUE ~ E'^[a-zA-z]*$');
ALTER DOMAIN CodeAirportHeliportType OWNER TO aviauser;

CREATE DOMAIN CodeYesNoType AS enum ('YES', 'NO', 'OTHER')
CHECK (VALUE ~ E'^[a-zA-z]*$');
ALTER DOMAIN CodeYesNoType OWNER TO aviauser;

-- CIVIL - только гражданская авиация, MIL - только военная авиация, JOINT - и гражданская, и военная авиация
CREATE DOMAIN CodeMilitaryOperationsType AS enum ('CIVIL', 'MIL', 'JOINT', 'OTHER')
CHECK (VALUE ~ E'^[a-zA-z]*$');
ALTER DOMAIN CodeYesNoType OWNER TO aviauser;

CREATE DOMAIN ValDistanceVerticalType AS float
CHECK (VALUE ~ E'^[a-zA-z]*$');
ALTER DOMAIN CodeYesNoType OWNER TO aviauser;


-- Table: AirporyHeliport

CREATE TABLE AirporyHeliport
(

  uuid id PRIMARY KEY,
  
-- Что мы задаём в designator:
-- 1)4х буквенник ИКАО, если таковой имеется
-- 2)3х буквенник IATA, 
-- 3)код Государства + порядковый номер (UU0001)
  designator CodeAirportHeliportDesignatorType,

-- Первое официальное название аэродрома, назначенное соответствующисм органом
-- может содержать значение Nil
  name TextNameType,  

--индекс аэропорта ИКАО (ICAO DOC 7910), может содержать значение Nil
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeICAOType
  locationIndicatorICAO CodeICAOType, 

-- коды ИАТА, может содержать значение Nil
-- https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/DataType_CodeIATAType
  designatorIATA CodeIATAType,

-- код, указывающий на тип аэродрома, например: только аэродром, аэродром/ветродром и т.д.
  type CodeAirportHeliportType, 

-- сертифицирован ли аэропорт по правилам ИКАО:
  certifiedICAO CodeYesNoType,

-- аэродром или вертодром закрыт для общего пользования, только для владельцев
  privateUse CodeYesNoType,

-- тип организации (гражданская/военная), которая контролирует аэропорт
  controlType CodeMilitaryOperationsType, 

-- высота над уровнем моря высшей точки района посадки (посадочной площадки)
  fieldElevation ValDistanceVerticalType,
