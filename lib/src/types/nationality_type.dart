import '../extensions/iterable_extension.dart';

enum NationalityType {
  spain(code: 'ES'),
  germany(code: 'DE'),
  unitedKingdom(code: 'GB'),
  norway(code: 'NO'),
  sweden(code: 'SE'),
  finland(code: 'FI'),
  italy(code: 'IT'),
  portugal(code: 'PT'),
  france(code: 'FR'),
  afghanistan(code: 'AF'),
  albania(code: 'AL'),
  andorra(code: 'AD'),
  angola(code: 'AO'),
  antiguaAndBarbuda(code: 'AG'),
  anguilla(code: 'AI'),
  netherlandsAntilles(code: 'AN'),
  antarctica(code: 'AQ'),
  saudiArabia(code: 'SA'),
  algeria(code: 'DZ'),
  argentina(code: 'AR'),
  armenia(code: 'AM'),
  australia(code: 'AU'),
  austria(code: 'AT'),
  aruba(code: 'AW'),
  azerbaijan(code: 'AZ'),
  bahamas(code: 'BS'),
  bangladesh(code: 'BD'),
  belgium(code: 'BE'),
  barbados(code: 'BB'),
  bahrain(code: 'BH'),
  belize(code: 'BZ'),
  benin(code: 'BJ'),
  bermuda(code: 'BM'),
  belarus(code: 'BY'),
  myanmar(code: 'MM'),
  bolivia(code: 'BO'),
  bosniaAndHerzegovina(code: 'BA'),
  botswana(code: 'BW'),
  brazil(code: 'BR'),
  brunei(code: 'BN'),
  bulgaria(code: 'BG'),
  burkinaFaso(code: 'BF'),
  burundi(code: 'BI'),
  bhutan(code: 'BT'),
  capeVerde(code: 'CV'),
  cambodia(code: 'KH'),
  cameroon(code: 'CM'),
  canada(code: 'CA'),
  qatar(code: 'QA'),
  chad(code: 'TD'),
  chile(code: 'CL'),
  china(code: 'CN'),
  cyprus(code: 'CY'),
  vaticanCity(code: 'VA'),
  colombia(code: 'CO'),
  comoros(code: 'KM'),
  congo(code: 'CG'),
  northKorea(code: 'KP'),
  southKorea(code: 'KR'),
  costaRica(code: 'CR'),
  ivoryCoast(code: 'CI'),
  croatia(code: 'HR'),
  cuba(code: 'CU'),
  denmark(code: 'DK'),
  djibouti(code: 'DJ'),
  dominica(code: 'DM'),
  ecuador(code: 'EC'),
  egypt(code: 'EG'),
  elSalvador(code: 'SV'),
  unitedArabEmirates(code: 'AE'),
  eritrea(code: 'ER'),
  slovakia(code: 'SK'),
  slovenia(code: 'SI'),
  unitedStates(code: 'US'),
  estonia(code: 'EE'),
  eswatini(code: 'SZ'),
  ethiopia(code: 'ET'),
  philippines(code: 'PH'),
  fiji(code: 'FJ'),
  gabon(code: 'GA'),
  gambia(code: 'GM'),
  georgia(code: 'GE'),
  ghana(code: 'GH'),
  grenada(code: 'GD'),
  greece(code: 'GR'),
  gibraltar(code: 'GI'),
  greenland(code: 'GL'),
  guadeloupe(code: 'GP'),
  southGeorgiaAndSandwichIslands(code: 'GS'),
  guam(code: 'GU'),
  guatemala(code: 'GT'),
  guinea(code: 'GN'),
  equatorialGuinea(code: 'GQ'),
  guineaBissau(code: 'GW'),
  frenchGuiana(code: 'GF'),
  guyana(code: 'GY'),
  haiti(code: 'HT'),
  honduras(code: 'HN'),
  hongKong(code: 'HK'),
  hungary(code: 'HU'),
  india(code: 'IN'),
  indonesia(code: 'ID'),
  iraq(code: 'IQ'),
  ireland(code: 'IE'),
  iran(code: 'IR'),
  iceland(code: 'IS'),
  bouvetIsland(code: 'BV'),
  caymanIslands(code: 'KY'),
  cocosIslands(code: 'CC'),
  cookIslands(code: 'CK'),
  faroeIslands(code: 'FO'),
  falklandIslands(code: 'FK'),
  marshallIslands(code: 'MH'),
  christmasIsland(code: 'CX'),
  niueIsland(code: 'NU'),
  norfolkIsland(code: 'NF'),
  heardAndMcdonaldIslands(code: 'HM'),
  northernMarianaIslands(code: 'MP'),
  pitcairnIslands(code: 'PN'),
  solomonIslands(code: 'SB'),
  tokelauIslands(code: 'TK'),
  turksAndCaicosIslands(code: 'TC'),
  unitedStatesMinorOutlyingIslands(code: 'UM'),
  unitedStatesVirginIslands(code: 'VI'),
  britishVirginIslands(code: 'VG'),
  israel(code: 'IL'),
  jamaica(code: 'JM'),
  japan(code: 'JP'),
  jordan(code: 'JO'),
  kazakhstan(code: 'KZ'),
  kenya(code: 'KE'),
  kyrgyzstan(code: 'KG'),
  kiribati(code: 'KI'),
  kuwait(code: 'KW'),
  laos(code: 'LA'),
  lesotho(code: 'LS'),
  latvia(code: 'LV'),
  liberia(code: 'LR'),
  libya(code: 'LY'),
  liechtenstein(code: 'LI'),
  lithuania(code: 'LT'),
  luxembourg(code: 'LU'),
  macao(code: 'MO'),
  macedonia(code: 'MK'),
  lebanon(code: 'LB'),
  madagascar(code: 'MG'),
  malaysia(code: 'MY'),
  malawi(code: 'MW'),
  maldives(code: 'MV'),
  malta(code: 'MT'),
  mali(code: 'ML'),
  morocco(code: 'MA'),
  martinique(code: 'MQ'),
  mauritius(code: 'MU'),
  mauritania(code: 'MR'),
  mayotte(code: 'YT'),
  mexico(code: 'MX'),
  micronesia(code: 'FM'),
  moldova(code: 'MD'),
  monaco(code: 'MC'),
  mongolia(code: 'MN'),
  montenegro(code: 'ME'),
  montserrat(code: 'MS'),
  mozambique(code: 'MZ'),
  namibia(code: 'NA'),
  nauru(code: 'NR'),
  nepal(code: 'NP'),
  nicaragua(code: 'NI'),
  nigeria(code: 'NG'),
  newZealand(code: 'NZ'),
  newCaledonia(code: 'NC'),
  niger(code: 'NE'),
  oman(code: 'OM'),
  pakistan(code: 'PK'),
  palau(code: 'PW'),
  panama(code: 'PA'),
  papuaNewGuinea(code: 'PG'),
  paraguay(code: 'PY'),
  palestine(code: 'PS'),
  netherlands(code: 'NL'),
  peru(code: 'PE'),
  frenchPolynesia(code: 'PF'),
  poland(code: 'PL'),
  saintPierreAndMiquelon(code: 'PM'),
  puertoRico(code: 'PR'),
  centralAfricanRepublic(code: 'CF'),
  czechRepublic(code: 'CZ'),
  democraticRepublicOfCongo(code: 'CD'),
  dominicanRepublic(code: 'DO'),
  reunion(code: 'RE'),
  republicOfCongo(code: 'RC'),
  rwanda(code: 'RW'),
  romania(code: 'RO'),
  russia(code: 'RU'),
  westernSahara(code: 'EH'),
  samoa(code: 'WS'),
  americanSamoa(code: 'AS'),
  saintKittsAndNevis(code: 'KN'),
  sanMarino(code: 'SM'),
  saintVincentAndGrenadines(code: 'VC'),
  saintLucia(code: 'LC'),
  saoTomeAndPrincipe(code: 'ST'),
  senegal(code: 'SN'),
  serbia(code: 'RS'),
  seychelles(code: 'SC'),
  sierraLeone(code: 'SL'),
  singapore(code: 'SG'),
  saintHelena(code: 'SH'),
  syria(code: 'SY'),
  somalia(code: 'SO'),
  sriLanka(code: 'LK'),
  southAfrica(code: 'ZA'),
  sudan(code: 'SD'),
  southSudan(code: 'SS'),
  switzerland(code: 'CH'),
  suriname(code: 'SR'),
  svalbardAndJanMayen(code: 'SJ'),
  thailand(code: 'TH'),
  taiwan(code: 'TW'),
  tanzania(code: 'TZ'),
  tajikistan(code: 'TJ'),
  britishIndianOceanTerritory(code: 'IO'),
  frenchSouthernTerritories(code: 'TF'),
  eastTimor(code: 'TL'),
  togo(code: 'TG'),
  tonga(code: 'TO'),
  trinidadAndTobago(code: 'TT'),
  turkmenistan(code: 'TM'),
  turkey(code: 'TR'),
  tuvalu(code: 'TV'),
  tunisia(code: 'TN'),
  ukraine(code: 'UA'),
  uganda(code: 'UG'),
  uruguay(code: 'UY'),
  uzbekistan(code: 'UZ'),
  vanuatu(code: 'VU'),
  venezuela(code: 'VE'),
  vietnam(code: 'VN'),
  wallisAndFutuna(code: 'WF'),
  yemen(code: 'YE'),
  zambia(code: 'ZM'),
  zimbabwe(code: 'ZW');

