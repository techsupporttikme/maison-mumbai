import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPickupWidget extends StatefulWidget {
  OrderPickupWidget({Key key}) : super(key: key);

  @override
  _OrderPickupWidgetState createState() => _OrderPickupWidgetState();
}

class _OrderPickupWidgetState extends State<OrderPickupWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF060505),
        automaticallyImplyLeading: true,
        title: Text(
          'Order Pickup',
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
      body: FlutterFlowWebView(
        url: 'https://order.tikme.co/maisonmumbai',
        bypass: false,
        verticalScroll: false,
        horizontalScroll: false,
      ),
    );
  }
}
