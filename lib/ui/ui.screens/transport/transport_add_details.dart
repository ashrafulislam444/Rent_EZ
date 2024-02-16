import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rent_ez/ui/global/common/toast.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';

class TransportAddDetails extends StatefulWidget {
  const TransportAddDetails({super.key});

  @override
  State<TransportAddDetails> createState() => _TransportAddDetailsState();
}

class _TransportAddDetailsState extends State<TransportAddDetails> {

  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController transportRentController = TextEditingController();
  final TextEditingController transportNoController = TextEditingController();
  final TextEditingController areaDetailsController = TextEditingController();


  @override
  void dispose(){
    descriptionController.dispose();
    transportRentController.dispose();
    transportNoController.dispose();
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
                      Text('Provide Transport Information',style: TextStyle(
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
                      controller: transportRentController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Transport Rent'
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:TextFormField(
                      controller: transportNoController,
                      decoration: InputDecoration(
                          hintText: 'Transport no.'
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
                          transportRent: int.parse(transportRentController.text),
                          transportNo:transportNoController.text,
                          areaDetails:areaDetailsController.text,

                        );

                        transportAddDetails(user);

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

  Future transportAddDetails (User user) async {

    try {
      final docUser = FirebaseFirestore.instance.collection('Transport Add Details').doc();
      showToast(message: " Submit Successful");

      final transport = user.toTransport();
      await docUser.set(transport);

    } catch (e) {
      showToast(message: 'some error occurred ');
    }

  }

}

class User{
  final String description;
  final int transportRent;
  final String transportNo;
  final String areaDetails;


  User({
    required this.description,
    required this.transportRent,
    required this.transportNo,
    required this.areaDetails,
  });

  Map<String, dynamic> toTransport() =>{
    'description':description,
    'garageRent':transportRent,
    'garageNo':transportNo,
    'areaDetails':areaDetails,
  };
}
