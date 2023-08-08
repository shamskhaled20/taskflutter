import 'package:flutter/material.dart';
import 'package:task7/view/ui/profile.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int index = 0;
  final pages = [
  MyProfile(),
 //   navigation_in_doctor_inpatient(),
//    navigation_in_lab_inpatient(),
//    results_lab_doctor(),
//    homescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
          child: pages[index]),

      bottomNavigationBar: NavigationBar(
        // set index to make the mark of the bottom being where i click but i but it by default to (home) index number 2
        selectedIndex: index,
        onDestinationSelected: (index) => setState(()=>this.index =index,),
        backgroundColor: Colors.white
        ,
        destinations : [
          NavigationDestination(
            icon: Icon(Icons.perm_contact_calendar_outlined,
            ),
            label: 'my profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border),
            label: 'favorites',
          ),
          NavigationDestination(
            icon: Icon(Icons.task_sharp),
            label: 'bug',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_shopping_cart_rounded),
            label: 'shop',
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),

    );
  }
}
