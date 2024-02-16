import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rent_ez/ui/global/common/toast.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';

class ShopAddDetails extends StatefulWidget {
  const ShopAddDetails({super.key});

  @override
  State<ShopAddDetails> createState() => _ShopAddDetailsState();
}

class _ShopAddDetailsState extends State<ShopAddDetails> {


  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController shopRentController = TextEditingController();
  final TextEditingController shopNoController = TextEditingController();
  final TextEditingController roadNoController = TextEditingController();
  final TextEditingController areaDetailsController = TextEditingController();


  @override
  void dispose(){
    descriptionController.dispose();
    shopRentController.dispose();
    shopNoController.dispose();
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
                      Text('Provide Shop Information',style: TextStyle(
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
                      controller: shopRentController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Shop Rent'
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:TextFormField(
                      controller: shopNoController,
                      decoration: InputDecoration(
                          hintText: 'Shop no.'
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
                          shopRent: int.parse(shopRentController.text),
                          shopNo: shopNoController.text,
                          roadNo:int.parse(roadNoController.text),
                          areaDetails:areaDetailsController.text,

                        );

                        shopAddDetails(user);

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

  Future shopAddDetails (User user) async {

    try {
      final docUser = FirebaseFirestore.instance.collection('Shop Add Details').doc();
      showToast(message: " Submit Successful");

      final shop = user.toShop();
      await docUser.set(shop);

    } catch (e) {
      showToast(message: 'some error occurred ');
    }

  }
}


class User{
  final String description;
  final int shopRent;
  final String shopNo;
  final int roadNo;
  final String areaDetails;


  User({
    required this.description,
    required this.shopRent,
    required this.shopNo,
    required this.roadNo,
    required this.areaDetails,
  });

  Map<String, dynamic> toShop() =>{
    'description':description,
    'shopRent':shopRent,
    'shopNo':shopNo,
    'roadNo':roadNo,
    'areaDetails':areaDetails,
  };
}
