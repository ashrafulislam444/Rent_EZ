import 'package:flutter/material.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';

class GarageAddDetails extends StatefulWidget {
  const GarageAddDetails({super.key});

  @override
  State<GarageAddDetails> createState() => _GarageAddDetailsState();
}

class _GarageAddDetailsState extends State<GarageAddDetails> {
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
                      decoration: InputDecoration(
                          hintText: 'Description'
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Garage Rent'
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Garage no.'
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:TextFormField(
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
                      decoration: InputDecoration(
                          hintText: 'Area Details'
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
