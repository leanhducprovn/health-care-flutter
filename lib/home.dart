import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
	var _url = 'http://localhost:3000/auth';
  final _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
				backgroundColor: HexColor("#f56c86"),
				title: Text("Health Care"),
			),
      body: Column(
        children: [
          Expanded(
            child: WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: _url))
          ],
      )
    );
  }
}
