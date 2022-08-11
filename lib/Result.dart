import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';

import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  var chk = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  CollectionReference users =
      FirebaseFirestore.instance.collection('CostSheet');
  List<double> rates = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  double Palm15ltr = 0, KGMustard15ltr = 0, Soya15ltr = 0, EMustard15ltr = 0;
  double Palm15ltr_ = 0,
      KGMustard15ltr_ = 0,
      Soya15ltr_ = 0,
      EMustard15ltr_ = 0;
  double Palm15ltrTin = 0,
      KGMustard15ltrTin = 0,
      Soya15ltrTin = 0,
      EMustard15ltrTin = 0;
  double Palm1ltrPouch = 0,
      KGMustard1ltrPouch = 0,
      Soya1ltrPouch = 0,
      EMustard1ltrPouch = 0;
  List<String> place = [
    'Delhi',
    'Haryana',
    'Himachal Pradesh',
    'Jammu And Kashmir',
    'Punjab',
    'Rajasthan',
    'Uttarakhand',
    'Uttar Pradesh',
    'Gujrat',
    'Chhattisgarh',
    'Maharashtra'
  ];

  refreshRates() {
    Palm15ltr =
        Palm15ltr_ + 15 * rates[getidx()] + 116 + 1.65 + 0.7 + 4.72 + 1 + 8 + 2;
    KGMustard15ltr =
        KGMustard15ltr_ + 15 * rates[getidx()] + 111 + 0.7 + 4.13 + 1 + 8 + 2;
    Soya15ltr =
        Soya15ltr_ + 15 * rates[getidx()] + 116 + 1.65 + 0.7 + 4.72 + 1 + 8 + 2;
    EMustard15ltr =
        EMustard15ltr_ + 15 * rates[getidx()] + 111 + 0.7 + 4.13 + 1 + 8 + 2;

    Palm15ltr = Palm15ltr + Palm15ltr * 1.5 / 100;
    KGMustard15ltr = KGMustard15ltr + KGMustard15ltr * 1.5 / 100;
    Soya15ltr = Soya15ltr + Soya15ltr * 1.5 / 100;
    EMustard15ltr = EMustard15ltr + EMustard15ltr * 1.5 / 100;
  }

  @override
  void initState() {
    super.initState();
    users.doc('VdD1KmsYSvjhVDyx0RYw').get().then((data) {
      setState(() {
        rates[0] = data['Delhi'];
        rates[1] = data['Haryana'];
        rates[2] = data['Himachal Pradesh'];
        rates[3] = data['Jammu And Kashmir'];
        rates[4] = data['Punjab'];
        rates[5] = data['Rajasthan'];
        rates[6] = data['Uttarakhand'];
        rates[7] = data['Uttar Pradesh'];
        rates[8] = data['Gujrat'];
        rates[9] = data['Chhattisgarh'];
        rates[10] = data['Maharashtra'];
        Palm15ltr_ = data['Palm15ltr'];
        KGMustard15ltr_ = data['KGMustard15ltr'];
        Soya15ltr_ = data['Soya15ltr'];
        EMustard15ltr_ = data['EMustard15ltr'];

        Palm15ltr = Palm15ltr_ +
            15 * rates[getidx()] +
            116 +
            1.65 +
            0.7 +
            4.72 +
            1 +
            8 +
            2;
        KGMustard15ltr = KGMustard15ltr_ +
            15 * rates[getidx()] +
            111 +
            0.7 +
            4.13 +
            1 +
            8 +
            2;
        Soya15ltr = Soya15ltr_ +
            15 * rates[getidx()] +
            116 +
            1.65 +
            0.7 +
            4.72 +
            1 +
            8 +
            2;
        EMustard15ltr = EMustard15ltr_ +
            15 * rates[getidx()] +
            111 +
            0.7 +
            4.13 +
            1 +
            8 +
            2;

        Palm15ltrTin =
            data['Palm15ltrTin'] + 116 + 1.65 + 0.7 + 4.72 + 1 + 8 + 2;
        KGMustard15ltrTin =
            data['KGMustard15ltrTin'] + 111 + 0.7 + 4.13 + 1 + 8 + 2;
        Soya15ltrTin =
            data['Soya15ltrTin'] + 116 + 1.65 + 0.7 + 4.72 + 1 + 8 + 2;
        EMustard15ltrTin =
            data['EMustard15ltrTin'] + 111 + 0.7 + 4.13 + 1 + 8 + 2;

        Palm1ltrPouch =
            data['Palm1ltrPouch'] + 1.90 + 1.76 + 0.08 + 0.25 + 0.17;
        KGMustard1ltrPouch =
            data['KGMustard1ltrPouch'] + 1.95 + 1.76 + 0.08 + 0.25 + 0.17;
        Soya1ltrPouch =
            data['Soya1ltrPouch'] + 1.90 + 1.76 + 0.08 + 0.25 + 0.17;
        EMustard1ltrPouch =
            data['EMustard1ltrPouch'] + 1.95 + 1.76 + 0.08 + 0.25 + 0.17;

        Palm15ltr += Palm15ltr * 1.5 / 100;
        KGMustard15ltr += KGMustard15ltr * 1.5 / 100;
        Soya15ltr += Soya15ltr * 1.5 / 100;
        EMustard15ltr += EMustard15ltr * 1.5 / 100;
        print(Soya15ltr);

        Palm15ltrTin += Palm15ltrTin * 1.5 / 100;
        KGMustard15ltrTin += KGMustard15ltrTin * 1.5 / 100;
        Soya15ltrTin += Soya15ltrTin * 1.5 / 100;
        EMustard15ltrTin += EMustard15ltrTin * 1.5 / 100;

        Palm1ltrPouch += Palm1ltrPouch * 1.5 / 100;
        KGMustard1ltrPouch += KGMustard1ltrPouch * 1.5 / 100;
        Soya1ltrPouch += Soya1ltrPouch * 1.5 / 100;
        EMustard1ltrPouch += EMustard1ltrPouch * 1.5 / 100;
      });
    }).catchError((err) {
      print(err);
    });
  }

  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Select State",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),
                SwitchListTile(
                  value: chk[0],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(0);
                    })
                  },
                  title: Text(
                    'Delhi',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[1],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(1);
                    })
                  },
                  title: Text(
                    'Haryana',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[2],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(2);
                    })
                  },
                  title: Text(
                    'Himachal Pradesh',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[3],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(3);
                    })
                  },
                  title: Text(
                    'Jammu and Kashmir',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[4],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(4);
                    })
                  },
                  title: Text(
                    'Punjab',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[5],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(5);
                    })
                  },
                  title: Text(
                    'Rajasthan',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[6],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(6);
                    })
                  },
                  title: Text(
                    'Uttarakhand',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[7],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(7);
                    })
                  },
                  title: Text(
                    'Uttar Pradesh',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[8],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(8);
                    })
                  },
                  title: Text(
                    'Gujarat',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[9],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(9);
                    })
                  },
                  title: Text(
                    'Chhattisgarh',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[10],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(10);
                    })
                  },
                  title: Text(
                    'Maharashtra',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                
                Screenshot(
                  controller: screenshotController,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      child: Column(
                        children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Rates on ${DateFormat('dd/MM/yyyy').format(DateTime.now())} For ${place[getidx()]}",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text("Soya Oil", style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "15 kg plain - ${(Soya15ltr).toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "1 ltr pouch - ${Soya1ltrPouch.toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "15 ltr tin - ${Soya15ltrTin.toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text("Palm Oil", style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "15 kg plain - ${Palm15ltr.toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "1 ltr pouch - ${Palm1ltrPouch.toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "15 ltr tin - ${Palm15ltrTin.toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text("Mustard Oil", style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "15 kg plain - ${EMustard15ltr.toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "1 ltr pouch - ${EMustard1ltrPouch.toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "15 ltr tin - ${EMustard15ltrTin.toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text("Kacchhi Ghani Mustard Oil", style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "15 kg plain - ${KGMustard15ltr.toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "1 ltr pouch - ${KGMustard1ltrPouch.toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                              "15 ltr tin - ${KGMustard15ltrTin.toStringAsFixed(2)}"),
                          alignment: Alignment.centerLeft,
                        ),
                      ]),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text(
                    "Take ScreenShot",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                  onPressed: (() {
                    screenshotController
                        .capture(delay: Duration(milliseconds: 10))
                        .then((capturedImage) async {
                      ShowCapturedWidget(context, capturedImage!);
                    }).catchError((onError) {
                      print(onError);
                    });
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setArr(int i) {
    for (int j = 0; j < i; j++) chk[j] = false;
    chk[i] = true;
    for (int j = i + 1; j < 11; j++) chk[j] = false;
    refreshRates();
  }

  int getidx() {
    for (int i = 0; i < 11; i++) {
      if (chk[i]) return i;
    }
    return -1;
  }

  Future<dynamic> ShowCapturedWidget(
      BuildContext context, Uint8List capturedImage) {
    return showDialog(
      useSafeArea: false,
      context: context,
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text("screenshot"),
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () async {
                final tempDir = await getTemporaryDirectory();
                final path = '${tempDir.path}/image.jpg';
                File(path).writeAsBytesSync(capturedImage);
                Share.shareFiles([path], text: "Screenshot");
              },
            )
          ],
        ),
        body: Center(
            child: capturedImage != null
                ? Image.memory(capturedImage)
                : Container()),
      ),
    );
  }
}
