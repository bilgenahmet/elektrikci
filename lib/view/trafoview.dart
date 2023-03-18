// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_prin

import 'package:elektrikci/controller/customwidget/kesitgorsel.dart';
import 'package:elektrikci/controller/veriler_klas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elektrikci/controller/hesaplama.dart';
import 'package:get/route_manager.dart';

class Trafoview extends StatefulWidget {
  const Trafoview({super.key});

  @override
  State<Trafoview> createState() => _TrafoviewState();
}

class _TrafoviewState extends State<Trafoview> {
  String sonucc = "72";
  int _selectedtrafo = 0;
  int secilen = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        margin: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  shadowColor: CupertinoColors.activeBlue,
                  child: CupertinoButton.filled(
                    pressedOpacity: 0.8,
                    minSize: 60,
                    onPressed: () {
                      _selectedtrafo = 0;
                      sonucc = "72";
                      _showDialog(
                        CupertinoPicker(
                          useMagnifier: true,
                          itemExtent: 32,
                          onSelectedItemChanged: (int selecteditem) {
                            _selectedtrafo = selecteditem;
                            sonucc = Hesapla().hesaplama(
                                VerilerKlas().secilecentrafo(_selectedtrafo));
                          },
                          children: List<Widget>.generate(11, (int index) {
                            return Center(
                              child: Text(
                                VerilerKlas().secilecentrafo(index).toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: CupertinoColors.activeBlue),
                              ),
                            );
                          }),
                        ),
                      );
                    },
                    child: Text(
                      VerilerKlas().secilecentrafo(_selectedtrafo).toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Center(
                      child: Text(
                        "AKIM DEĞERİ",
                        style: (TextStyle(
                            color: CupertinoColors.systemRed,
                            fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "$sonucc A",
                        style: (TextStyle(
                            color: CupertinoColors.activeBlue,
                            fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        "TMŞ DEĞERİ",
                        style: (TextStyle(
                            color: CupertinoColors.systemRed,
                            fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        VerilerKlas().secilentms(_selectedtrafo),
                        style: (TextStyle(
                          color: CupertinoColors.activeBlue,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "KABLO KESİTİ",
                style: (TextStyle(
                    color: CupertinoColors.systemRed,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Builder(builder: (context) {
              return Kesitgorsel(
                  "BAKIR",
                  VerilerKlas().secilencukablokesiti(_selectedtrafo),
                  VerilerKlas().secilenbarakesiti(_selectedtrafo),
                  0xFFCD7F32);
            }),
            Builder(builder: (context) {
              return Kesitgorsel(
                  "ALÜMİNYUM",
                  VerilerKlas().secilenalkablokesiti(_selectedtrafo),
                  VerilerKlas().secilenalbarakesiti(_selectedtrafo),
                  0xFFC0C0C0);
            })
          ],
        ),
      ),
    );
  }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 18.0),
        // The Bottom margin is provided to align the popup above the system navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              CupertinoButton(
                  child: Text(
                    "BİTTİ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  }),
              Container(
                  height: 120,
                  padding: const EdgeInsets.only(top: 6.0),
                  // The Bottom margin is provided to align the popup above the system navigation bar.
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  // Provide a background color for the popup.
                  color: CupertinoColors.systemBackground.resolveFrom(context),
                  child: SafeArea(
                    top: false,
                    child: child,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
