// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, no_logic_in_create_state, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Kesitgorsel extends StatelessWidget {
  final String baslik;
  final String kablokesit;
  final String barakesit;
  final int renk;
  const Kesitgorsel(this.baslik, this.kablokesit, this.barakesit, this.renk,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Card(
      color: Color(renk),
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Text(
              baslik,
              style: (TextStyle(
                  color: CupertinoColors.activeBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
            ),
          ),
          Divider(
            color: CupertinoColors.activeBlue,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "KABLO",
                    style: (TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                  ),
                ),
                Padding(padding: EdgeInsets.all(0.0)),
                Center(
                  child: Text(
                    "BARA",
                    style: (TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text(
                  kablokesit,
                  style: (TextStyle(
                      color: CupertinoColors.activeBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
                ),
              ),
              Padding(padding: EdgeInsets.all(30.0)),
              Center(
                child: Text(
                  barakesit,
                  style: (TextStyle(
                      color: CupertinoColors.activeBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
