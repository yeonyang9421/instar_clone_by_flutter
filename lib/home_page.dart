import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final FirebaseUser user;

  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram Clone',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Instagram에 오신 것을 환영합니다.',
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Text(
                '사진과 동영상 보려면 팔로우하세요',
                style: TextStyle(fontSize: 16.0),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              SizedBox(
                width: 260.0,
                child: Card(
                  elevation: 4.0,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(8.0)),
                      SizedBox(
                        width: 100.0,
                        height: 100.0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(user.photoUrl),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                      ),
                      Text(
                        user.email,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(user.displayName, style: TextStyle(fontSize: 12.0)),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network(
                                'http://imyeon.woobi.co.kr/dreammaru/ex1_img.png',
                                fit: BoxFit.cover),
                          ),
                          Padding(padding: EdgeInsets.all(8.0)),
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network(
                                'http://imyeon.woobi.co.kr/dreammaru/ex1_img.png',
                                fit: BoxFit.cover),
                          ),
                          Padding(padding: EdgeInsets.all(8.0)),
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network(
                                'http://imyeon.woobi.co.kr/dreammaru/ex1_img.png',
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Text('FaceBook 친구'),
                      Padding(padding: EdgeInsets.all(8.0)),
                      RaisedButton(
                        child: Text('팔로우'),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
