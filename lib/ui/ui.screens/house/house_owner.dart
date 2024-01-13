import 'package:flutter/material.dart';
import 'package:rent_ez/ui/ui.screens/house/house_add_details.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';

class HouseOwner extends StatefulWidget {
  const HouseOwner({super.key});

  @override
  State<HouseOwner> createState() => _HouseOwnerState();
}

class _HouseOwnerState extends State<HouseOwner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset('assets/images/House Owner.png',
          // height: 180,
          fit: BoxFit.cover,
        ),

        toolbarHeight: 100,
        elevation: 15,
        backgroundColor: Colors.grey,
      ),
      body: BackgroundBody(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height:20,),
                  Container(
                    height: 100,
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
                              height: 100,
                               //width: 500,
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
                                fontWeight:FontWeight.w900,
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

                  const SizedBox(height: 50,),
                  Text('Title :',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Address'
                      ),
                    ),
                  ),

                  Padding(
                      padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration:InputDecoration(
                        hintText: 'Phone',
                      ),
                    ),
                  ),

                  const SizedBox(height: 5,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder:(context) => const HouseAddDetails()),
                      );
                    },
                    child:const Text('Add Details',style: TextStyle(
                      fontSize:17,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),),

                    style: ElevatedButton.styleFrom(
                      //padding: EdgeInsets.all(5.0),
                      fixedSize: Size(100,50),
                      elevation: 5,
                      primary: Colors.blueGrey,
                      onPrimary: Colors.white,
                      side: BorderSide(color: Colors.black26,width:2),

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
