import 'package:flutter/material.dart';
import 'package:task7/view/ui/profile_settings/appSetting.dart';
import 'package:task7/view/ui/profile_settings/my_orders_delivered.dart';
import 'package:task7/view/ui/profile_settings/navigation_in_orders.dart';
import 'package:task7/view/widget/custom_profile_bar.dart';
import 'package:task7/view/widget/custom_text.dart';
class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              // Add your search functionality here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,right: 10,left:10),
        child: Column(
          children: [
            CustomText(
              text: "My profile",
              fontSize: 30,
            ),
            SizedBox(height: 20,),
            ListTile(
              leading :
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg",
                ),
              ),
              title: CustomText(
                text: "shams khaled",
                fontSize: 25,
              ),
              subtitle: CustomText(
                text: "shamsmazen27@gmail.com",
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20,),
            CustomProfileBar(text: "My orders", subText: "Already have 12 order", onPressed: (){
Navigator.of(context).push(MaterialPageRoute(builder: (context){
  return NavigationInOrders();
}));
            }),
            CustomProfileBar(text: "Shipping addresses", subText: "3 address", onPressed: (){

            }),
            CustomProfileBar(text: "Payment methods", subText: "visa **34", onPressed: (){

            }),
            CustomProfileBar(text: "Promocodes", subText: "You have special promocodes", onPressed: (){

            }),
            CustomProfileBar(text: "My reviews", subText: "Reviews for 4 items", onPressed: (){

            }),
            CustomProfileBar(text: "Settings", subText: "Notifications, password", onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return appSetting();
              }));
            }),
          ],
        ),
      ),
    );
  }
}
