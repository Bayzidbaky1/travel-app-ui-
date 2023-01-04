import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:traevl_appui/Pages/post_screen.dart';
import '../widget/bottom_navigationbar.dart';
import '../widget/home_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var category = [
    "Best places",
    "Most visited",
    "Favourites",
    "New Added",
    "Hotels",
    "Restaurants",
  ];

  List image = [
    "assets/images/city1.jpg",
    "assets/images/city2.jpg",
    "assets/images/city3.jpg",
    "assets/images/city4.jpg",
    "assets/images/city5.jpg",
    "assets/images/city6.jpg",
  ];

  List cityName =[
    "Amsterdam",
    "Berlin",
    "Madrid",
    "Rome",
    "London",
    "Paris"
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: HomeAppBar(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 200,
                      child: ListView.builder(
                          itemCount: image.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>PostScreen(),));
                              },
                              child: Container(
                                width: 160,
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(image[index]),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    )),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Icon(
                                        Icons.bookmark_border_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(cityName[index],style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    )),
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        for(int i = 0; i<6; i++)
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color:Colors.black26,
                                blurRadius: 4,
                              )
                            ]
                          ),
                          child: Text(category[i],style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:6,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                  return Padding(
                      padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>PostScreen(),));
                          },
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(image[index]),
                                fit: BoxFit.cover,
                                opacity: 0.7,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("city name ",style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),),
                              Icon(Icons.more_vert,size: 30,),
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.star,size: 20,
                              color: Colors.amber,
                            ),
                            Text("4.5",style: TextStyle(fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),

                  );
                }),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:BtmNavigation(),


    );
  }
}
