import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget {
  const PostBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: ListView(
        primary: false,
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "City name,Country",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 25,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "It is a long established fact that a reader will be "
                      "distracted by the readable content of a page when "
                      "looking at its layout. The point of using Lorem Ipsum "
                      "is that it has a more-or-less normal distribution of "
                      "letters, as opposed to using 'Content here, content "
                      "here', making it look like readable English. ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 5),
                    child: Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child:Image.asset(
                          "assets/images/city5.jpg",
                          fit: BoxFit.cover,
                          width: 120,
                          height: 90,
                        ) ,
                      ),
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 5),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child:Image.asset(
                            "assets/images/city4.jpg",
                            fit: BoxFit.cover,
                            width: 120,
                            height: 90,
                          ) ,
                        ),
                      ),
                    ),
                    Expanded(child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 90,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/images/city6.jpg"),
                          fit: BoxFit.cover,
                          opacity: 0.4,
                        )
                      ),
                      child: Text("10+",style: TextStyle(color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w600),),
                    ))
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Icon(Icons.bookmark_outline,size: 40,),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.redAccent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              )
                            ]
                          ),
                        child: Text("Book Now",style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
