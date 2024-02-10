import 'package:flutter/material.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update profile',style: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),),

        toolbarHeight:60,
        elevation: 15,
        backgroundColor: Colors.green,
      ),
      body: BackgroundBody(
        child: SafeArea(
          child: Padding(
           padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height:20,),

                  Container(
                    height: 50,
                    //width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                            child: Container(
                              height: 50,
                             // width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                )
                              ),

                              alignment: Alignment.center,
                              child: const Text('Photo',style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),

                            )),
                        Expanded(
                            flex:3,
                            child: Container(
                              padding: EdgeInsets.only(left: 50),
                              child: Text('Select a photo',style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),),
                            )),
                      ],
                    ),
                  ),


                  const SizedBox(height:25,),

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),

                  const SizedBox(height: 20,),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                    ),
                  ),

                  const SizedBox(height: 20,),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                    ),
                  ),

                  const SizedBox(height: 20,),

                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Phone',
                    ),
                  ),

                  const SizedBox(height: 20,),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),


                  const SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    child:ElevatedButton(
                      onPressed: () {},
                      child:const Text('Continue',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight:FontWeight.bold,
                      ),),

                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10.0),
                        fixedSize: Size(200,50),
                        elevation: 20,
                        primary: Colors.green,
                        onPrimary: Colors.white,
                        side: BorderSide(color: Colors.lightGreen,width:3),
                        shape:StadiumBorder(),

                      ),


                    ),
                  ),
                ],
              ),
            ),

        ),

      ),
      ),


    );
  }
}
