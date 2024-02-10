import 'package:flutter/material.dart';
import 'package:rent_ez/ui/ui.screens/settings_screen.dart';
import 'package:rent_ez/ui/ui.screens/shop/shop_screen.dart';
import 'package:rent_ez/ui/ui.screens/transport/transport_screen.dart';
import 'package:rent_ez/ui/ui.widgets/background_body.dart';
import 'garage/garage_screen.dart';
import 'house/house_screen.dart';
import 'office/office_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        flexibleSpace: Image.asset('assets/images/Rent EZ home screen.png',
          height: 160,
          fit: BoxFit.cover,
        ),

        toolbarHeight: 130,
        elevation: 15,
        backgroundColor: Colors.lime,

      ),

      body:BackgroundBody(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(height:300,width: 15,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder:(context) => const HouseScreen()),
                    );
                  },
                  child:const Text('HOUSE',style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10.0),
                    fixedSize: Size(100,90),
                    elevation: 20,
                    primary: Colors.amber,
                    onPrimary: Colors.white,
                    side: BorderSide(color: Colors.black26,width:3),
                    shape:StadiumBorder(),


                  ),
                ),

                const SizedBox(height:300,width: 15,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder:(context) => const ShopScreen()),
                    );
                  },
                  child:const Text('SHOP',style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10.0),
                    fixedSize: Size(100,90),
                    elevation: 20,
                    primary: Colors.amber,
                    onPrimary: Colors.white,
                    side: BorderSide(color: Colors.black26,width:3),
                    shape:StadiumBorder(),

                  ),
                ),

                const SizedBox(height:300,width: 15,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder:(context) => const OfficeScreen()),
                    );
                  },
                  child:const Text('OFFICE',style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10.0),
                    fixedSize: Size(100,90),
                    elevation: 20,
                    primary: Colors.amber,
                    onPrimary: Colors.white,
                    side: BorderSide(color: Colors.black26,width:3),
                    shape:StadiumBorder(),

                  ),
                ),

              ],
            ),

            Row(
              children: [
                const SizedBox(height:0,width: 15,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder:(context) => const GarageScreen()),
                    );
                  },
                  child:const Text('GARAGE',style: TextStyle(
                    fontSize:14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(5.0),
                    fixedSize: Size(100,90),
                    elevation: 20,
                    primary: Colors.amber,
                    onPrimary: Colors.white,
                    side: BorderSide(color: Colors.black26,width:3),
                    shape:StadiumBorder(),

                  ),
                ),

                const SizedBox(height:0,width: 15,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>const TransportScreen()),
                    );
                  },
                  child:const Text('TRANSPORT',style: TextStyle(
                    fontSize:14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(5.0),
                    fixedSize: Size(100,90),
                    elevation: 20,
                    primary: Colors.amber,
                    onPrimary: Colors.white,
                    side: BorderSide(color: Colors.black26,width:3),
                    shape:StadiumBorder(),

                  ),
                ),

                const SizedBox(height:0,width: 15,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context) => const SettingsScreen()),
                    );
                  },
                  child:const Text('SETTINGS',style: TextStyle(
                    fontSize:14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(5.0),
                    fixedSize: Size(100,90),
                    elevation: 20,
                    primary: Colors.amber,
                    onPrimary: Colors.white,
                    side: BorderSide(color: Colors.black26,width:3),
                    shape:StadiumBorder(),

                  ),
                ),
              ],
            ),
          ],
        ),
      ),


    );
  }
}