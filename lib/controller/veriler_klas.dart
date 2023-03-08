class VerilerKlas {
  num secilecengerilim(int index) => _secilecekgerilim[index];

  num secilecentrafo(int index) => _secilecektrafo[index];
  String secilentms(int index) => _tmsdegeri[index];

  final List<num> _secilecekgerilim = <num>[
    0.4,
  ];

  final List<num> _secilecektrafo = <num>[
    50,
    100,
    160,
    250,
    400,
    630,
    800,
    1000,
    1250,
    1600,
    2000,
  ];

  final List<String> _tmsdegeri = <String>[
    "3 x 100 A",
    "3 x 160 A",
    "3 x 250 A",
    "3 x 400 A",
    "3 x 630 A",
    "3 x 1000 A",
    "3 x 1250 A",
    "3 x 1600 A",
    "3 x 2000 A",
    "3 x 2500 A",
    "3 x 3000 A",
  ];

  final List<String> _cukablodegeri = <String>[
    "3x25+16 mm²",
    "3x50+25 mm²",
    "3x95+50 mm²",
    "3x150+70 mm²",
    "2(3x150+70) mm²",
    "4x3(1x185) mm²",
    "4x4(1x185) mm²",
    "4x5(1x185) mm²",
    "4x5(1x240) mm²",
    "4x6(1x240) mm²",
    "4x7(1x240) mm²",
  ];

  String secilencukablokesiti(int index) => _cukablodegeri[index];

  final List<String> _alkablodegeri = <String>[
    "3x50+16 mm²",
    "3x70+25 mm²",
    "3x120+50 mm²",
    "3x185+70 mm²",
    "2(3x185+70) mm²",
    "4x3(1x240) mm²",
    "4x4(1x240) mm²",
    "4x5(1x240) mm²",
    "4x6(1x240) mm²",
    "4x7(1x240) mm²",
    "4x8(1x240) mm²",
  ];

  String secilenalkablokesiti(int index) => _alkablodegeri[index];

  final List<String> _cubaradegeri = <String>[
    "30x3 mm²",
    "40x3 mm²",
    "40x3 mm²",
    "40x3 mm²",
    "40x5 mm²",
    "50x10 mm²",
    "60x10 mm²",
    "80x10 mm²",
    "100x10 mm²",
    "2(80x10) mm²",
    "2(100x10) mm²",
  ];

  String secilenbarakesiti(int index) => _cubaradegeri[index];

  final List<String> _albaradegeri = <String>[
    "40x5 mm²",
    "40x5 mm²",
    "40x5 mm²",
    "40x5 mm²",
    "50x5 mm²",
    "60x10 mm²",
    "80x10 mm²",
    "100x10 mm²",
    "2(80x10) mm²",
    "2(100x10) mm²",
    "2(100x15) mm²",
  ];

  String secilenalbarakesiti(int index) => _albaradegeri[index];
}
