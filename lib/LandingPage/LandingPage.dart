import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              
                          child: SizedBox(
                width: 700.0,
                height: 300.0,
                child: TypewriterAnimatedTextKit(
                  
                  text: [
                    "I am Optimus Prime, leader of the autobots",
                    "Freedom is the right of all sentient beings.",
                    "Earth, birthplace of the human race, a species much like our own, capable of great compation, and great violence. For in our quest to protect the humans, a deeper revelation dawns, our worlds have met before.",
                  ],
                  speed: Duration(milliseconds: 200),
                  totalRepeatCount: 5,
                  pause: Duration(milliseconds: 1000),
                  textStyle: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Agne",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            MaterialButton(
              color: Color.fromRGBO(229, 195, 84, 1),
              splashColor: Color.fromRGBO(52, 79, 138, 1),
              hoverColor: Color.fromRGBO(52, 79, 138, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 30.0),
                child: Text(
                  "Check it out",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  padding: EdgeInsets.all(8.0),
                  hoverColor: Colors.white,
                  textColor: Colors.white,
                  splashColor: Color.fromRGBO(241, 0, 14, 10),
                  elevation: 8.0,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/001-youtube.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ),
                  // ),
                  onPressed: () {
                    print('Tapped');
                  },
                ),
                MaterialButton(
                  padding: EdgeInsets.all(8.0),
                  hoverColor: Colors.white,
                  textColor: Colors.white,
                  splashColor: Color.fromRGBO(100, 150, 229, 10),
                  elevation: 8.0,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/008-twitter.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ),
                  // ),
                  onPressed: () {
                    print('Tapped');
                  },
                ),
                MaterialButton(
                  padding: EdgeInsets.all(8.0),
                  hoverColor: Colors.white,
                  textColor: Colors.white,
                  splashColor: Color.fromRGBO(99, 0, 74, 10),
                  elevation: 8.0,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/029-instagram.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ),
                  // ),
                  onPressed: () {
                    print('Tapped');
                  },
                ),
                MaterialButton(
                  padding: EdgeInsets.all(8.0),
                  hoverColor: Colors.white,
                  textColor: Colors.white,
                  splashColor: Color.fromRGBO(55, 69, 129, 10),
                  elevation: 8.0,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/036-facebook.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ),
                  // ),
                  onPressed: () {
                    print('Tapped');
                  },
                )
              ],
            ),
          ],
        ),
      ),
      Column(
        children: <Widget>[
          Image.asset(
            "assets/images/Optimus.png",
            width: width,
            height: 700.0,
          ),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}

class AboutMeLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PortfolioLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ContactMeLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
