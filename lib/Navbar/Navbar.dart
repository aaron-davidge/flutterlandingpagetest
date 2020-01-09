import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          //return Tablet size
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: BoxConstraints(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              "assets/images/A.png",
              width: 60.0,
            ),
            //Text(
            //"Aaron Davidge",
            //style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 35
            //),
            //),
            Row(
              children: <Widget>[
                MaterialButton(
                  color: Color.fromRGBO(229, 195, 84, 1),
                  splashColor: Color.fromRGBO(146, 57, 54, 1),
                  hoverColor: Color.fromRGBO(52, 79, 138, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Home');
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Color.fromRGBO(229, 195, 84, 1),
                  splashColor: Color.fromRGBO(146, 57, 54, 1),
                  hoverColor: Color.fromRGBO(52, 79, 138, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/AboutMe');
                  },
                  child: Text(
                    "About Me",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Color.fromRGBO(229, 195, 84, 1),
                  splashColor: Color.fromRGBO(146, 57, 54, 1),
                  hoverColor: Color.fromRGBO(52, 79, 138, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Portfolio');
                  },
                  child: Text(
                    "Portfolio",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Color.fromRGBO(229, 195, 84, 1),
                  splashColor: Color.fromRGBO(146, 57, 54, 1),
                  hoverColor: Color.fromRGBO(52, 79, 138, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/ContactMe');
                  },
                  child: Text(
                    "Contact Me",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Color.fromRGBO(52, 79, 138, 1),
                  splashColor: Color.fromRGBO(146, 57, 54, 1),
                  hoverColor: Color.fromRGBO(229, 195, 84, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/A.png",
              width: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/Home');
                      }),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                      child: Text(
                        "About Us",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/AboutMe');
                      }),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                      child: Text(
                        "Portfolio",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/Portfolio');
                      }),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
