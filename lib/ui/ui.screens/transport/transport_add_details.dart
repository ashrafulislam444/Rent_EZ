import 'package:flutter/material.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';

class TransportAddDetails extends StatefulWidget {
  const TransportAddDetails({super.key});

  @override
  State<TransportAddDetails> createState() => _TransportAddDetailsState();
}

class _TransportAddDetailsState extends State<TransportAddDetails> {
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
                          hintText: 'Transport Rent'
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child:TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Transport no.'
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
