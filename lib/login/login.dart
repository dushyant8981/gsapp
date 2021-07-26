import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/login/otp.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  final _inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                controller: _inputController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(Icons.call),
                  prefixText: "+91 ",
                  labelText: "Mobile No.",
                  counterText: "",
                  labelStyle: TextStyle(fontSize: 18),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              ),
            ),
            SizedBox(height: 40,),
            ButtonTheme(
              minWidth: 300,
              height: 35,
              buttonColor: Colors.deepOrangeAccent,
              child: RaisedButton(
                onPressed: () async{
                  String Num = "+91" + _inputController.text.trim();
                  print(Num);
                  if (Num.length == 13) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => otpscreen(
                          Num: Num,
                        ),
                      ),
                    );
                  }
                  //GOTO otp screen
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> otpscreen()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text('Send OTP',
                style: TextStyle(
                  color: Colors.white,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
