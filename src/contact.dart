import 'package:club_verse/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailIdController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final formkey = GlobalKey<FormState>();
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
            Sansbold("Club verse", 20.0),
            Spacer(),
            TabsWeb("Clubs",'/club'),
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
        body: ListView(
      children:[
        Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(height: 30.0),
              Sansbold("Contact us", 30.0,color: Colors.black,),
              SizedBox(height:20.0),
              Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Textform(one: "First Name"
                          ,two: "Enter first name"
                          ,mx:1
                          ,width: 350.0
                          ,controller: _firstnameController
                          ,validator: (text){
                            if(text.toString().isEmpty){
                              return "Please enter your first name";
                            }
                          },
                        ),
                        Textform(one: "Second Name"
                          ,two: "Enter second name"
                          ,mx:1
                          ,width: 350.0
                          ,controller: _lastnameController
                          ,validator: (text){
                            if(text.toString().isEmpty){
                              return "Please enter your last name";
                            }
                          },
                        ),
                      ],
                    ),
                    SizedBox(height:20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Textform(one: "Phone Number"
                          ,two: "Enter your phone number"
                          ,mx: 1
                          ,width: 350.0
                          ,controller: _contactController
                          ,validator: (text){
                            if(text.toString().isEmpty){
                              return "Please enter your contact number";
                            }
                          },
                        ),
                        Textform(one: "Email Id"
                          ,two: "Enter your email Id"
                          ,mx: 1
                          ,width: 350.0
                          ,controller: _emailIdController
                          ,validator: (text){
                            if(text.toString().isEmpty){
                              return "Please enter your email Id";
                            }
                          },
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Textform(one: "Message"
                      ,two: "message"
                      ,mx: 6
                      ,width: 700
                      ,controller: _messageController
                      ,validator: (text){
                        if(text.toString().isEmpty){
                          return "Please enter which club you might want to join";
                        }
                      },
                    ),
                    SizedBox(height:20.0),
                    MaterialButton(
                      onPressed: ()async{
                        final addData = new addDataFirestore();
                        if(formkey.currentState!.validate()){
                          await addData.addResponse(
                              _firstnameController.text
                              , _lastnameController.text
                              , _emailIdController.text
                              ,_contactController.text
                              , _messageController.text
                          );
                          formkey.currentState!.reset();
                          showDialog(context: context, builder: (
                              BuildContext context)=>AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            title: Sansbold("Message Sent", 15.0),
                          ));
                        }
                      },
                      elevation: 20.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      height: 45.0,
                      minWidth: 135.0,
                      color: Colors.tealAccent,
                      child: Sansbold("Submit", 15.0,color: Colors.black,),
                    )
                  ]
              )
            ],
          ),
        )
      ]
      ),
      );
    }
  }
