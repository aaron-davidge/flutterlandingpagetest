import 'package:flutter/material.dart';
import 'package:flutter_landing_page/LandingPage/LandingPage.dart';
import 'package:flutter_landing_page/Navbar/Navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transformers | Optimus Prime',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "GreatVibes"
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/Home': (context) => MyHomePage(),
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
              Color.fromRGBO(52, 79, 138, 1), Color.fromRGBO(146, 57, 54, 1),   Color.fromRGBO(201, 204, 207, 1)
              ],
              
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
              Color.fromRGBO(52, 79, 138, 1), Color.fromRGBO(146, 57, 54, 1),   Color.fromRGBO(201, 204, 207, 1)
              ],
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
              Color.fromRGBO(52, 79, 138, 1), Color.fromRGBO(146, 57, 54, 1),   Color.fromRGBO(201, 204, 207, 1)
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
              Color.fromRGBO(52, 79, 138, 1), Color.fromRGBO(146, 57, 54, 1),   Color.fromRGBO(201, 204, 207, 1)
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
            colors:[
              Color.fromRGBO(52, 79, 138, 1), Color.fromRGBO(146, 57, 54, 1),   Color.fromRGBO(201, 204, 207, 1),
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