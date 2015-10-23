INSERT INTO City (name) VALUES ('Spb'), ('Msk');

INSERT INTO point (id, latitude, longitude, srid, horizontalaccuracy, geom) VALUES (1, 12.000000000000000, 12.000000000000000, 4284, '(0.28000000000000000000,M)', '0101000020E61000000E430D0071FF274058FA977898FF2740');
INSERT INTO point (id, latitude, longitude, srid, horizontalaccuracy, geom) VALUES (2, 50.000000000000000, 6.000000000000000, 4284, '(0.25000000000000000000,M)', '0101000020E610000099285EB92DFE1740609DE143ECFF4840');
INSERT INTO point (id, latitude, longitude, srid, horizontalaccuracy, geom) VALUES (3, 10.000000000000000, 42.000000000000000, 4284, '(0.20000000000000000000,M)', '0101000020E6100000B29F31EEE2FF44403DBF21F2A8FF2340');

INSERT INTO elevatedpoint (id, elevation, geoidundulation, verticaldatum, verticalaccuracy) VALUES (1, '(12.2000,UNL,M)', '(1.30000000000000000000,M)', 'AHD', '(0.11000000000000000000,M)');
INSERT INTO elevatedpoint (id, elevation, geoidundulation, verticaldatum, verticalaccuracy) VALUES (2, '(14.5000,UNL,M)', '(1.30000000000000000000,M)', 'AHD', '(0.14000000000000000000,M)');
INSERT INTO elevatedpoint (id, elevation, geoidundulation, verticaldatum, verticalaccuracy) VALUES (3, '(14.7000,UNL,M)', '(1.30000000000000000000,M)', 'AHD', '(0.08000000000000000000,M)');

INSERT INTO organisationauthority (uuid, name, designator, type, military) VALUES ('ef7d1d4e-ba8b-4f07-b6b9-afd763ae5a54', 'name', NULL, NULL, NULL);
INSERT INTO organisationauthority (uuid, name, designator, type, military) VALUES ('5d90465e-537b-4c5c-bb4d-ede1704ea480', 'name2', NULL, NULL, NULL);
INSERT INTO organisationauthority (uuid, name, designator, type, military) VALUES ('486fc50c-1fce-401f-a702-09f851092d0e', 'name3', NULL, NULL, NULL);

INSERT INTO airportheliport (uuid, designator, name, locationindicatoricao, designatoriata, type, certifiedicao, privateuse, controltype, fieldelevation, fieldelevationaccuracy, verticaldatum, magneticvariation, magneticvariationaccuracy, datemagneticvariation, magneticvariationchange, referencetemperature, altimeterchecklocation, secondarypowersupply, winddirectionindicator, landingdirectionindicator, transitionaltitude, transitionlevel, lowesttemperature, abandoned, certificationdate, certificationexpirationdate, uuidorganisationauthority, idelevatedpoint) VALUES ('fd2748fc-2b16-4ae7-a6e2-cdf0c15d8e85', 'IKAA', 'IGLOA', 'ICAA', 'IAA', 'AD', 'Yes', 'Yes', 'JOINT', '(12.2000,UNL,M)', '(0.1000,UNL,M)', 'AHD', 20.0000000000, 2.0000000000, 2014, 1.5000000000, '(8.0000000000,C)', 'No', 'Yes', 'Other', 'No', '(24.8000,UNL,M)', '(100,SM)', '(-10.0000000000,C)', 'Other', '1999-01-03', '2015-01-03', NULL, 1);
INSERT INTO airportheliport (uuid, designator, name, locationindicatoricao, designatoriata, type, certifiedicao, privateuse, controltype, fieldelevation, fieldelevationaccuracy, verticaldatum, magneticvariation, magneticvariationaccuracy, datemagneticvariation, magneticvariationchange, referencetemperature, altimeterchecklocation, secondarypowersupply, winddirectionindicator, landingdirectionindicator, transitionaltitude, transitionlevel, lowesttemperature, abandoned, certificationdate, certificationexpirationdate, uuidorganisationauthority, idelevatedpoint) VALUES ('f17a02ee-5529-43da-a08a-cc4f82db8133', 'IKAB', 'IGLOB', 'ICAB', 'IAB', 'AD', 'No', 'Yes', 'MIL', '(12.4000,UNL,M)', '(0.1200,UNL,M)', 'AHD', 18.0000000000, 2.0000000000, 2014, 1.5000000000, '(22.0000000000,C)', 'Yes', 'Yes', 'No', 'No', '(26.8000,UNL,M)', '(90,SM)', '(0.0000000000,C)', 'Yes', '1999-10-03', '2012-10-03', NULL, 2);
INSERT INTO airportheliport (uuid, designator, name, locationindicatoricao, designatoriata, type, certifiedicao, privateuse, controltype, fieldelevation, fieldelevationaccuracy, verticaldatum, magneticvariation, magneticvariationaccuracy, datemagneticvariation, magneticvariationchange, referencetemperature, altimeterchecklocation, secondarypowersupply, winddirectionindicator, landingdirectionindicator, transitionaltitude, transitionlevel, lowesttemperature, abandoned, certificationdate, certificationexpirationdate, uuidorganisationauthority, idelevatedpoint) VALUES ('af1236ac-b2da-4d31-9153-09be10839447', 'IKAC', 'IGLOC', 'ICAC', 'IAC', 'AD', 'No', 'No', 'JOINT', '(11.1000,UNL,M)', '(0.1500,UNL,M)', 'AHD', 21.0000000000, 2.0000000000, 2014, 1.5000000000, '(30.0000000000,C)', 'No', 'No', 'Yes', 'No', '(20.2000,UNL,M)', '(150,SM)', '(-30.0000000000,C)', 'No', '2001-01-06', '2018-01-06', NULL, 3);

