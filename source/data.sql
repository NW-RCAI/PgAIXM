INSERT INTO Point (latitude, longtitude, horizontalAccuracy, srid)
VALUES (12, 12, '(0.28,"M")', 4326),
  (50, 6, '(0.25,"M")', 4326),
  (10, 42, '(0.20,"M")', 4326);


UPDATE Point
SET srid = 4284;
INSERT INTO ElevatedPoint (elevation, geoidUndulation, verticalDatum, verticalAccuracy)
VALUES ('(12.2,"UNL","M")', '(1.3,"M")', 'AHD', '(0.11,"M")'),
  ('(14.5,"UNL","M")', '(1.3,"M")', 'AHD', '(0.14,"M")'),
  ('(14.7,"UNL","M")', '(1.3,"M")', 'AHD', '(0.08,"M")');


INSERT INTO OrganisationAuthority (name)
VALUES ('name'),
  ('name2'),
  ('name3');


INSERT INTO AirportHeliport (designator, name, locationIndicatorICAO, designatorIATA, type, certifiedICAO, privateUse, controlType, fieldElevation, fieldElevationAccuracy, verticalDatum, magneticVariation, magneticVariationAccuracy, dateMagneticVariation, magneticVariationChange, referenceTemperature, altimeterCheckLocation, secondaryPowerSupply, windDirectionIndicator, landingDirectionIndicator, transitionAltitude, transitionLevel, lowestTemperature, abandoned, certificationDate, certificationExpirationDate, idElevatedPoint)
VALUES
  ('IKAA', 'IGLOA', 'ICAA', 'IAA', 'AD', 'Yes', 'Yes', 'JOINT', '(12.2,"UNL","M")', '(0.1,"UNL","M")', 'AHD', 20, 2,
   2014, 1.5, (8, 'C'), 'No', 'Yes', 'Other', 'No', (24.8, 'UNL', 'M'), (100, 'SM'), (-10, 'C'), 'Other', '1999-01-03',
   '2015-01-03', 1),
  ('IKAB', 'IGLOB', 'ICAB', 'IAB', 'AD', 'No', 'Yes', 'MIL', '(12.4,"UNL","M")', '(0.12,"UNL","M")', 'AHD', 18, 2,
   2014, 1.5, (22, 'C'), 'Yes', 'Yes', 'No', 'No', (26.8, 'UNL', 'M'), (90, 'SM'), (0, 'C'), 'Yes', '1999-10-03',
   '2012-10-03', 2),
  ('IKAC', 'IGLOC', 'ICAC', 'IAC', 'AD', 'No', 'No', 'JOINT', '(11.1,"UNL","M")', '(0.15,"UNL","M")', 'AHD', 21, 2,
   2014, 1.5, (30, 'C'), 'No', 'No', 'Yes', 'No', (20.2, 'UNL', 'M'), (150, 'SM'), (-30, 'C'), 'No', '2001-01-06',
   '2018-01-06', 3);

INSERT INTO SurfaceCharacteristics (composition, pavementTypePCN)
VALUES ('GRASS', 'RIGID'),
  ('SAND', 'FLEXIBLE'),
  ('WATER', 'FLEXIBLE');

INSERT INTO Runway (designator, nominalLength)
VALUES ('09/27', (956, 'M')),
  ('09/28', (957, 'M')),
  ('09/29', (958, 'M'));

INSERT INTO GroundLightSystem (emergencyLighting)
VALUES ('Yes'),
  ('No'),
  ('Yes');

INSERT INTO RunwayDirection (designator)
VALUES ('35L'),
  ('36L'),
  ('37L');

INSERT INTO RunwayDirectionLightSystem (position)
VALUES ('END'),
  ('END'),
  ('CL');
