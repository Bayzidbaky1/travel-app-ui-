import 'package:flutter/material.dart';

import 'Pages/home_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enjoy",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "The World!",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "simply dummy text of the printing and typesetting industry. Lorem Ipsum "
                  "has been the industry's standard dummy text ever since the 1500s, "
                  "when an unknown",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                      letterSpacing: 1.2),
                ),
                SizedBox(height: 30,),

                InkWell(
                  onTap: (){
                 Navigator.push(context, MaterialPageRoute(
                     builder:(_)=>HomePage()));
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 20,
                    ),


                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
