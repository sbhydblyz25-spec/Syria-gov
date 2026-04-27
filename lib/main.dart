import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Tajawal'),
      home: SplashScreen(),
    ));

const Color syriaGreen = Color(0xFF054239);
const Color syriaGold = Color(0xFFB9A779);

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: syriaGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shield, size: 100, color: syriaGold),
            SizedBox(height: 20),
            Text("Syria Gov", style: TextStyle(color: syriaGold, fontSize: 35, fontWeight: FontWeight.bold)),
            Text("الجمهورية العربية السورية", style: TextStyle(color: Colors.white70, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: syriaGreen,
        title: Text("بوابة الخدمات الإلكترونية", style: TextStyle(color: syriaGold)),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: [
          _card("قيد نفوس", Icons.badge),
          _card("لا محكوم", Icons.gavel),
          _card("محفظتي", Icons.wallet),
          _card("الإشعارات", Icons.notifications),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(15),
        height: 65,
        decoration: BoxDecoration(color: syriaGreen, borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.settings, color: Colors.white70),
            Icon(Icons.home, color: syriaGold, size: 30),
            Icon(Icons.person, color: Colors.white70),
          ],
        ),
      ),
    );
  }

  Widget _card(String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: syriaGold.withOpacity(0.5)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 45, color: syriaGreen),
          SizedBox(height: 10),
          Text(title, style: TextStyle(color: syriaGreen, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
