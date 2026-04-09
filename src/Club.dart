import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club_verse/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class club extends StatefulWidget {
  const club({super.key});

  @override
  State<club> createState() => _clubState();
}

class _clubState extends State<club> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Spacer(),
            TabsWeb("Club Verse", '/'),
            Spacer(),
            TabsWeb("Contact us",'/contact'),
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
              child: TabsWeb("Login",'/'),
            ),
          ],
        ),
      ),
      body:  Column(
        children: [
          Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
          Anime(imagepath: "assests/club.jpg",
            fit: BoxFit.contain,
            text: "Join our clubs",
            reverse: false,
            height: 300.0,
            width: 600.0,
            wdsize: 40.0,
          ),
          Expanded(
              child:StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('articles').snapshots(),
                builder: (context,snapshot){
                  children: [
                    Divider(
                        thickness: 1.0,
                        color: Colors.black
                    ),
                    SizedBox(height: 162.0,),
                  ];
                  if(snapshot.hasData) {
                    return ListView.builder(padding: const EdgeInsets.only(top: 36.0),
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (BuildContext context, int index) {
                          DocumentSnapshot documentSnapshot = snapshot.data!.docs[index];
                          return Blogpost(title: documentSnapshot['title'],
                            body: documentSnapshot['body'],);
                        }
                    );
                  }else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
          )
        ]
      )
      );
  }
}

class Blogpost extends StatefulWidget {
  final title;
  final body;
  const Blogpost({super.key,@required this.title,@required this.body});

  @override
  State<Blogpost> createState() => _BlogpostState();
}

class _BlogpostState extends State<Blogpost> {
  bool expand=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 30.0,bottom: 30.0),
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border.all(
                  style: BorderStyle.solid,
                  width: 1.0,
                  color: Colors.black
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: AbelCustom(text: widget.title, size: 25.0,color: Colors.black),
                  ),
                  IconButton(
                    onPressed: (){
                      setState(() {
                        expand=!expand;
                      });
                    },
                    icon: Icon(Icons.arrow_drop_down_circle_outlined),
                  )
                ],
              ),
              SizedBox(height: 7.0,),
              Text(
                widget.body,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
                maxLines: expand==true?null:3,
                overflow: expand==true?TextOverflow.visible:TextOverflow.ellipsis,
              ),

            ],
          ),
        )
    );
  }
}
