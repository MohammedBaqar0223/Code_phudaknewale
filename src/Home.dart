import 'package:club_verse/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Spacer(),
            TabsWeb("Club Verse", '/'),
            Spacer(),
            TabsWeb("Clubs",'/try'),
            Spacer(),
            TabsWeb("Contact us", '/contact'),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                )
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 2.0
              ),
              child: TabsWeb("Login",'/login'),
            ),
          ],
        ),
        centerTitle: true,
      ),

      body: ListView(
        children: [
          Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsetsGeometry.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Sansbold("Your College Club Hub", 55.0),
                        )
                    ),
                    sans("Discover clubs, join communities and track your participation. ", 20.0),
                    sans("Everything you need to make the most of your campus life.", 20.0),
                    SizedBox(height: 20.0),Container(
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          )
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 2.0
                      ),
                      child: TabsWeb("Explore Clubs",'/club'),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    "assests/club.jpg",
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          ),
          Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
          SizedBox(height: 165.0),
          Container(
            height: MediaQuery.of(context).size.height-252,
            child: Column(
              children: [
                Sansbold("Everything you need!!", 30.0, color: Colors.black),
                SizedBox(height: 100.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Anime(
                      imagepath: "assests/join.png",
                      fit: BoxFit.contain,
                      text: "Join Clubs",
                      reverse: false,
                      wdsize: 15.0,
                      width: 350.0,
                    ),
                    Anime(
                      imagepath: "assests/track.png",
                      fit: BoxFit.contain,
                      text: "Track the events",
                      reverse: true,
                      wdsize: 15.0,
                      width: 350.0,
                    ),
                    Anime(
                      imagepath: "assests/earn.png",
                      fit: BoxFit.contain,
                      text: "Earn credits",
                      reverse: false,
                      wdsize: 15.0,
                      width: 350.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
          SizedBox(height: 140.0,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Anime(
                    imagepath: "assests/contact.jpg",
                    fit: BoxFit.contain,
                    text: "For further enquiry about the clubs or events or if you want to join any of the clubs",
                    reverse: false,
                    wdsize: 15.0,
                  ),
                ],
              ),
              SizedBox(height: 50.0,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(30.0)
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20.0
                ),
                child: TabsWeb("Contact us",'/contact'),
              ),
            ]
          ),
          SizedBox(height: 162.0,),
          Divider(
            thickness: 1.0,
            color: Colors.black
          ),
          SizedBox(height: 165.0,),
          Container(
            height: MediaQuery.of(context).size.height-452,
            color: Colors.tealAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sansbold("Ready to get started", 35.0),
                sans("Join the clubs today and discover the vibrant community waiting for you", 15.0),
                SizedBox(height: 25.0,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      )
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 2.0
                  ),
                  child: TabsWeb("Join Us",'/club'),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
