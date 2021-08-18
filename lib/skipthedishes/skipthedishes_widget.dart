import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkipthedishesWidget extends StatefulWidget {
  SkipthedishesWidget({Key key}) : super(key: key);

  @override
  _SkipthedishesWidgetState createState() => _SkipthedishesWidgetState();
}

class _SkipthedishesWidgetState extends State<SkipthedishesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF060505),
        automaticallyImplyLeading: true,
        title: Text(
          'Order Delivery',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
            color: Color(0xFFFFFAFA),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: FlutterFlowWebView(
          url: 'https://www.skipthedishes.com/maison-mumbai',
          bypass: true,
          verticalScroll: false,
          horizontalScroll: false,
        ),
      ),
    );
  }
}
