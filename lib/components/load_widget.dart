import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadWidget extends StatefulWidget {
  LoadWidget({Key key}) : super(key: key);

  @override
  _LoadWidgetState createState() => _LoadWidgetState();
}

class _LoadWidgetState extends State<LoadWidget> {
  @override
  Widget build(BuildContext context) {
    return FlutterFlowWebView(
      url: 'https://maisonmumbai.com/',
      bypass: true,
      verticalScroll: true,
      horizontalScroll: true,
    );
  }
}
