
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rent_ez/ui/global/common/toast.dart';
import 'package:rent_ez/ui/ui.screens/house/house_add_details.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';

class HouseOwner extends StatefulWidget {
  const HouseOwner({super.key});

  @override
  State<HouseOwner> createState() => _HouseOwnerState();
}

class _HouseOwnerState extends State<HouseOwner> {

  final TextEditingController addressController =TextEditingController();
  final TextEditingController phoneController = TextEditingController();


  @override
  void dispose() {
    addressController.dispose();
    phoneController.dispose();
    super.dispose();
  }


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
                            color: Color.fromRGBO(22, 82, 131, 1.0),
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

                  const SizedBox(height: 30,),
                  Text('Title :',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: addressController,
                      decoration: InputDecoration(
                        hintText: 'Address'
                      ),
                    ),
                  ),

                  Padding(
                      padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: phoneController,
                      keyboardType:TextInputType.phone ,
                      decoration:InputDecoration(
                        hintText: 'Phone',
                      ),
                    ),
                  ),


                  const SizedBox(height: 5,),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        final user = User(
                          address:addressController.text,
                          phone:int.parse(phoneController.text),
                        );

                        houseOwner(user);
                        //Navigator.pop(context);

                      },
                        child: const Text('Submit',style: TextStyle(
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
                        side: BorderSide(color: Colors.green,width:2),

                      ),
                    ),
                  ),

                  const SizedBox(height: 50,),
                  Center(
                    child: ElevatedButton(
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
                  ),
                ],
              ),
            ),

          ),

        ),


      ),



    );
  }

  Future houseOwner (User user) async {

    try {
      final docUser = FirebaseFirestore.instance.collection('House Owner').doc();
      showToast(message: " Submit Successful");

      final home = user.toHome();
      await docUser.set(home);

    } catch (e) {
      showToast(message: 'some error occurred ');
    }

  }
}

class User{
  final String address;
  final int phone;

  User({
    required this.address,
    required this.phone,
  });

  Map<String, dynamic> toHome() =>{
    'address':address,
    'phone':phone,
  };
}
