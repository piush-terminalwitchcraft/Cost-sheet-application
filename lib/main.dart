// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cost_application/Result.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'package:cost_application/SecondPage.dart';
import 'package:cost_application/ThirdPage.dart';
import 'package:cost_application/firebase_options.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": ((context) => AnimatedSplashScreen(
             nextScreen: HomePageWidget(),
             splash : 'assets/oil.png',
             splashIconSize : 300,
             duration: 500,
             )
          ),
        "/firstpage": ((context) => SecondScreenWidget()),
        "/secondpage": ((context) => ThirdScreenWidget()),
        "/respage": ((context) => Result()),
      },
    );
  }
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  CollectionReference users =
      FirebaseFirestore.instance.collection('CostSheet');

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Text(
                'Please Enter the Loose rate for ${DateFormat('dd/MM/yyyy').format(DateTime.now())} of : ',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 40, 100, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '1- SOYA OIL',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        '2- PALM OIL',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        '''
3- MUSTARD OIL
   EXPELLER
              ''',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        '''
4- KACCHI GHAANI 
   MUSTARD
             ''',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: TextFormField(
                        controller: textController3,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        autofocus: true,
                        obscureText: false,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFD9B3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        // style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),

                    SizedBox(height: 15),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: TextFormField(
                        controller: textController1,
                        textAlign: TextAlign.center,
                        autofocus: true,
                        obscureText: false,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFD9B3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        // style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),

                     SizedBox(height: 15),

                    SizedBox(
                      width: 100,
                      height: 50,
                      child: TextFormField(
                        controller: textController4,
                        textAlign: TextAlign.center,
                        autofocus: true,
                        obscureText: false,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFD9B3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        // style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),

                     SizedBox(height: 15),

                    SizedBox(
                      width: 100,
                      height: 50,
                      child: TextFormField(
                        controller: textController2,
                        textAlign: TextAlign.center,
                        autofocus: true,
                        obscureText: false,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFD9B3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        // style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(250, 50, 20, 0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () async {
                  // print(textController1?.text); // palm
                  // print(textController2?.text); // kg mustard
                  // print(textController3?.text); // soya
                  // print(textController4?.text); // mustard oil
                  await users
                      .doc('VdD1KmsYSvjhVDyx0RYw')
                      .update({
                        'Palm15ltr': double.parse((textController1 == null
                                ? '0'
                                : textController1!.text)) *
                            15 /
                            10,
                        'KGMustard15ltr': double.parse((textController2 == null
                                ? '0'
                                : textController2!.text)) *
                            15 /
                            10,
                        'Soya15ltr': double.parse((textController3 == null
                                ? '0'
                                : textController3!.text)) *
                            15 /
                            10,
                        'EMustard15ltr': double.parse((textController4 == null
                                ? '0'
                                : textController4!.text)) *
                            15 /
                            10,
                      })
                      .then((value) => {print("Data updated")})
                      .catchError((error) => {
                            print(error),
                          });

                  Navigator.of(context).pushNamed('/firstpage');
                },
                label: Container(
                    width: 130,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text('Next ')),
                icon: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