  final String code;
  const NationalityType({required this.code});

  static NationalityType fromCode(String code) {
    return NationalityType.values.firstWhereOrNull(
          (element) => element.code == code,
        ) ??
        NationalityType.spain;
  }

  R map<R>({
    required R Function() spain,
    required R Function() germany,
    required R Function() unitedKingdom,
    required R Function() norway,
    required R Function() sweden,
    required R Function() finland,
    required R Function() italy,
    required R Function() portugal,
    required R Function() france,
    required R Function() afghanistan,
    required R Function() albania,
    required R Function() andorra,
    required R Function() angola,
    required R Function() antiguaAndBarbuda,
    required R Function() anguilla,
    required R Function() netherlandsAntilles,
    required R Function() antarctica,
    required R Function() saudiArabia,
    required R Function() algeria,
    required R Function() argentina,
    required R Function() armenia,
    required R Function() australia,
    required R Function() austria,
    required R Function() aruba,
    required R Function() azerbaijan,
    required R Function() bahamas,
    required R Function() bangladesh,
    required R Function() belgium,
    required R Function() barbados,
    required R Function() bahrain,
    required R Function() belize,
    required R Function() benin,
    required R Function() bermuda,
    required R Function() belarus,
    required R Function() myanmar,
    required R Function() bolivia,
    required R Function() bosniaAndHerzegovina,
    required R Function() botswana,
    required R Function() brazil,
    required R Function() brunei,
    required R Function() bulgaria,
    required R Function() burkinaFaso,
    required R Function() burundi,
    required R Function() bhutan,
    required R Function() capeVerde,
    required R Function() cambodia,
    required R Function() cameroon,
    required R Function() canada,
    required R Function() qatar,
    required R Function() chad,
    required R Function() chile,
    required R Function() china,
    required R Function() cyprus,
    required R Function() vaticanCity,
    required R Function() colombia,
    required R Function() comoros,
    required R Function() congo,
    required R Function() northKorea,
    required R Function() southKorea,
    required R Function() costaRica,
    required R Function() ivoryCoast,
    required R Function() croatia,
    required R Function() cuba,
    required R Function() denmark,
    required R Function() djibouti,
    required R Function() dominica,
    required R Function() ecuador,
    required R Function() egypt,
    required R Function() elSalvador,
    required R Function() unitedArabEmirates,
    required R Function() eritrea,
    required R Function() slovakia,
    required R Function() slovenia,
    required R Function() unitedStates,
    required R Function() estonia,
    required R Function() eswatini,
    required R Function() ethiopia,
    required R Function() philippines,
    required R Function() fiji,
    required R Function() gabon,
    required R Function() gambia,
    required R Function() georgia,
    required R Function() ghana,
    required R Function() grenada,
    required R Function() greece,
    required R Function() gibraltar,
    required R Function() greenland,
    required R Function() guadeloupe,
    required R Function() southGeorgiaAndSandwichIslands,
    required R Function() guam,
    required R Function() guatemala,
    required R Function() guinea,
    required R Function() equatorialGuinea,
    required R Function() guineaBissau,
    required R Function() frenchGuiana,
    required R Function() guyana,
    required R Function() haiti,
    required R Function() honduras,
    required R Function() hongKong,
    required R Function() hungary,
    required R Function() india,
    required R Function() indonesia,
    required R Function() iraq,
    required R Function() ireland,
    required R Function() iran,
    required R Function() iceland,
    required R Function() bouvetIsland,
    required R Function() caymanIslands,
    required R Function() cocosIslands,
    required R Function() cookIslands,
    required R Function() faroeIslands,
    required R Function() falklandIslands,
    required R Function() marshallIslands,
    required R Function() christmasIsland,
    required R Function() niueIsland,
    required R Function() norfolkIsland,
    required R Function() heardAndMcdonaldIslands,
    required R Function() northernMarianaIslands,
    required R Function() pitcairnIslands,
    required R Function() solomonIslands,
    required R Function() tokelauIslands,
    required R Function() turksAndCaicosIslands,
    required R Function() unitedStatesMinorOutlyingIslands,
    required R Function() unitedStatesVirginIslands,
    required R Function() britishVirginIslands,
    required R Function() israel,
    required R Function() jamaica,
    required R Function() japan,
    required R Function() jordan,
    required R Function() kazakhstan,
    required R Function() kenya,
    required R Function() kyrgyzstan,
    required R Function() kiribati,
    required R Function() kuwait,
    required R Function() laos,
    required R Function() lesotho,
    required R Function() latvia,
    required R Function() liberia,
    required R Function() libya,
    required R Function() liechtenstein,
    required R Function() lithuania,
    required R Function() luxembourg,
    required R Function() macao,
    required R Function() macedonia,
    required R Function() lebanon,
    required R Function() madagascar,
    required R Function() malaysia,
    required R Function() malawi,
    required R Function() maldives,
    required R Function() malta,
    required R Function() mali,
    required R Function() morocco,
    required R Function() martinique,
    required R Function() mauritius,
    required R Function() mauritania,
    required R Function() mayotte,
    required R Function() mexico,
    required R Function() micronesia,
    required R Function() moldova,
    required R Function() monaco,
    required R Function() mongolia,
    required R Function() montenegro,
    required R Function() montserrat,
    required R Function() mozambique,
    required R Function() namibia,
    required R Function() nauru,
    required R Function() nepal,
    required R Function() nicaragua,
    required R Function() nigeria,
    required R Function() newZealand,
    required R Function() newCaledonia,
    required R Function() niger,
    required R Function() oman,
    required R Function() pakistan,
    required R Function() palau,
    required R Function() panama,
    required R Function() papuaNewGuinea,
    required R Function() paraguay,
    required R Function() palestine,
    required R Function() netherlands,
    required R Function() peru,
    required R Function() frenchPolynesia,
    required R Function() poland,
    required R Function() saintPierreAndMiquelon,
    required R Function() puertoRico,
    required R Function() centralAfricanRepublic,
    required R Function() czechRepublic,
    required R Function() democraticRepublicOfCongo,
    required R Function() dominicanRepublic,
    required R Function() reunion,
    required R Function() republicOfCongo,
    required R Function() rwanda,
    required R Function() romania,
    required R Function() russia,
    required R Function() westernSahara,
    required R Function() samoa,
    required R Function() americanSamoa,
    required R Function() saintKittsAndNevis,
    required R Function() sanMarino,
    required R Function() saintVincentAndGrenadines,
    required R Function() saintLucia,
    required R Function() saoTomeAndPrincipe,
    required R Function() senegal,
    required R Function() serbia,
    required R Function() seychelles,
    required R Function() sierraLeone,
    required R Function() singapore,
    required R Function() saintHelena,
    required R Function() syria,
    required R Function() somalia,
    required R Function() sriLanka,
    required R Function() southAfrica,
    required R Function() sudan,
    required R Function() southSudan,
    required R Function() switzerland,
    required R Function() suriname,
    required R Function() svalbardAndJanMayen,
    required R Function() thailand,
    required R Function() taiwan,
    required R Function() tanzania,
    required R Function() tajikistan,
    required R Function() britishIndianOceanTerritory,
    required R Function() frenchSouthernTerritories,
    required R Function() eastTimor,
    required R Function() togo,
    required R Function() tonga,
    required R Function() trinidadAndTobago,
    required R Function() turkmenistan,
    required R Function() turkey,
    required R Function() tuvalu,
    required R Function() tunisia,
    required R Function() ukraine,
    required R Function() uganda,
    required R Function() uruguay,
    required R Function() uzbekistan,
    required R Function() vanuatu,
    required R Function() venezuela,
    required R Function() vietnam,
    required R Function() wallisAndFutuna,
    required R Function() yemen,
    required R Function() zambia,
    required R Function() zimbabwe,
  }) {
    switch (this) {
      case NationalityType.spain:
        return spain();
      case NationalityType.germany:
        return germany();
      case NationalityType.unitedKingdom:
        return unitedKingdom();
      case NationalityType.norway:
        return norway();
      case NationalityType.sweden:
        return sweden();
      case NationalityType.finland:
        return finland();
      case NationalityType.italy:
        return italy();
      case NationalityType.portugal:
        return portugal();
      case NationalityType.france:
        return france();
      case NationalityType.afghanistan:
        return afghanistan();
      case NationalityType.albania:
        return albania();
      case NationalityType.andorra:
        return andorra();
      case NationalityType.angola:
        return angola();
      case NationalityType.antiguaAndBarbuda:
        return antiguaAndBarbuda();
      case NationalityType.anguilla:
        return anguilla();
      case NationalityType.netherlandsAntilles:
        return netherlandsAntilles();
      case NationalityType.antarctica:
        return antarctica();
      case NationalityType.saudiArabia:
        return saudiArabia();
      case NationalityType.algeria:
        return algeria();
      case NationalityType.argentina:
        return argentina();
      case NationalityType.armenia:
        return armenia();
      case NationalityType.australia:
        return australia();
      case NationalityType.austria:
        return austria();
      case NationalityType.aruba:
        return aruba();
      case NationalityType.azerbaijan:
        return azerbaijan();
      case NationalityType.bahamas:
        return bahamas();
      case NationalityType.bangladesh:
        return bangladesh();
      case NationalityType.belgium:
        return belgium();
      case NationalityType.barbados:
        return barbados();
      case NationalityType.bahrain:
        return bahrain();
      case NationalityType.belize:
        return belize();
      case NationalityType.benin:
        return benin();
      case NationalityType.bermuda:
        return bermuda();
      case NationalityType.belarus:
        return belarus();
      case NationalityType.myanmar:
        return myanmar();
      case NationalityType.bolivia:
        return bolivia();
      case NationalityType.bosniaAndHerzegovina:
        return bosniaAndHerzegovina();
      case NationalityType.botswana:
        return botswana();
      case NationalityType.brazil:
        return brazil();
      case NationalityType.brunei:
        return brunei();
      case NationalityType.bulgaria:
        return bulgaria();
      case NationalityType.burkinaFaso:
        return burkinaFaso();
      case NationalityType.burundi:
        return burundi();
      case NationalityType.bhutan:
        return bhutan();
      case NationalityType.capeVerde:
        return capeVerde();
      case NationalityType.cambodia:
        return cambodia();
      case NationalityType.cameroon:
        return cameroon();
      case NationalityType.canada:
        return canada();
      case NationalityType.qatar:
        return qatar();
      case NationalityType.chad:
        return chad();
      case NationalityType.chile:
        return chile();
      case NationalityType.china:
        return china();
      case NationalityType.cyprus:
        return cyprus();
      case NationalityType.vaticanCity:
        return vaticanCity();
      case NationalityType.colombia:
        return colombia();
      case NationalityType.comoros:
        return comoros();
      case NationalityType.congo:
        return congo();
      case NationalityType.northKorea:
        return northKorea();
      case NationalityType.southKorea:
        return southKorea();
      case NationalityType.costaRica:
        return costaRica();
      case NationalityType.ivoryCoast:
        return ivoryCoast();
      case NationalityType.croatia:
        return croatia();
      case NationalityType.cuba:
        return cuba();
      case NationalityType.denmark:
        return denmark();
      case NationalityType.djibouti:
        return djibouti();
      case NationalityType.dominica:
        return dominica();
      case NationalityType.ecuador:
        return ecuador();
      case NationalityType.egypt:
        return egypt();
      case NationalityType.elSalvador:
        return elSalvador();
      case NationalityType.unitedArabEmirates:
        return unitedArabEmirates();
      case NationalityType.eritrea:
        return eritrea();
      case NationalityType.slovakia:
        return slovakia();
      case NationalityType.slovenia:
        return slovenia();
      case NationalityType.unitedStates:
        return unitedStates();
      case NationalityType.estonia:
        return estonia();
      case NationalityType.eswatini:
        return eswatini();
      case NationalityType.ethiopia:
        return ethiopia();
      case NationalityType.philippines:
        return philippines();
      case NationalityType.fiji:
        return fiji();
      case NationalityType.gabon:
        return gabon();
      case NationalityType.gambia:
        return gambia();
      case NationalityType.georgia:
        return georgia();
      case NationalityType.ghana:
        return ghana();
      case NationalityType.grenada:
        return grenada();
      case NationalityType.greece:
        return greece();
      case NationalityType.gibraltar:
        return gibraltar();
      case NationalityType.greenland:
        return greenland();
      case NationalityType.guadeloupe:
        return guadeloupe();
      case NationalityType.southGeorgiaAndSandwichIslands:
        return southGeorgiaAndSandwichIslands();
      case NationalityType.guam:
        return guam();
      case NationalityType.guatemala:
        return guatemala();
      case NationalityType.guinea:
        return guinea();
      case NationalityType.equatorialGuinea:
        return equatorialGuinea();
      case NationalityType.guineaBissau:
        return guineaBissau();
      case NationalityType.frenchGuiana:
        return frenchGuiana();
      case NationalityType.guyana:
        return guyana();
      case NationalityType.haiti:
        return haiti();
      case NationalityType.honduras:
        return honduras();
      case NationalityType.hongKong:
        return hongKong();
      case NationalityType.hungary:
        return hungary();
      case NationalityType.india:
        return india();
      case NationalityType.indonesia:
        return indonesia();
      case NationalityType.iraq:
        return iraq();
      case NationalityType.ireland:
        return ireland();
      case NationalityType.iran:
        return iran();
      case NationalityType.iceland:
        return iceland();
      case NationalityType.bouvetIsland:
        return bouvetIsland();
      case NationalityType.caymanIslands:
        return caymanIslands();
      case NationalityType.cocosIslands:
        return cocosIslands();
      case NationalityType.cookIslands:
        return cookIslands();
      case NationalityType.faroeIslands:
        return faroeIslands();
      case NationalityType.falklandIslands:
        return falklandIslands();
      case NationalityType.marshallIslands:
        return marshallIslands();
      case NationalityType.christmasIsland:
        return christmasIsland();
      case NationalityType.niueIsland:
        return niueIsland();
      case NationalityType.norfolkIsland:
        return norfolkIsland();
      case NationalityType.heardAndMcdonaldIslands:
        return heardAndMcdonaldIslands();
      case NationalityType.northernMarianaIslands:
        return northernMarianaIslands();
      case NationalityType.pitcairnIslands:
        return pitcairnIslands();
      case NationalityType.solomonIslands:
        return solomonIslands();
      case NationalityType.tokelauIslands:
        return tokelauIslands();
      case NationalityType.turksAndCaicosIslands:
        return turksAndCaicosIslands();
      case NationalityType.unitedStatesMinorOutlyingIslands:
        return unitedStatesMinorOutlyingIslands();
      case NationalityType.unitedStatesVirginIslands:
        return unitedStatesVirginIslands();
      case NationalityType.britishVirginIslands:
        return britishVirginIslands();
      case NationalityType.israel:
        return israel();
      case NationalityType.jamaica:
        return jamaica();
      case NationalityType.japan:
        return japan();
      case NationalityType.jordan:
        return jordan();
      case NationalityType.kazakhstan:
        return kazakhstan();
      case NationalityType.kenya:
        return kenya();
      case NationalityType.kyrgyzstan:
        return kyrgyzstan();
      case NationalityType.kiribati:
        return kiribati();
      case NationalityType.kuwait:
        return kuwait();
      case NationalityType.laos:
        return laos();
      case NationalityType.lesotho:
        return lesotho();
      case NationalityType.latvia:
        return latvia();
      case NationalityType.liberia:
        return liberia();
      case NationalityType.libya:
        return libya();
      case NationalityType.liechtenstein:
        return liechtenstein();
      case NationalityType.lithuania:
        return lithuania();
      case NationalityType.luxembourg:
        return luxembourg();
      case NationalityType.macao:
        return macao();
      case NationalityType.macedonia:
        return macedonia();
      case NationalityType.lebanon:
        return lebanon();
      case NationalityType.madagascar:
        return madagascar();
      case NationalityType.malaysia:
        return malaysia();
      case NationalityType.malawi:
        return malawi();
      case NationalityType.maldives:
        return maldives();
      case NationalityType.malta:
        return malta();
      case NationalityType.mali:
        return mali();
      case NationalityType.morocco:
        return morocco();
      case NationalityType.martinique:
        return martinique();
      case NationalityType.mauritius:
        return mauritius();
      case NationalityType.mauritania:
        return mauritania();
      case NationalityType.mayotte:
        return mayotte();
      case NationalityType.mexico:
        return mexico();
      case NationalityType.micronesia:
        return micronesia();
      case NationalityType.moldova:
        return moldova();
      case NationalityType.monaco:
        return monaco();
      case NationalityType.mongolia:
        return mongolia();
      case NationalityType.montenegro:
        return montenegro();
      case NationalityType.montserrat:
        return montserrat();
      case NationalityType.mozambique:
        return mozambique();
      case NationalityType.namibia:
        return namibia();
      case NationalityType.nauru:
        return nauru();
      case NationalityType.nepal:
        return nepal();
      case NationalityType.nicaragua:
        return nicaragua();
      case NationalityType.nigeria:
        return nigeria();
      case NationalityType.newZealand:
        return newZealand();
      case NationalityType.newCaledonia:
        return newCaledonia();
      case NationalityType.niger:
        return niger();
      case NationalityType.oman:
        return oman();
      case NationalityType.pakistan:
        return pakistan();
      case NationalityType.palau:
        return palau();
      case NationalityType.panama:
        return panama();
      case NationalityType.papuaNewGuinea:
        return papuaNewGuinea();
      case NationalityType.paraguay:
        return paraguay();
      case NationalityType.palestine:
        return palestine();
      case NationalityType.netherlands:
        return netherlands();
      case NationalityType.peru:
        return peru();
      case NationalityType.frenchPolynesia:
        return frenchPolynesia();
      case NationalityType.poland:
        return poland();
      case NationalityType.saintPierreAndMiquelon:
        return saintPierreAndMiquelon();
      case NationalityType.puertoRico:
        return puertoRico();
      case NationalityType.centralAfricanRepublic:
        return centralAfricanRepublic();
      case NationalityType.czechRepublic:
        return czechRepublic();
      case NationalityType.democraticRepublicOfCongo:
        return democraticRepublicOfCongo();
      case NationalityType.dominicanRepublic:
        return dominicanRepublic();
      case NationalityType.reunion:
        return reunion();
      case NationalityType.republicOfCongo:
        return republicOfCongo();
      case NationalityType.rwanda:
        return rwanda();
      case NationalityType.romania:
        return romania();
      case NationalityType.russia:
        return russia();
      case NationalityType.westernSahara:
        return westernSahara();
      case NationalityType.samoa:
        return samoa();
      case NationalityType.americanSamoa:
        return americanSamoa();
      case NationalityType.saintKittsAndNevis:
        return saintKittsAndNevis();
      case NationalityType.sanMarino:
        return sanMarino();
      case NationalityType.saintVincentAndGrenadines:
        return saintVincentAndGrenadines();
      case NationalityType.saintLucia:
        return saintLucia();
      case NationalityType.saoTomeAndPrincipe:
        return saoTomeAndPrincipe();
      case NationalityType.senegal:
        return senegal();
      case NationalityType.serbia:
        return serbia();
      case NationalityType.seychelles:
        return seychelles();
      case NationalityType.sierraLeone:
        return sierraLeone();
      case NationalityType.singapore:
        return singapore();
      case NationalityType.saintHelena:
        return saintHelena();
      case NationalityType.syria:
        return syria();
      case NationalityType.somalia:
        return somalia();
      case NationalityType.sriLanka:
        return sriLanka();
      case NationalityType.southAfrica:
        return southAfrica();
      case NationalityType.sudan:
        return sudan();
      case NationalityType.southSudan:
        return southSudan();
      case NationalityType.switzerland:
        return switzerland();
      case NationalityType.suriname:
        return suriname();
      case NationalityType.svalbardAndJanMayen:
        return svalbardAndJanMayen();
      case NationalityType.thailand:
        return thailand();
      case NationalityType.taiwan:
        return taiwan();
      case NationalityType.tanzania:
        return tanzania();
      case NationalityType.tajikistan:
        return tajikistan();
      case NationalityType.britishIndianOceanTerritory:
        return britishIndianOceanTerritory();
      case NationalityType.frenchSouthernTerritories:
        return frenchSouthernTerritories();
      case NationalityType.eastTimor:
        return eastTimor();
      case NationalityType.togo:
        return togo();
      case NationalityType.tonga:
        return tonga();
      case NationalityType.trinidadAndTobago:
        return trinidadAndTobago();
      case NationalityType.turkmenistan:
        return turkmenistan();
      case NationalityType.turkey:
        return turkey();
      case NationalityType.tuvalu:
        return tuvalu();
      case NationalityType.tunisia:
        return tunisia();
      case NationalityType.ukraine:
        return ukraine();
      case NationalityType.uganda:
        return uganda();
      case NationalityType.uruguay:
        return uruguay();
      case NationalityType.uzbekistan:
        return uzbekistan();
      case NationalityType.vanuatu:
        return vanuatu();
      case NationalityType.venezuela:
        return venezuela();
      case NationalityType.vietnam:
        return vietnam();
      case NationalityType.wallisAndFutuna:
        return wallisAndFutuna();
      case NationalityType.yemen:
        return yemen();
      case NationalityType.zambia:
        return zambia();
      case NationalityType.zimbabwe:
        return zimbabwe();
    }
  }

