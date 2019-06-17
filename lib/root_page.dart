import 'package:flutter/material.dart';
import 'package:instar_clone_by_flutter/login_page.dart';
import 'package:instar_clone_by_flutter/tab_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.hasData){
          return TabPage(snapshot.data);
        }else{
          return LoginPage();
        }
      },
    );
  }
}


