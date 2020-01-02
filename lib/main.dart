import 'package:flutter/material.dart';
import 'package:flutter_landing_page/LandingPage/LandingPage.dart';
import 'package:flutter_landing_page/Navbar/Navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aaron Davidge | Software Engineer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "GreatVibes"
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/Home': (context) => Home(),
        '/AboutMe': (context) => AboutMe(),
        '/Portfolio': (context) => Portfolio(),
        '/ContactMe': (context) => ContactMe(),
      },
    );
  }
}

class  MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue, Colors.green, Colors.yellow, Colors.red, Colors.blue
              ],
              stops: [0.0, 0.25, 0.5, 0.75, 1]
          ),
        ),
           child: SingleChildScrollView(
              child: Column(
             children: <Widget>[
              Navbar(),Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                child: LandingPage(),
              ),
          ],
        ),
           ),
      ),
    );
  }
}

class  Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue, Colors.green, Colors.yellow, Colors.red, Colors.blue
              ],
              stops: [0.0, 0.25, 0.5, 0.75, 1]
          ),
        ),
           child: SingleChildScrollView(
              child: Column(
             children: <Widget>[
              Navbar(),Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                child: LandingPage(),
              ),
          ],
        ),
           ),
      ),
    );
  }
}

class  AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue, Colors.green, Colors.yellow, Colors.blue
              ],
              
          ),
        ),
           child: SingleChildScrollView(
              child: Column(
             children: <Widget>[
              Navbar(),Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                child: AboutMeLanding(),
              ),
          ],
        ),
           ),
      ),
    );
  }
}

class  Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue, Colors.green, Colors.blue
              ],  
          ),
        ),
           child: SingleChildScrollView(
              child: Column(
             children: <Widget>[
              Navbar(),Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                child: PortfolioLanding(),
              ),
          ],
        ),
           ),
      ),
    );
  }
}

class  ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue, Colors.blue
              ],  
          ),
        ),
           child: SingleChildScrollView(
              child: Column(
             children: <Widget>[
              Navbar(),Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                child: ContactMeLanding(),
              ),
          ],
        ),
           ),
      ),
    );
  }
}