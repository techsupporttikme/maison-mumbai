import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../order_delivery/order_delivery_widget.dart';
import '../order_pickup/order_pickup_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class OrderOnlineWidget extends StatefulWidget {
  OrderOnlineWidget({
    Key key,
    this.paramenterOne,
  }) : super(key: key);

  final String paramenterOne;

  @override
  _OrderOnlineWidgetState createState() => _OrderOnlineWidgetState();
}

class _OrderOnlineWidgetState extends State<OrderOnlineWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFF060505),
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Image.asset(
              'assets/images/white_logo_transparent_background.png',
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.15,
              fit: BoxFit.fitHeight,
            ),
          ),
          actions: [],
          elevation: 4,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    'assets/images/top-view-vegetable-salad-with-cheese-cucumbers-tomatoes-dark-background.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text(
                        'From our menu, you can expect flavour-packed dishes made from locally sourced ingredients that make your palette sing in delight. A combination of traditional lunch bowls and thalis.',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: OrderPickupWidget(),
                            ),
                          );
                        },
                        text: 'Order Pickup',
                        icon: Icon(
                          Icons.pin_drop,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: 180,
                          height: 50,
                          color: Color(0xFF060505),
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: OrderDeliveryWidget(),
                            ),
                          );
                        },
                        text: 'Order Delivery',
                        icon: Icon(
                          Icons.delivery_dining,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: 180,
                          height: 50,
                          color: Color(0xFF060505),
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
