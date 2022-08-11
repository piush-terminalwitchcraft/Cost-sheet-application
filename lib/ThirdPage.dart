import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreenWidget extends StatefulWidget {
  const ThirdScreenWidget({Key? key}) : super(key: key);

  @override
  _ThirdScreenWidgetState createState() => _ThirdScreenWidgetState();
}

class _ThirdScreenWidgetState extends State<ThirdScreenWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  CollectionReference users = FirebaseFirestore.instance.collection('CostSheet');

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    users.doc('VdD1KmsYSvjhVDyx0RYw').get().then((data) => {
      textController?.text = data['DiscSoya'].toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.86, -0.77),
                child: Text(
                  'Discount for today is (%) : ',
                  style: TextStyle(
                        fontFamily: 'Roboto',
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.32, -0.89),
                child: Text(
                  'Please Add the Discounts as applicable',
                  style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.7, -0.8),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(240, 0, 20, 0),
                  child: TextFormField(
                    controller: textController,
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
              ),
              Align(
                alignment: AlignmentDirectional(0.74, 0.83),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(220, 0, 20, 0),
                  child: ElevatedButton.icon(
                    label: Text("Submit"),
                    style : ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    onPressed: ()async{
                      await users.doc('VdD1KmsYSvjhVDyx0RYw').update({
                        'DiscSoya': double.parse((textController == null ? '0': textController!.text)),
                        'DiscPalm': double.parse((textController == null ? '0': textController!.text)),
                        'DiscKGMustard': double.parse((textController == null ? '0': textController!.text)),
                        'DiscEMustard': double.parse((textController == null ? '0': textController!.text)),
                      }).then((value) => {
                        print("Data updated")
                      }).catchError((error)=>{
                        print(error),
                      });
                      Navigator.pushNamed(context, '/respage');
                    },
                  icon: Icon(Icons.send),
                  )
                  ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
