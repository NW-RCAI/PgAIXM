AirspaceLayerClass
===============
Источник: [AIXM](https://extranet.eurocontrol.int/http://webprisme.cfmu.eurocontrol.int/aixmwiki_public/bin/view/AIXM/Class_AirspaceLayerClass)

Тип: Object

Класс воздушного пространства для уровенного блока воздушного пространства.

## Атрибуты

##### id

##### classification
Тип данных: CodeAirspaceClassificationType

Распределение по категориям воздушного пространства, которое определяет правила эксплуатации, летные требования и предоставляемые службы. В соответствии с Annex 11, Appendix 4.

##### uuidAirspace
Ссылка на: Airspace (uuid)

Блок воздушного пространства со специальным классом.

## Связи

### Один к одному:

### Один ко многим:

- F Airspace
- O ~~Timesheet~~
- O OrganisationAuthority
- O ~~Note~~

### Многие ко многим:

- O AirspaceLayer

### Многие к одному:


