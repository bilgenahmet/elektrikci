// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member, import_of_legacy_library_into_null_safe

import 'package:flutter/cupertino.dart';
import 'package:elektrikci/view/trafoview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "ELEKTRİK BİLGİ",
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.activeBlue,
          middle: Text(
            "TRAFO GÜCÜ (KVA)",
            style: (TextStyle(
                color: CupertinoColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
          ),
        ),
        child: SingleChildScrollView(child: Trafoview()),
      ),
    );
  }
}
