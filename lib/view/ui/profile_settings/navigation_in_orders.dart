import 'package:flutter/material.dart';
import 'package:task7/view/ui/profile_settings/my_order_cancelled.dart';
import 'package:task7/view/ui/profile_settings/my_order_processing.dart';
import 'package:task7/view/widget/custom_text.dart';

import 'my_orders_delivered.dart';

class NavigationInOrders extends StatefulWidget {
  const NavigationInOrders({Key? key}) : super(key: key);

  @override
  State<NavigationInOrders> createState() => _NavigationInOrdersState();
}

class _NavigationInOrdersState extends State<NavigationInOrders> with TickerProviderStateMixin {
  late TabController _tabController;

  final List<Widget> _tabs = [
    MyOrders(),
    MyOrdersProcessing(),
    MyOrdersCancelled(),
    // Add your widget for the third button here (e.g., anotherWidget())
  ];

  final List<String> _tabTitles = [
    'Orders',
    'Processing',
    'Cancelled',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabSelection);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(text: "My Orders", fontSize: 30,),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      _tabController.animateTo(0);
                    },
                    child: Text(
                      'Orders',
                      style: TextStyle(color: _tabController.index == 0 ? Colors.white : Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: _tabController.index == 0 ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 10), // Add space between buttons
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      _tabController.animateTo(1);
                    },
                    child: Text(
                      'Processing',
                      style: TextStyle(color: _tabController.index == 1 ? Colors.white : Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: _tabController.index == 1 ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 10), // Add space between buttons
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      _tabController.animateTo(2);
                    },
                    child: Text(
                      'Cancelled',
                      style: TextStyle(color: _tabController.index == 2 ? Colors.white : Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: _tabController.index == 2 ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _tabs,
            ),
          ),
        ],
      ),
    );
  }
}
