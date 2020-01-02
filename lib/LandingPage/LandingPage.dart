import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LandingPage extends StatelessWidget {

List<Widget> pageChildren(double width){
  return <Widget>[
    Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          TypewriterAnimatedTextKit(
               text: [
      "Discipline is the best tool",
      "Design first, then code",
      
    ],
    speed: Duration(milliseconds: 200),
    totalRepeatCount: 5,
    pause: Duration(milliseconds:  1000),
    textStyle: TextStyle(
        fontSize: 30.0,
        fontFamily: "Agne",
        color: Colors.white,
    ),
          ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Hello and welcome to the page. This text is expandinng a little longer than it should \nt stetch the view Hello and welcome to the page.\nt stetch the view Hello and welcome to the page ",
              style: TextStyle(fontSize: 18.0,color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)
                )
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: Text(
                "Check it out",
                style: TextStyle(
                  color: Colors.white),
              ),
            ),
            ),
        ],
      ),
    ),
    Image.asset(
      "assets/images/Optimus.png",
      width: width,
      ),
      
  ];
}



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > 800){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width/2),
          );
        }else {
          return Column(
            children:
            pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}

class AboutMeLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class PortfolioLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class ContactMeLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}