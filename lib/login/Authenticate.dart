import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/home_screen.dart';
import 'package:grocery_app/login/Option.dart';
import 'package:grocery_app/model/user.dart';
import 'package:provider/provider.dart';
class Authenticate {
  late UserProvider userProvider;
  handleAuth()
  {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot){
          if(snapshot.hasData) {
            print("you already have user");
            return HomeScreen();
          }
          else
            print("Uh oh you need to login");
          return option();
        }
    );
  }
}

