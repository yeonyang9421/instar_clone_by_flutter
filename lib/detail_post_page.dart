import 'package:flutter/material.dart';

class DetailPostPage extends StatefulWidget {
  final dynamic document;
  DetailPostPage(this.document);
  @override
  _DetailPostPageState createState() => _DetailPostPageState();
}

class _DetailPostPageState extends State<DetailPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('둘러보기'),
      ),
      body: _buildeBody(),
    );
  }

  Widget _buildeBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage(widget.document['userPhotoUrl']),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.document['email'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(widget.document['displayName'])
                      ],
                    ),
                  )
                ],
              ),
            ),
            Hero(
                tag: widget.document['photoUrl'],
                child: Image.network(widget.document['photoUrl'])),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.document['content']),
            ),
          ],
        ),
      ),
    );
  }
}
