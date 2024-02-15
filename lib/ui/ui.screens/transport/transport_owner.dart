import 'package:flutter/material.dart';
import 'package:rent_ez/ui/ui.screens/transport/transport_add_details.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';

class TransportOwner extends StatefulWidget {
  const TransportOwner({super.key});

  @override
  State<TransportOwner> createState() => _TransportOwnerState();
}

class _TransportOwnerState extends State<TransportOwner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset('assets/images/Transport Owner.png',
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
                  Stack(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.indigo,
                          ),
                          child: const Icon(Icons.cloud_upload,
                              color: Colors.white70, size: 50),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Upload a Picture',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,

                      ),),
                    ],
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
                          builder:(context) => const TransportAddDetails()),
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
