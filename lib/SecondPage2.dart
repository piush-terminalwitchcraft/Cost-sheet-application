import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SecondScreenWidget2 extends StatefulWidget {
  // const MyRecord(this.recordName);
  const SecondScreenWidget2({Key? key}) : super(key: key);

  @override
  _SecondScreenWidgetState2 createState() => _SecondScreenWidgetState2();
}

class _SecondScreenWidgetState2 extends State<SecondScreenWidget2> {

  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  TextEditingController? textController5;
  TextEditingController? textController6;
  TextEditingController? textController7;
  TextEditingController? textController8;
  TextEditingController? textController9;
  TextEditingController? textController10;
  TextEditingController? textController11;
  TextEditingController? textController12;
  TextEditingController? textController13;
  TextEditingController? textController14;
  TextEditingController? textController15;
  TextEditingController? textController16;
  TextEditingController? textController17;
  CollectionReference users = FirebaseFirestore.instance.collection('CostSheet');

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
    textController7 = TextEditingController();
    textController8 = TextEditingController();
    textController9 = TextEditingController();
    textController10 = TextEditingController();
    textController11 = TextEditingController();
    textController12 = TextEditingController();
    textController13 = TextEditingController();
    textController14 = TextEditingController();
    textController15 = TextEditingController();
    textController16 = TextEditingController();
    textController17 = TextEditingController();
    users.doc('VdD1KmsYSvjhVDyx0RYw').get().then((data) => {
      textController1?.text = data['StateUPWestGandhidharm'].toString(),
      textController2?.text = data['StateUPEastGandhidharm'].toString(),
      textController3?.text = data['StateUttarakhandGandhidharm'].toString(),
      textController4?.text = data['StateHaryanaGandhidharm'].toString(),
      textController5?.text = data['StatePunjabGandhidharm'].toString(),
      textController6?.text = data['StateHimachalPradeshGandhidharm'].toString(),
      textController7?.text = data['StateJammuKashmirGandhidharm'].toString(),
      textController8?.text = data['StateRajasthanGandhidharm'].toString(),
      textController9?.text = data['StateGujratGandhidharm'].toString(),
      textController10?.text = data['StateMadhyaPradeshGandhidharm'].toString(),
      textController11?.text = data['StateChattisgarhGandhidharm'].toString(),
      textController12?.text = data['StateOdishaGandhidharm'].toString(),
      textController13?.text = data['StateJharkhandGandhidharm'].toString(),
      textController14?.text = data['StateBiharGandhidharm'].toString(),
      textController15?.text = data['StateWestBengalGandhidharm'].toString(),
      textController16?.text = data['StateAssamGandhidharm'].toString(),
      textController17?.text = data['StateNewDelhiGandhidharm'].toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    

    return SafeArea(
      child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        'Please confirm the freight charges for Gandhidharm ${DateFormat('dd/MM/yyyy').format(DateTime.now())} of',
                        style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                      ),
                    ),
                 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'UP West',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController1,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'UP East',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController2,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Uttarakhand',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController3,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Haryana',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController4,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Punjab',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController5,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Himachal Pradesh',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController6,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jammu Kashmir',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController7,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rajasthan',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController8,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gujrat',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController9,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Madhya Pradesh',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController10,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Chattisgarh',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController11,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Odisha ',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController12,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jharkhand',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController13,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bihar',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController14,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'WestBengal',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController15,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Assam',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController16,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Delhi',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                          style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                        ),
                        Container(
                          width: 130,
                          height: 60,
                          child: TextFormField(
                          controller: textController17,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Cost ',
                            // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 25, 252, 157),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        ),
                      ],
                    ), 
                   Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton.icon(
                      style : ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () async{
                        await users.doc('VdD1KmsYSvjhVDyx0RYw').update({
                          'StateUPWestGandhidharm': double.parse((textController1 == null ? '0': textController1!.text)),
                          'StateUPEastGandhidharm': double.parse((textController2 == null ? '0': textController2!.text)),
                          'StateUttarakhandGandhidharm': double.parse((textController3 == null ? '0': textController3!.text)),
                          'StateHaryanaGandhidharm': double.parse((textController4 == null ? '0': textController4!.text)),
                          'StatePunjabGandhidharm': double.parse((textController5 == null ? '0': textController5!.text)),
                          'StateHimachalPradeshGandhidharm': double.parse((textController6 == null ? '0': textController6!.text)),
                          'StateJammuKashmirGandhidharm': double.parse((textController7 == null ? '0': textController7!.text)),
                          'StateRajasthanGandhidharm': double.parse((textController8 == null ? '0': textController8!.text)),
                          'StateGujratGandhidharm': double.parse((textController9 == null ? '0': textController9!.text)),
                          'StateMadhyaPradeshGandhidharm': double.parse((textController10 == null ? '0': textController10!.text)),
                          'StateChattisgarhGandhidharm': double.parse((textController11 == null ? '0': textController11!.text)),
                          'StateOdishaGandhidharm': double.parse((textController12 == null ? '0': textController12!.text)),
                          'StateJharkhandGandhidharm': double.parse((textController13 == null ? '0': textController13!.text)),
                          'StateBiharGandhidharm': double.parse((textController14 == null ? '0': textController14!.text)),
                          'StateWestBengalGandhidharm': double.parse((textController15 == null ? '0': textController15!.text)),
                          'StateAssamGandhidharm': double.parse((textController16 == null ? '0': textController16!.text)),
                          'StateNewDelhiGandhidharm': double.parse((textController17 == null ? '0': textController17!.text)),
                        }).then((value) => {
                          print("Data updated")
                        }).catchError((error)=>{
                          print(error),
                        });
                        Navigator.pushNamed(context, '/secondpage');
                      }, 
                      label: Text("Submit"),
                      icon: Icon(Icons.send),
                      
                      )
                    ) 
                   
                ],
                    
                ),
              ),
            ),
          ),
    );
  }
}