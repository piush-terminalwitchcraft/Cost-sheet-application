import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SecondScreenWidget extends StatefulWidget {
  // const MyRecord(this.recordName);
  const SecondScreenWidget({Key? key}) : super(key: key);

  @override
  _SecondScreenWidgetState createState() => _SecondScreenWidgetState();
}

class _SecondScreenWidgetState extends State<SecondScreenWidget> {

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
    users.doc('VdD1KmsYSvjhVDyx0RYw').get().then((data) => {
      textController1?.text = data['Delhi'].toString(),
      textController2?.text = data['Haryana'].toString(),
      textController3?.text = data['Himachal Pradesh'].toString(),
      textController4?.text = data['Jammu And Kashmir'].toString(),
      textController5?.text = data['Punjab'].toString(),
      textController6?.text = data['Rajasthan'].toString(),
      textController7?.text = data['Uttarakhand'].toString(),
      textController8?.text = data['Uttar Pradesh'].toString(),
      textController9?.text = data['Gujrat'].toString(),
      textController10?.text = data['Chhattisgarh'].toString(),
      textController11?.text = data['Maharashtra'].toString(),
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
                        'Please confirm the freight charges for ${DateFormat('dd/MM/yyyy').format(DateTime.now())} of',
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
                          'Delhi',
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
                          'Jammu and kashmir',
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
                          'Uttar Pradesh',
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
                          'Gujarat',
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
                          'Chhatisgarh',
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
                          'Maharashtra',
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
                          'Delhi': double.parse((textController1 == null ? '0': textController1!.text)),
                          'Haryana': double.parse((textController2 == null ? '0': textController2!.text)),
                          'Himachal Pradesh': double.parse((textController3 == null ? '0': textController3!.text)),
                          'Jammu And Kashmir': double.parse((textController4 == null ? '0': textController4!.text)),
                          'Punjab': double.parse((textController5 == null ? '0': textController5!.text)),
                          'Rajasthan': double.parse((textController6 == null ? '0': textController6!.text)),
                          'Uttarakhand': double.parse((textController7 == null ? '0': textController7!.text)),
                          'Uttar Pradesh': double.parse((textController8 == null ? '0': textController8!.text)),
                          'Gujrat': double.parse((textController9 == null ? '0': textController9!.text)),
                          'Chhattisgarh': double.parse((textController10 == null ? '0': textController10!.text)),
                          'Maharashtra': double.parse((textController11 == null ? '0': textController11!.text)),
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