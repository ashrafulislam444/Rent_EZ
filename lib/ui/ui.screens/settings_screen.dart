import 'package:flutter/material.dart';
import 'package:rent_ez/ui/ui.screens/update_profile_screen.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        flexibleSpace: Image.asset('assets/images/Settings.png',
         // height: 180,
          fit: BoxFit.fill,
        ),

        toolbarHeight: 100,
        elevation: 15,
        backgroundColor: Colors.grey,
      ),
      body: BackgroundBody(
        child: Column(
          children: [

            const SizedBox(height: 40,width: 400,),
            SizedBox(
              //width: double.infinity,
              child:ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context) => const UpdateProfileScreen()),
                  );
                },
                child:const Text('Update Profile',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),

                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  fixedSize: Size(250,50),
                  elevation: 20,
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  side: BorderSide(color: Colors.lightGreen,width:3),
                  shape:StadiumBorder(),

                ),
              ),
            ),

            const SizedBox(height: 40,width: 400,),
            SizedBox(
              //width: double.infinity,
              child:ElevatedButton(
                onPressed: () {},
                child:const Text('Feedback',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),

                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  fixedSize: Size(250,50),
                  elevation: 20,
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  side: BorderSide(color: Colors.lightGreen,width:3),
                  shape:StadiumBorder(),

                ),
              ),
            ),

            const SizedBox(height: 40,width: 400,),
            SizedBox(
              //width: double.infinity,
              child:ElevatedButton(
                onPressed: () {},
                child:const Text('Contact',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),

                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  fixedSize: Size(250,50),
                  elevation: 20,
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  side: BorderSide(color: Colors.lightGreen,width:3),
                  shape:StadiumBorder(),

                ),
              ),
            ),

            const SizedBox(height: 40,width: 400,),
            SizedBox(
              //width: double.infinity,
              child:ElevatedButton(
                onPressed: () {},
                child:const Text('FAQ',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),

                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  fixedSize: Size(250,50),
                  elevation: 20,
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  side: BorderSide(color: Colors.lightGreen,width:3),
                  shape:StadiumBorder(),

                ),
              ),
            ),

            const SizedBox(height: 40,width: 400,),
            SizedBox(
              //width: double.infinity,
              child:ElevatedButton(
                onPressed: () {},
                child:const Text('Log Out',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),

                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  fixedSize: Size(250,50),
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



    );
  }
}
