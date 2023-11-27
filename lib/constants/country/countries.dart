import 'package:get/get.dart';

import 'flags_string.dart';

class CountyController extends GetxController {
  static CountyController get instance => Get.find();

  List country = [
    ["Afghanistan", "AF", "AFG", "004", afghanistan, "AFN"],
    ["Aland Islands", "AX", "ALA", "248", alandIslands, "EUR"],
    ["Albania", "AL", "ALB", "008", albania, "All"],
    ["Algeria", "DZ", "DZA", "012", algeria, "DZD"],
    ["American Samoa", "AS", "ASM", "016", americanSamoa, "USD"],
    ["Andorra", "AD", "AND", "020", andorra, "EUR"],
    ["Angola", "AO", "AGO", "024", angola, "AOA"],
    ["Anguilla", "AI", "AIA", "660", anguilla, "XCD"],
    ["Antarctica", "AQ", "ATA", "010", antarctica, "null"],
    ["Antigua and Barbuda", "AG", "ATG", "028", antiguaAndBarbuda, "XCD"],
    ["Argentina", "AR", "ARG", "032", argentina, "ARS"],
    ["Armenia", "AM", "ARM", "051", armenia, "AMD"],
    ["Aruba", "AW", "ABW", "533", aruba, "AWG"],
    ["Australia", "AU", "AUS", "036", australia, "AUD"],
    ["Austria", "AT", "AUT", "040", austria, "EUR"],
    ["Azerbaijan", "AZ", "AZE", "031", azerbaijan, "AZN"],
    ["Bahamas", "BS", "BHS", "044", bahamas, "BSD"],
    ["Bahrain", "BH", "BHR", "048", bahrain, "BHD"],
    ["Bangladesh", "BD", "BGD", "050", bangladesh, "BDT"],
    ["Barbados", "BB", "BRB", "052", barbados, "BBD"],
    ["Belarus", "BY", "BLR", "112", belarus, "BYN"],
    ["Belgium", "BE", "BEL", "056", belgium, "EUR"],
    ["Belize", "BZ", "BLZ", "084", belize, "BZD"],
    ["Benin", "BJ", "BEN", "204", benin, "XOF"],
    ["Bermuda", "BM", "BMU", "060", bermuda, "BMD"],
    ["Bhutan", "BT", "BTN", "064", bhutan, "BTN"],
    ["Bolivia", "BO", "BOL", "068", bolivia, "BOB"],
    ["Bosnia and Herzegovina", "BA", "BIH", "070", bosniaAndHerzegovina, "BAM"],
    ["Botswana", "BW", "BWA", "072", botswana, "BWP"],
    ["Bouvet Island", "BV", "BVT", "074", bouvetIsland, "NOK"],
    ["Brazil", "BR", "BRA", "076", brazil, "BRL"],
    ["British Virgin Islands", "VG", "VGB", "092", britishVirginIslands, "USD"],
    [
      "British Indian Ocean Territory",
      "IO",
      "IOT",
      "086",
      britishIndianOceanTerritory,
      "USD"
    ],
    ["Brunei Darussalam", "BN", "BRN", "096", brunei, "BND"],
    ["Bulgaria", "BG", "BGR", "100", bulgaria, "BGN"],
    ["Burkina Faso", "BF", "BFA", "854", burkinaFaso, "XOF"],
    ["Burundi", "BI", "BDI", "108", burundi, "BIF"],
    ["Cambodia", "KH", "KHM", "116", cambodia, "KHR"],
    ["Cameroon", "CM", "CMR", "120", cameroon, "XAF"],
    ["Canada", "CA", "CAN", "124", canada, "CAD"],
    ["Cape Verde", "CV", "CPV", "132", capeVerde, "CVE"],
    ["Cayman" "Islands", "KY", "CYM", "136", cayman, "KYD"],
    [
      "Central African Republic",
      "CF",
      "CAF",
      "140",
      centralAfricanRepublic,
      "XAF"
    ],
    ["Chad", "TD", "TCD", "148", chad, "XAF"],
    ["Chile", "CL", "CHL", "152", chile, "CLP"],
    ["China", "CN", "CHN", "156", china, "CNY"],
    ["Hong Kong, SAR China", "HK", "HKG", "344", hongKong, "HKD"],
    ["Macau, SAR China", "MO", "MAC", "446", macau, "MOP"],
    ["Christmas Island", "CX", "CXR", "162", christmasIsland, "AUD"],
    ["Cocos (Keeling) Islands", "CC", "CCK", "166", cocosKeelingIslands, "AUD"],
    ["Colombia", "CO", "COL", "170", colombia, "COP"],
    ["Comoros", "KM", "COM", "174", comoros, "KMF"],
    ["Congo (Brazzaville)", "CG", "COG", "178", congoRepublic, "XAF"],
    ["Congo, (Kinshasa)", "CD", "COD", "180", congoRepublic, "CDF"],
    ["Cook Islands", "CK", "COK", "184", cookIslands, "NZD"],
    ["Costa Rica", "CR", "CRI", "188", costaRica, "CRC"],
    ["Côte d'Ivoire", "CI", "CIV", "384", cotedIvoire, "XOF"],
    ["Croatia", "HR", "HRV", "191", croatia, "HRK"],
    ["Cuba", "CU", "CUB", "192", cuba, "CUP"],
    ["Cyprus", "CY", "CYP", "196", cyprus, "CUP"],
    ["Czech Republic", "CZ", "CZE", "203", czechia, "CZK"],
    ["Denmark", "DK", "DNK", "208", denmark, "DKK"],
    ["Djibouti", "DJ", "DJI", "262", djibouti, "DJF"],
    ["Dominica", "DM", "DMA", "212", dominica, "XCD"],
    ["Dominican Republic", "DO", "DOM", "214", dominica, "DOP"],
    ["Ecuador", "EC", "ECU", "218", ecuador, "USD"],
    ["Egypt", "EG", "EGY", "818", egypt, "EGP"],
    ["El Salvador", "SV", "SLV", "222", elSalvador, "SVC"],
    ["Equatorial Guinea", "GQ", "GNQ", "226", equatorialGuinea, "XAF"],
    ["Eritrea", "ER", "ERI", "232", eritrea, "ERN"],
    ["Estonia", "EE", "EST", "233", estonia, "EUR"],
    ["Ethiopia", "ET", "ETH", "231", ethiopia, "ETB"],
    ["Falkland Islands (Malvinas)", "FK", "FLK", "238", falkland, "FKP"],
    ["Faroe Islands", "FO", "FRO", "234", faroeIslands, "DKK"],
    ["Fiji", "FJ", "FJI", "242", fiji, "FJD", "FJD"],
    ["Finland", "FI", "FIN", "246", finland, "EUR"],
    ["France", "FR", "FRA", "250", france, "EUR"],
    ["Gabon", "GA", "GAB", "266", gabon, "XAF"],
    ["Gambia", "GM", "GMB", "270", gambia, "GMD"],
    ["Georgia", "GE", "GEO", "268", georgia, "GEL"],
    ["Germany", "DE", "DEU", "276", germany, "EUR"],
    ["Ghana", "GH", "GHA", "288", ghana, "GHS"],
    ["Greece", "GR", "GRC", "300", greece, "EUR"],
    ["Greenland", "GL", "GRL", "304", greenland, "DKK"],
    ["Grenada", "GD", "GRD", "308", grenada, "XCD"],
    ["Guadeloupe", "GP", "GLP", "312", france, "EUR"],
    ["Guam", "GU", "GUM", "316", guam, "USD"],
    ["Guatemala", "GT", "GTM", "320", guatemala, "CTQ"],
    ["Guernsey", "GG", "GGY", "831", ghuernsey, "GGP"],
    ["Guinea", "GN", "GIN", "324", guinea, "GNF"],
    ["Guinea-Bissau", "GW", "GNB", "624", guineaBissau, "XOF"],
    ["Guyana", "GY", "GUY", "328", guyana, "GYD"],
    ["Haiti", "HT", "HTI", "332", haiti, "HTG"],
    ["Holy See (Vatican City State)", "VA", "VAT", "336", vaticanCity, "EUR"],
    ["Honduras", "HN", "HND", "340", honduras, "HNL"],
    ["Hungary", "HU", "HUN", "348", hungary, "HUF"],
    ["Iceland", "IS", "ISL", "352", iceland, "ISK"],
    ["India", "IN", "IND", "356", india, "INR"],
    ["Indonesia", "ID", "IDN", "360", indonesia, "IDR"],
    ["Iran, Islamic Republic of", "IR", "IRN", "364", iran, "IRR"],
    ["Iraq", "IQ", "IRQ", "368", iraq, "IQD"],
    ["Ireland", "IE", "IRL", "372", ireland, "EUR"],
    ["Isle of Man", "IM", "IMN", "833", isleOfMen, "IMP"],
    ["Israel", "IL", "ISR", "376", israel, "ILS"],
    ["Italy", "IT", "ITA", "380", italy, "EUR"],
    ["Jamaica", "JM", "JAM", "388", jamaica, "JMD"],
    ["Japan", "JP", "JPN", "392", japan, "JPY"],
    ["Jersey", "JE", "JEY", "832", jersey, "JEP"],
    ["Jordan", "JO", "JOR", "400", jordan, "JOD"],
    ["Kazakhstan", "KZ", "KAZ", "398", kazakhstan, "KZT"],
    ["Kenya", "KE", "KEN", "404", kenya, "KES"],
    ["Kiribati", "KI", "KIR", "296", kiribati, "nAUDull"],
    ["Korea (North)", "KP", "PRK", "408", northKorea, "KPW"],
    ["Korea (South)", "KR", "KOR", "410", southKorea, "KRW"],
    ["Kuwait", "KW", "KWT", "414", kuwait, "KWD"],
    ["Kyrgyzstan", "KG", "KGZ", "417", kyrgyzstan, "KGS"],
    ["Lao PDR", "LA", "LAO", "418", laos, "LAK"],
    ["Latvia", "LV", "LVA", "428", latvia, "EUR"],
    ["Lebanon", "LB", "LBN", "422", lebanon, "LBP"],
    ["Lesotho", "LS", "LSO", "426", lesotho, "LSL"],
    ["Liberia", "LR", "LBR", "430", liberia, "LRD"],
    ["Libya", "LY", "LBY", "434", libya, "LYD"],
    ["Liechtenstein", "LI", "LIE", "438", liechtenstein, "CHF"],
    ["Lithuania", "LT", "LTU", "440", lithuania, "EUR"],
    ["Luxembourg", "LU", "LUX", "442", luxembourg, "EUR"],
    ["Macedonia", "MK", "MKD", "807", northMacedonia, "MKD"],
    ["Madagascar", "MG", "MDG", "450", madagascar, "MGA"],
    ["Malawi", "MW", "MWI", "454", malawi, "MWK"],
    ["Malaysia", "MY", "MYS", "458", malaysia, "MYR"],
    ["Maldives", "MV", "MDV", "462", maldives, "MVR"],
    ["Mali", "ML", "MLI", "466", mali, "XOF"],
    ["Malta", "MT", "MLT", "470", malta, "EUR"],
    ["Marshall Islands", "MH", "MHL", "584", marshallIslands, "USD"],
    ["Mauritania", "MR", "MRT", "478", mauritania, "MRU"],
    ["Mauritius", "MU", "MUS", "480", mauritius, "MUR"],
    ["Mexico", "MX", "MEX", "484", mexico, "MXN"],
    ["Micronesia, Federated States of", "FM", "FSM", "583", micronesia, "USD"],
    ["Moldova", "MD", "MDA", "498", moldova, "MDL"],
    ["Monaco", "MC", "MCO", "492", monaco, "EUR"],
    ["Mongolia", "MN", "MNG", "496", mongolia, "MNT"],
    ["Montenegro", "ME", "MNE", "499", montenegro, "EUR"],
    ["Morocco", "MA", "MAR", "504", morocco, "MAD"],
    ["Mozambique", "MZ", "MOZ", "508", mozambique, "MZN"],
    ["Myanmar", "MM", "MMR", "104", myanmar, "MMK"],
    ["Namibia", "NA", "NAM", "516", namibia, "NAD"],
    ["Nauru", "NR", "NRU", "520", naura, "AUD"],
    ["Nepal", "NP", "NPL", "524", nepal, "NPR"],
    ["Netherlands", "NL", "NLD", "528", netherlands, "ANG"],
    ["New Zealand", "NZ", "NZL", "554", newZealand, "NZd"],
    ["Nicaragua", "NI", "NIC", "558", nicaragua, "NIO"],
    ["Niger", "NE", "NER", "562", niger, "XOF"],
    ["Nigeria", "NG", "NGA", "566", nigeria, "NGN"],
    ["Norway", "NO", "NOR", "578", norway, "NOK"],
    ["Oman", "OM", "OMN", "512", oman, "OMR"],
    ["Pakistan", "PK", "PAK", "586", pakistan, "PKR"],
    ["Palau", "PW", "PLW", "585", palau, "USD"],
    ["Palestinian Territory", "PS", "PSE", "275", palestine, "ILS"],
    ["Panama", "PA", "PAN", "591", panama, "PAB"],
    ["Papua New Guinea", "PG", "PNG", "598", papuaNewGuinea, "PGK"],
    ["Paraguay", "PY", "PRY", "600", paraguay, "PYG"],
    ["Peru", "PE", "PER", "604", peru, "PEN"],
    ["Philippines", "PH", "PHL", "608", philippines, "PHP"],
    ["Poland", "PL", "POL", "616", poland, "PLN"],
    ["Portugal", "PT", "PRT", "620", portugal, "EUR"],
    ["Puerto Rico", "PR", "PRI", "630", puertoRico, "USD"],
    ["Qatar", "QA", "QAT", "634", qatar, "QAR"],
    ["Romania", "RO", "ROU", "642", romania, "RON"],
    ["Russian Federation", "RU", "RUS", "643", russia, "RUB"],
    ["Rwanda", "RW", "RWA", "646", rwanda, "RWF"],
    ["Saint Kitts and Nevis", "KN", "KNA", "659", saintKittsNevis, "XCD"],
    ["Saint Lucia", "LC", "LCA", "662", saintLucia, "XCD"],
    [
      "Saint Vincent and Grenadines",
      "VC",
      "VCT",
      "670",
      saintVincentGrenadines,
      "XCD"
    ],
    ["Samoa", "WS", "WSM", "882", samoa, "WST"],
    ["San Marino", "SM", "SMR", "674", sanMarino, "EUR"],
    ["Sao Tome and Principe", "ST", "STP", "678", saoTomePrincipe, "STN"],
    ["Saudi Arabia", "SA", "SAU", "682", saudiArabia, "SAR"],
    ["Senegal", "SN", "SEN", "686", senegal, "XOF"],
    ["Serbia", "RS", "SRB", "688", serbia, "RSD"],
    ["Seychelles", "SC", "SYC", "690", seychelles, "SCR"],
    ["Sierra Leone", "SL", "SLE", "694", sierraLeone, "SLL"],
    ["Singapore", "SG", "SGP", "702", singapore, "SGD"],
    ["Slovakia", "SK", "SVK", "703", slovakia, "EUR"],
    ["Slovenia", "SI", "SVN", "705", slovenia, "EUR"],
    ["Solomon Islands", "SB", "SLB", "090", solomonIslands, "SBD"],
    ["Somalia", "SO", "SOM", "706", somalia, "SOS"],
    ["South Africa", "ZA", "ZAF", "710", southAfrica, "ZAR"],
    ["South Sudan", "SS", "SSD", "728", southSudan, "SSP"],
    ["Spain", "ES", "ESP", "724", spain, "EUR"],
    ["Sri Lanka", "LK", "LKA", "144", sriLanka, "LKR"],
    ["Sudan", "SD", "SDN", "736", sudan, "SDG"],
    ["Suriname", "SR", "SUR", "740", suriname, "SRD"],
    ["Sweden", "SE", "SWE", "752", sweden, "SEK"],
    ["Switzerland", "CH", "CHE", "756", switzerland, "CHF"],
    ["Syrian Arab Republic (Syria)", "SY", "SYR", "760", syria, "SYP"],
    ["Taiwan, Republic of China", "TW", "TWN", "158", taiwan, "TWD"],
    ["Tajikistan", "TJ", "TJK", "762", tajikistan, "TJS"],
    ["Tanzania, United Republic of", "TZ", "TZA", "834", tanzania, "TND"],
    ["Thailand", "TH", "THA", "764", thailand, "THB"],
    ["Timor-Leste", "TL", "TLS", "626", timorLeste, "TZS"],
    ["Togo", "TG", "TGO", "768", togo, "XOF"],
    ["Tonga", "TO", "TON", "776", tongo, "TOP"],
    ["Trinidad and Tobago", "TT", "TTO", "780", trinidadTobago, "TTD"],
    ["Tunisia", "TN", "TUN", "788", tunisia, "TND"],
    ["Turkey", "TR", "TUR", "792", turkey, "TRY"],
    ["Turkmenistan", "TM", "TKM", "795", turkmenistan, "TMT"],
    ["Tuvalu", "TV", "TUV", "798", tuvalu, "TVD"],
    ["Uganda", "UG", "UGA", "800", uganda, "UGX"],
    ["Ukraine", "UA", "UKR", "804", ukraine, "UAH"],
    ["United Arab Emirates", "AE", "ARE", "784", unitedArabEmirates, "AED"],
    ["United Kingdom", "GB", "GBR", "826", unitedKingdom, "GBP"],
    [
      "United States of America",
      "US",
      "USA",
      "840",
      unitedStatesAmerica,
      "USD"
    ],
    ["Uruguay", "UY", "URY", "858", uruguay, "UYU"],
    ["Uzbekistan", "UZ", "UZB", "860", uzbekistan, "UZS"],
    ["Vanuatu", "VU", "VUT", "548", vanuatu, "VUV"],
    ["Venezuela (Bolivian Republic)", "VE", "VEN", "862", venezuela, "VEF"],
    ["Viet Nam", "VN", "VNM", "704", vietnam, "VND"],
    ["Virgin Islands, US", "VI", "VIR", "850", britishVirginIslands, "USD"],
    ["Yemen", "YE", "YEM", "887", yemen, "YER"],
    ["Zambia", "ZM", "ZMB", "894", zambia, "ZMW"],
    ["Zimbabwe", "ZW", "ZWE", "716", zimbabwe, "ZWD"],
    ["Gold", "null", "null", "null", gold, " XAU"],
    ["Europe", "null", "null", "null", europe, " EUR"],
  ];

  String getCountryByCode(String code) {
    for (final c in country) {
      if (c[3] == code) {
        return c[0];
      }
    }
    return 'Unknown Country';
  }

  String getCountryByAlpha_2(String alpha_2) {
    for (final c in country) {
      if (c[1] == alpha_2) {
        return c[0];
      }
    }
    return 'Unknown Country';
  }

  String getCountryByAlpha_3(String alpha_3) {
    for (final c in country) {
      if (c[2] == alpha_3) {
        return c[0];
      }
    }
    return 'Unknown Country';
  }

  String getCurrencyByCountry(String countries) {
    for (final currency in country) {
      if (currency[0].toLowerCase() == countries.toLowerCase()) {
        print(currency[5]);
        return currency[5];
      }
    }
    return world;
  }

  String getCurrencyByCountryCode(String code) {
    for (final currency in country) {
      if (currency[5] == code) {
        return currency[5];
      }
    }
    return world;
  }
}
/* */
