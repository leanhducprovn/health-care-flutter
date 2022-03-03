import 'dart:async';
import 'package:flutter/material.dart';
import 'web_view_container.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:hexcolor/hexcolor.dart';


class Home extends StatelessWidget {
  // final _links = ['http://localhost:3000/auth'];
	// final Completer<WebViewController> _controller = Completer<WebViewController>();
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

  Widget _urlButton(BuildContext context, String url) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: FlatButton(
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
        child: Text(url),
        onPressed: () => _handleURLButtonPress(context, url),
      )
		);
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(
			context,
			MaterialPageRoute(
				builder: (context) => WebViewContainer(url)
			)
			);
  }
}