INSERT INTO groundlightsystem (uuid, emergencylighting, intensitylevel, colour) VALUES ('5c31a1bc-ae1c-44ea-a4f7-6b448b309e9a', 'Yes', 'LIL', NULL);
INSERT INTO groundlightsystem (uuid, emergencylighting, intensitylevel, colour) VALUES ('f10d8536-3503-4c07-ac3a-b0f3a84b2bc2', 'No', 'LIH', NULL);
INSERT INTO groundlightsystem (uuid, emergencylighting, intensitylevel, colour) VALUES ('b0606bc6-68b5-47c0-b563-6dfa393ace3c', 'Yes', 'LIM', NULL);
INSERT INTO groundlightsystem (uuid, emergencylighting, intensitylevel, colour) VALUES ('bdbf28b3-34ab-464a-a825-d9267ec25352', 'No', 'LIH', NULL);
INSERT INTO groundlightsystem (uuid, emergencylighting, intensitylevel, colour) VALUES ('deb70ea0-f543-4b40-bbbf-0dd00526a54f', 'Yes', 'LIH', NULL);
INSERT INTO groundlightsystem (uuid, emergencylighting, intensitylevel, colour) VALUES ('32dcb530-708e-4ba2-b51c-e234b946d181', 'Other', 'LIM', NULL);

