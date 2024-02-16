import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rent_ez/ui/global/common/toast.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';

class GarageAddDetails extends StatefulWidget {
  const GarageAddDetails({super.key});

  @override
  State<GarageAddDetails> createState() => _GarageAddDetailsState();
}

class _GarageAddDetailsState extends State<GarageAddDetails> {

  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController garageRentController = TextEditingController();
  final TextEditingController garageNoController = TextEditingController();
  final TextEditingController roadNoController = TextEditingController();
  final TextEditingController areaDetailsController = TextEditingController();


  @override
  void dispose(){
    descriptionController.dispose();
    garageRentController.dispose();
    garageNoController.dispose();
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
                      Text('Provide Garage Information',style: TextStyle(
                        fontSize: 20,
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
                      controller: garageRentController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Garage Rent'
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:TextFormField(
                      controller: garageNoController,
                      decoration: InputDecoration(
                          hintText: 'Garage no.'
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
                          garageRent: int.parse(garageRentController.text),
                          garageNo:garageNoController.text,
                          roadNo:int.parse(roadNoController.text),
                          areaDetails:areaDetailsController.text,

                        );

                        garageAddDetails(user);

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
                        primary: Colors.green,
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

  Future garageAddDetails (User user) async {

    try {
      final docUser = FirebaseFirestore.instance.collection('Garage Add Details').doc();
      showToast(message: " Submit Successful");

      final garage = user.toGarage();
      await docUser.set(garage);

    } catch (e) {
      showToast(message: 'some error occurred ');
    }

  }

}

class User{
  final String description;
  final int garageRent;
  final String garageNo;
  final int roadNo;
  final String areaDetails;


  User({
    required this.description,
    required this.garageRent,
    required this.garageNo,
    required this.roadNo,
    required this.areaDetails,
  });

  Map<String, dynamic> toGarage() =>{
    'description':description,
    'garageRent':garageRent,
    'garageNo':garageNo,
    'roadNo':roadNo,
    'areaDetails':areaDetails,
  };
}