  // String toTranslate(BuildContext context) {
  //   return map(
  //     spain: () => context.cl.translate('countries.ES'),
  //     germany: () => context.cl.translate('countries.DE'),
  //     unitedKingdom: () => context.cl.translate('countries.GB'),
  //     norway: () => context.cl.translate('countries.NO'),
  //     sweden: () => context.cl.translate('countries.SE'),
  //     finland: () => context.cl.translate('countries.FI'),
  //     italy: () => context.cl.translate('countries.IT'),
  //     portugal: () => context.cl.translate('countries.PT'),
  //     france: () => context.cl.translate('countries.FR'),
  //     afghanistan: () => context.cl.translate('countries.AF'),
  //     albania: () => context.cl.translate('countries.AL'),
  //     andorra: () => context.cl.translate('countries.AD'),
  //     angola: () => context.cl.translate('countries.AO'),
  //     antiguaAndBarbuda: () => context.cl.translate('countries.AG'),
  //     anguilla: () => context.cl.translate('countries.AI'),
  //     netherlandsAntilles: () => context.cl.translate('countries.AN'),
  //     antarctica: () => context.cl.translate('countries.AQ'),
  //     saudiArabia: () => context.cl.translate('countries.SA'),
  //     algeria: () => context.cl.translate('countries.DZ'),
  //     argentina: () => context.cl.translate('countries.AR'),
  //     armenia: () => context.cl.translate('countries.AM'),
  //     australia: () => context.cl.translate('countries.AU'),
  //     austria: () => context.cl.translate('countries.AT'),
  //     aruba: () => context.cl.translate('countries.AW'),
  //     azerbaijan: () => context.cl.translate('countries.AZ'),
  //     bahamas: () => context.cl.translate('countries.BS'),
  //     bangladesh: () => context.cl.translate('countries.BD'),
  //     belgium: () => context.cl.translate('countries.BE'),
  //     barbados: () => context.cl.translate('countries.BB'),
  //     bahrain: () => context.cl.translate('countries.BH'),
  //     belize: () => context.cl.translate('countries.BZ'),
  //     benin: () => context.cl.translate('countries.BJ'),
  //     bermuda: () => context.cl.translate('countries.BM'),
  //     belarus: () => context.cl.translate('countries.BY'),
  //     myanmar: () => context.cl.translate('countries.MM'),
  //     bolivia: () => context.cl.translate('countries.BO'),
  //     bosniaAndHerzegovina: () => context.cl.translate('countries.BA'),
  //     botswana: () => context.cl.translate('countries.BW'),
  //     brazil: () => context.cl.translate('countries.BR'),
  //     brunei: () => context.cl.translate('countries.BN'),
  //     bulgaria: () => context.cl.translate('countries.BG'),
  //     burkinaFaso: () => context.cl.translate('countries.BF'),
  //     burundi: () => context.cl.translate('countries.BI'),
  //     bhutan: () => context.cl.translate('countries.BT'),
  //     capeVerde: () => context.cl.translate('countries.CV'),
  //     cambodia: () => context.cl.translate('countries.KH'),
  //     cameroon: () => context.cl.translate('countries.CM'),
  //     canada: () => context.cl.translate('countries.CA'),
  //     qatar: () => context.cl.translate('countries.QA'),
  //     chad: () => context.cl.translate('countries.TD'),
  //     chile: () => context.cl.translate('countries.CL'),
  //     china: () => context.cl.translate('countries.CN'),
  //     cyprus: () => context.cl.translate('countries.CY'),
  //     vaticanCity: () => context.cl.translate('countries.VA'),
  //     colombia: () => context.cl.translate('countries.CO'),
  //     comoros: () => context.cl.translate('countries.KM'),
  //     congo: () => context.cl.translate('countries.CG'),
  //     northKorea: () => context.cl.translate('countries.KP'),
  //     southKorea: () => context.cl.translate('countries.KR'),
  //     costaRica: () => context.cl.translate('countries.CR'),
  //     ivoryCoast: () => context.cl.translate('countries.CI'),
  //     croatia: () => context.cl.translate('countries.HR'),
  //     cuba: () => context.cl.translate('countries.CU'),
  //     denmark: () => context.cl.translate('countries.DK'),
  //     djibouti: () => context.cl.translate('countries.DJ'),
  //     dominica: () => context.cl.translate('countries.DM'),
  //     ecuador: () => context.cl.translate('countries.EC'),
  //     egypt: () => context.cl.translate('countries.EG'),
  //     elSalvador: () => context.cl.translate('countries.SV'),
  //     unitedArabEmirates: () => context.cl.translate('countries.AE'),
  //     eritrea: () => context.cl.translate('countries.ER'),
  //     slovakia: () => context.cl.translate('countries.SK'),
  //     slovenia: () => context.cl.translate('countries.SI'),
  //     unitedStates: () => context.cl.translate('countries.US'),
  //     estonia: () => context.cl.translate('countries.EE'),
  //     eswatini: () => context.cl.translate('countries.SZ'),
  //     ethiopia: () => context.cl.translate('countries.ET'),
  //     philippines: () => context.cl.translate('countries.PH'),
  //     fiji: () => context.cl.translate('countries.FJ'),
  //     gabon: () => context.cl.translate('countries.GA'),
  //     gambia: () => context.cl.translate('countries.GM'),
  //     georgia: () => context.cl.translate('countries.GE'),
  //     ghana: () => context.cl.translate('countries.GH'),
  //     grenada: () => context.cl.translate('countries.GD'),
  //     greece: () => context.cl.translate('countries.GR'),
  //     gibraltar: () => context.cl.translate('countries.GI'),
  //     greenland: () => context.cl.translate('countries.GL'),
  //     guadeloupe: () => context.cl.translate('countries.GP'),
  //     southGeorgiaAndSandwichIslands: () =>
  //         context.cl.translate('countries.GS'),
  //     guam: () => context.cl.translate('countries.GU'),
  //     guatemala: () => context.cl.translate('countries.GT'),
  //     guinea: () => context.cl.translate('countries.GN'),
  //     equatorialGuinea: () => context.cl.translate('countries.GQ'),
  //     guineaBissau: () => context.cl.translate('countries.GW'),
  //     frenchGuiana: () => context.cl.translate('countries.GF'),
  //     guyana: () => context.cl.translate('countries.GY'),
  //     haiti: () => context.cl.translate('countries.HT'),
  //     honduras: () => context.cl.translate('countries.HN'),
  //     hongKong: () => context.cl.translate('countries.HK'),
  //     hungary: () => context.cl.translate('countries.HU'),
  //     india: () => context.cl.translate('countries.IN'),
  //     indonesia: () => context.cl.translate('countries.ID'),
  //     iraq: () => context.cl.translate('countries.IQ'),
  //     ireland: () => context.cl.translate('countries.IE'),
  //     iran: () => context.cl.translate('countries.IR'),
  //     iceland: () => context.cl.translate('countries.IS'),
  //     bouvetIsland: () => context.cl.translate('countries.BV'),
  //     caymanIslands: () => context.cl.translate('countries.KY'),
  //     cocosIslands: () => context.cl.translate('countries.CC'),
  //     cookIslands: () => context.cl.translate('countries.CK'),
  //     faroeIslands: () => context.cl.translate('countries.FO'),
  //     falklandIslands: () => context.cl.translate('countries.FK'),
  //     marshallIslands: () => context.cl.translate('countries.MH'),
  //     christmasIsland: () => context.cl.translate('countries.CX'),
  //     niueIsland: () => context.cl.translate('countries.NU'),
  //     norfolkIsland: () => context.cl.translate('countries.NF'),
  //     heardAndMcdonaldIslands: () => context.cl.translate('countries.HM'),
  //     northernMarianaIslands: () => context.cl.translate('countries.MP'),
  //     pitcairnIslands: () => context.cl.translate('countries.PN'),
  //     solomonIslands: () => context.cl.translate('countries.SB'),
  //     tokelauIslands: () => context.cl.translate('countries.TK'),
  //     turksAndCaicosIslands: () => context.cl.translate('countries.TC'),
  //     unitedStatesMinorOutlyingIslands: () =>
  //         context.cl.translate('countries.UM'),
  //     unitedStatesVirginIslands: () => context.cl.translate('countries.VI'),
  //     britishVirginIslands: () => context.cl.translate('countries.VG'),
  //     israel: () => context.cl.translate('countries.IL'),
  //     jamaica: () => context.cl.translate('countries.JM'),
  //     japan: () => context.cl.translate('countries.JP'),
  //     jordan: () => context.cl.translate('countries.JO'),
  //     kazakhstan: () => context.cl.translate('countries.KZ'),
  //     kenya: () => context.cl.translate('countries.KE'),
  //     kyrgyzstan: () => context.cl.translate('countries.KG'),
  //     kiribati: () => context.cl.translate('countries.KI'),
  //     kuwait: () => context.cl.translate('countries.KW'),
  //     laos: () => context.cl.translate('countries.LA'),
  //     lesotho: () => context.cl.translate('countries.LS'),
  //     latvia: () => context.cl.translate('countries.LV'),
  //     liberia: () => context.cl.translate('countries.LR'),
  //     libya: () => context.cl.translate('countries.LY'),
  //     liechtenstein: () => context.cl.translate('countries.LI'),
  //     lithuania: () => context.cl.translate('countries.LT'),
  //     luxembourg: () => context.cl.translate('countries.LU'),
  //     macao: () => context.cl.translate('countries.MO'),
  //     macedonia: () => context.cl.translate('countries.MK'),
  //     lebanon: () => context.cl.translate('countries.LB'),
  //     madagascar: () => context.cl.translate('countries.MG'),
  //     malaysia: () => context.cl.translate('countries.MY'),
  //     malawi: () => context.cl.translate('countries.MW'),
  //     maldives: () => context.cl.translate('countries.MV'),
  //     malta: () => context.cl.translate('countries.MT'),
  //     mali: () => context.cl.translate('countries.ML'),
  //     morocco: () => context.cl.translate('countries.MA'),
  //     martinique: () => context.cl.translate('countries.MQ'),
  //     mauritius: () => context.cl.translate('countries.MU'),
  //     mauritania: () => context.cl.translate('countries.MR'),
  //     mayotte: () => context.cl.translate('countries.YT'),
  //     mexico: () => context.cl.translate('countries.MX'),
  //     micronesia: () => context.cl.translate('countries.FM'),
  //     moldova: () => context.cl.translate('countries.MD'),
  //     monaco: () => context.cl.translate('countries.MC'),
  //     mongolia: () => context.cl.translate('countries.MN'),
  //     montenegro: () => context.cl.translate('countries.ME'),
  //     montserrat: () => context.cl.translate('countries.MS'),
  //     mozambique: () => context.cl.translate('countries.MZ'),
  //     namibia: () => context.cl.translate('countries.NA'),
  //     nauru: () => context.cl.translate('countries.NR'),
  //     nepal: () => context.cl.translate('countries.NP'),
  //     nicaragua: () => context.cl.translate('countries.NI'),
  //     nigeria: () => context.cl.translate('countries.NG'),
  //     newZealand: () => context.cl.translate('countries.NZ'),
  //     newCaledonia: () => context.cl.translate('countries.NC'),
  //     niger: () => context.cl.translate('countries.NE'),
  //     oman: () => context.cl.translate('countries.OM'),
  //     pakistan: () => context.cl.translate('countries.PK'),
  //     palau: () => context.cl.translate('countries.PW'),
  //     panama: () => context.cl.translate('countries.PA'),
  //     papuaNewGuinea: () => context.cl.translate('countries.PG'),
  //     paraguay: () => context.cl.translate('countries.PY'),
  //     palestine: () => context.cl.translate('countries.PS'),
  //     netherlands: () => context.cl.translate('countries.NL'),
  //     peru: () => context.cl.translate('countries.PE'),
  //     frenchPolynesia: () => context.cl.translate('countries.PF'),
  //     poland: () => context.cl.translate('countries.PL'),
  //     saintPierreAndMiquelon: () => context.cl.translate('countries.PM'),
  //     puertoRico: () => context.cl.translate('countries.PR'),
  //     centralAfricanRepublic: () => context.cl.translate('countries.CF'),
  //     czechRepublic: () => context.cl.translate('countries.CZ'),
  //     democraticRepublicOfCongo: () => context.cl.translate('countries.CD'),
  //     dominicanRepublic: () => context.cl.translate('countries.DO'),
  //     reunion: () => context.cl.translate('countries.RE'),
  //     republicOfCongo: () => context.cl.translate('countries.CG'),
  //     rwanda: () => context.cl.translate('countries.RW'),
  //     romania: () => context.cl.translate('countries.RO'),
  //     russia: () => context.cl.translate('countries.RU'),
  //     westernSahara: () => context.cl.translate('countries.EH'),
  //     samoa: () => context.cl.translate('countries.WS'),
  //     americanSamoa: () => context.cl.translate('countries.AS'),
  //     saintKittsAndNevis: () => context.cl.translate('countries.KN'),
  //     sanMarino: () => context.cl.translate('countries.SM'),
  //     saintVincentAndGrenadines: () => context.cl.translate('countries.VC'),
  //     saintLucia: () => context.cl.translate('countries.LC'),
  //     saoTomeAndPrincipe: () => context.cl.translate('countries.ST'),
  //     senegal: () => context.cl.translate('countries.SN'),
  //     serbia: () => context.cl.translate('countries.RS'),
  //     seychelles: () => context.cl.translate('countries.SC'),
  //     sierraLeone: () => context.cl.translate('countries.SL'),
  //     singapore: () => context.cl.translate('countries.SG'),
  //     saintHelena: () => context.cl.translate('countries.SH'),
  //     syria: () => context.cl.translate('countries.SY'),
  //     somalia: () => context.cl.translate('countries.SO'),
  //     sriLanka: () => context.cl.translate('countries.LK'),
  //     southAfrica: () => context.cl.translate('countries.ZA'),
  //     sudan: () => context.cl.translate('countries.SD'),
  //     southSudan: () => context.cl.translate('countries.SS'),
  //     switzerland: () => context.cl.translate('countries.CH'),
  //     suriname: () => context.cl.translate('countries.SR'),
  //     svalbardAndJanMayen: () => context.cl.translate('countries.SJ'),
  //     thailand: () => context.cl.translate('countries.TH'),
  //     taiwan: () => context.cl.translate('countries.TW'),
  //     tanzania: () => context.cl.translate('countries.TZ'),
  //     tajikistan: () => context.cl.translate('countries.TJ'),
  //     britishIndianOceanTerritory: () => context.cl.translate('countries.IO'),
  //     frenchSouthernTerritories: () => context.cl.translate('countries.TF'),
  //     eastTimor: () => context.cl.translate('countries.TL'),
  //     togo: () => context.cl.translate('countries.TG'),
  //     tonga: () => context.cl.translate('countries.TO'),
  //     trinidadAndTobago: () => context.cl.translate('countries.TT'),
  //     turkmenistan: () => context.cl.translate('countries.TM'),
  //     turkey: () => context.cl.translate('countries.TR'),
  //     tuvalu: () => context.cl.translate('countries.TV'),
  //     tunisia: () => context.cl.translate('countries.TN'),
  //     ukraine: () => context.cl.translate('countries.UA'),
  //     uganda: () => context.cl.translate('countries.UG'),
  //     uruguay: () => context.cl.translate('countries.UY'),
  //     uzbekistan: () => context.cl.translate('countries.UZ'),
  //     vanuatu: () => context.cl.translate('countries.VU'),
  //     venezuela: () => context.cl.translate('countries.VE'),
  //     vietnam: () => context.cl.translate('countries.VN'),
  //     wallisAndFutuna: () => context.cl.translate('countries.WF'),
  //     yemen: () => context.cl.translate('countries.YE'),
  //     zambia: () => context.cl.translate('countries.ZM'),
  //     zimbabwe: () => context.cl.translate('countries.ZW'),
  //   );
  // }
}
