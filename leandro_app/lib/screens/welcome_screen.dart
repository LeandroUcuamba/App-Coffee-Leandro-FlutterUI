import 'package:flutter/material.dart';
import 'package:leandro_app/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("images/bg.png"),
              fit: BoxFit.cover,
              opacity: 0.6,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Leandro Coffee",
              style: TextStyle(
                fontFamily: "Trattatello, fantasy",
                fontSize: 46,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                Text("Senta o melhor café de Angola!",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    )),
                SizedBox(height: 80),
                InkWell(
                  splashColor: Colors.black,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  },
                  child: Ink(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      decoration: BoxDecoration(
                        color: Color(0xFFE57734),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Conheça",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
