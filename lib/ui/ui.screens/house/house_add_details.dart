import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rent_ez/ui/global/common/toast.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';

class HouseAddDetails extends StatefulWidget {
  const HouseAddDetails({super.key});

  @override
  State<HouseAddDetails> createState() => _HouseAddDetailsState();
}

class _HouseAddDetailsState extends State<HouseAddDetails> {

  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController houseRentController = TextEditingController();
  final TextEditingController houseNoController = TextEditingController();
  final TextEditingController roadNoController = TextEditingController();
  final TextEditingController areaDetailsController = TextEditingController();


  @override
  void dispose(){
    descriptionController.dispose();
    houseRentController.dispose();
    houseNoController.dispose();
    roadNoController.dispose();
    areaDetailsController.dispose();
    super.dispose();

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset('assets/images/Add Details.png',
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
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Provide House Information',style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),),
                    ],
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                      padding: const EdgeInsets.all(5),
                    child:TextFormField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        hintText: 'Description'
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:TextFormField(
                      controller: houseRentController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'House Rent'
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:TextFormField(
                      controller: houseNoController,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          hintText: 'House no.'
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:TextFormField(
                      controller: roadNoController,
                      keyboardType:TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Road No.'
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:TextFormField(
                      controller: areaDetailsController,
                      decoration: InputDecoration(
                          hintText: 'Area Details'
                      ),
                    ),
                  ),


                  const SizedBox(height: 5,),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        final user = User(
                          description: descriptionController.text,
                          houseRent: int.parse(houseRentController.text),
                          houseNo: houseNoController.text,
                          roadNo:int.parse(roadNoController.text),
                          areaDetails:areaDetailsController.text,

                        );

                        houseAddDetails(user);

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




                ],
              ),
            ),

          ),
        ),

      ),



    );
  }



  Future houseAddDetails (User user) async {

    try {
      final docUser = FirebaseFirestore.instance.collection('House Add Details').doc();
      showToast(message: " Submit Successful");

      final home = user.toHome();
      await docUser.set(home);

    } catch (e) {
      showToast(message: 'some error occurred ');
    }

  }
}

class User{
  final String description;
  final int houseRent;
  final String houseNo;
  final int roadNo;
  final String areaDetails;


  User({
    required this.description,
    required this.houseRent,
    required this.houseNo,
    required this.roadNo,
    required this.areaDetails,
  });

  Map<String, dynamic> toHome() =>{
    'description':description,
    'houseRent':houseRent,
    'houseNo':houseNo,
    'roadNo':roadNo,
    'areaDetails':areaDetails,
  };
}
