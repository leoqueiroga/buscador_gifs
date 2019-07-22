import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  final Map _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData["title"]),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share(_gifData["images"]['fixed_height']["url"]);
            },
          )
        ],
      ),
      backgroundColor: Colors.black,
      
      body: Center(
        child: GestureDetector(
          child: Image.network(_gifData["images"]['fixed_height']["url"]),
          onLongPress: () {
              Share.share(_gifData["images"]['fixed_height']["url"]);
            },
        ),
      ),
    );
  }
}