INSERT INTO surfacecharacteristics (id, composition, preparation, surfacecondition, classpcn, pavementtypepcn, pavementsubgradepcn, maxtyrepressurepcn, evaluationmethodpcn, classlcn, weightsiwl, tyrepressuresiwl, weightauw) VALUES (1, 'GRASS', NULL, NULL, NULL, 'RIGID', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO surfacecharacteristics (id, composition, preparation, surfacecondition, classpcn, pavementtypepcn, pavementsubgradepcn, maxtyrepressurepcn, evaluationmethodpcn, classlcn, weightsiwl, tyrepressuresiwl, weightauw) VALUES (2, 'SAND', NULL, NULL, NULL, 'FLEXIBLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO surfacecharacteristics (id, composition, preparation, surfacecondition, classpcn, pavementtypepcn, pavementsubgradepcn, maxtyrepressurepcn, evaluationmethodpcn, classlcn, weightsiwl, tyrepressuresiwl, weightauw) VALUES (3, 'CONC', NULL, NULL, NULL, 'FLEXIBLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO runway (uuid, uuidairportheliport, idsurfacecharacteristics, designator, type, nominallength, lengthaccuracy, nominalwidth, widthaccuracy, widthshoulder, lengthstrip, widthstrip, lengthoffset, widthoffset, abandoned) VALUES ('8d2ecf15-bd65-411b-a322-0e9b061de023', 'fd2748fc-2b16-4ae7-a6e2-cdf0c15d8e85', 1, '09/27', NULL, '(956.00000000000000000000,M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO runway (uuid, uuidairportheliport, idsurfacecharacteristics, designator, type, nominallength, lengthaccuracy, nominalwidth, widthaccuracy, widthshoulder, lengthstrip, widthstrip, lengthoffset, widthoffset, abandoned) VALUES ('f5bdd0c9-ce08-4943-8d5a-c6aed2e2ee78', 'fd2748fc-2b16-4ae7-a6e2-cdf0c15d8e85', 3, '09/29', NULL, '(958.00000000000000000000,M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO runway (uuid, uuidairportheliport, idsurfacecharacteristics, designator, type, nominallength, lengthaccuracy, nominalwidth, widthaccuracy, widthshoulder, lengthstrip, widthstrip, lengthoffset, widthoffset, abandoned) VALUES ('b4ec86ad-ea63-47f3-b909-55f05b1b8c58', 'af1236ac-b2da-4d31-9153-09be10839447', 2, '09/28', NULL, '(957.00000000000000000000,M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO runwaydirection (uuid, uuidrunway, designator, truebearing, truebearingaccuracy, magneticbearing, patternvfr, slopetdz, elevationtdz, elevationtdzaccuracy, approachmarkingtype, approachmarkingcondition, classlightingjar, precisionapproachguidance) VALUES ('c4ee7d9a-7698-408c-beac-95ce27d1876f', 'b4ec86ad-ea63-47f3-b909-55f05b1b8c58', '35L', 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO runwaydirection (uuid, uuidrunway, designator, truebearing, truebearingaccuracy, magneticbearing, patternvfr, slopetdz, elevationtdz, elevationtdzaccuracy, approachmarkingtype, approachmarkingcondition, classlightingjar, precisionapproachguidance) VALUES ('db0ca8ab-63cc-49c2-91ef-5113c3ad2c41', 'b4ec86ad-ea63-47f3-b909-55f05b1b8c58', '39L', 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO runwaydirection (uuid, uuidrunway, designator, truebearing, truebearingaccuracy, magneticbearing, patternvfr, slopetdz, elevationtdz, elevationtdzaccuracy, approachmarkingtype, approachmarkingcondition, classlightingjar, precisionapproachguidance) VALUES ('c31d9124-64bf-4255-ae54-86f19412bf68', 'f5bdd0c9-ce08-4943-8d5a-c6aed2e2ee78', '38L', 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO runwaydirection (uuid, uuidrunway, designator, truebearing, truebearingaccuracy, magneticbearing, patternvfr, slopetdz, elevationtdz, elevationtdzaccuracy, approachmarkingtype, approachmarkingcondition, classlightingjar, precisionapproachguidance) VALUES ('e92d28e8-770d-4141-b578-207b1f2a9d02', 'f5bdd0c9-ce08-4943-8d5a-c6aed2e2ee78', '36L', 259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO runwaydirection (uuid, uuidrunway, designator, truebearing, truebearingaccuracy, magneticbearing, patternvfr, slopetdz, elevationtdz, elevationtdzaccuracy, approachmarkingtype, approachmarkingcondition, classlightingjar, precisionapproachguidance) VALUES ('3dc928c5-fdb4-404e-ba45-e41cf5a7edca', '8d2ecf15-bd65-411b-a322-0e9b061de023', '37L', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO runwaydirectionlightsystem (uuid, uuidrunwaydirection, "position") VALUES ('32dcb530-708e-4ba2-b51c-e234b946d181', '3dc928c5-fdb4-404e-ba45-e41cf5a7edca', 'TDZ');
INSERT INTO runwaydirectionlightsystem (uuid, uuidrunwaydirection, "position") VALUES ('5c31a1bc-ae1c-44ea-a4f7-6b448b309e9a', 'c31d9124-64bf-4255-ae54-86f19412bf68', 'END');
INSERT INTO runwaydirectionlightsystem (uuid, uuidrunwaydirection, "position") VALUES ('b0606bc6-68b5-47c0-b563-6dfa393ace3c', '3dc928c5-fdb4-404e-ba45-e41cf5a7edca', 'EDGE');
INSERT INTO runwaydirectionlightsystem (uuid, uuidrunwaydirection, "position") VALUES ('bdbf28b3-34ab-464a-a825-d9267ec25352', 'c31d9124-64bf-4255-ae54-86f19412bf68', '3_THIRD');
INSERT INTO runwaydirectionlightsystem (uuid, uuidrunwaydirection, "position") VALUES ('deb70ea0-f543-4b40-bbbf-0dd00526a54f', 'c4ee7d9a-7698-408c-beac-95ce27d1876f', 'DESIG');
INSERT INTO runwaydirectionlightsystem (uuid, uuidrunwaydirection, "position") VALUES ('f10d8536-3503-4c07-ac3a-b0f3a84b2bc2', 'e92d28e8-770d-4141-b578-207b1f2a9d02', 'CL');

--INSERT INTO point (id, latitude, longitude, srid, horizontalaccuracy) VALUES (4, 22.000000000000000, 2.000000000000000, 4284, '(0.20000000000000000000,M)');
  --   INSERT INTO elevatedpoint (id) VALUES (4);
--INSERT INTO airportheliport (uuid, designator, name, locationindicatoricao, designatoriata,   idelevatedpoint) VALUES ('1e32ebb3-e877-454c-b3e0-519972f9ea44','IKAT','NAME', 'ICAO', 'IAT', 4);