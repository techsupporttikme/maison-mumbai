import 'package:flutter/material.dart';
import 'package:maison_mumbai/home/home_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'home/home_widget.dart';
import 'order_online/order_online_widget.dart';
import 'contact/contact_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maison Mumbai',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NavBarPage(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Home';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Home': HomeWidget(),
      'OrderOnline': OrderOnlineWidget(),
      'Contact': ContactWidget(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF9E9E9E),
              size: 25,
            ),
            activeIcon: Icon(
              Icons.home,
              color: FlutterFlowTheme.primaryColor,
              size: 35,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_sharp,
              color: Color(0xFF9E9E9E),
              size: 25,
            ),
            activeIcon: Icon(
              Icons.restaurant_sharp,
              color: FlutterFlowTheme.primaryColor,
              size: 35,
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone_sharp,
              color: Color(0xFF9E9E9E),
              size: 25,
            ),
            activeIcon: Icon(
              Icons.phone_sharp,
              color: FlutterFlowTheme.primaryColor,
              size: 35,
            ),
            label: 'Contact',
          )
        ],
        backgroundColor: Colors.white,
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        selectedItemColor: Color(0xFF050505),
        unselectedItemColor: Color(0xFF323131),
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
