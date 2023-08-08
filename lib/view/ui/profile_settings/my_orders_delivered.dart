import 'package:flutter/material.dart';
import 'package:task7/view/ui/profile_settings/order_detials.dart';
import 'package:task7/view/widget/custom_text.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class OrderData {
  final String name;
  final String trackingNumber;
  final String data;
  final int quantity;
  final int TotalAmount;

  OrderData({required this.name, required this.trackingNumber, required this.data, required this.quantity,required this.TotalAmount});
}

class _MyOrdersState extends State<MyOrders> {
  // Example data for the list of orders
  List<OrderData> orders = [
    OrderData(name: 'Order 1', trackingNumber: '123456', data: '05-12-2019', quantity: 3,TotalAmount: 112),
    OrderData(name: 'Order 2', trackingNumber: '789012', data: '05-12-2019', quantity: 3,TotalAmount: 112),
    OrderData(name: 'Order 3', trackingNumber: '345678', data: '05-12-2019', quantity: 3,TotalAmount: 112),
    OrderData(name: 'Order 4', trackingNumber: '901234', data: '05-12-2019', quantity: 3,TotalAmount: 112),
    OrderData(name: 'Order 5', trackingNumber: '567890', data: '05-12-2019', quantity: 3,TotalAmount: 112),
    // Add more orders here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [

            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 150, // Set the desired height for the card
                      child: Card(
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(text: orders[index].name,),
                                  CustomText(text: orders[index].data, color: Colors.grey,)
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  CustomText(text: 'Tracking Number:', color: Colors.grey,),
                                  SizedBox(width: 4),
                                  CustomText(text: orders[index].trackingNumber,),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CustomText(text: 'Quantity:', color: Colors.grey,),
                                      SizedBox(width: 4),
                                      CustomText(text: orders[index].quantity.toString(),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CustomText(text: 'TotalAmount:', color: Colors.grey,),
                                      SizedBox(width: 4),
                                      CustomText(text: '${orders[index].TotalAmount.toString()}\$',),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 12),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Add your onPressed function here
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                          return OrderDetials();
                                        }));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white, // Set the background color to white
                                        onPrimary: Colors.black, // Set the text color to black
                                        side: BorderSide(width: 2.0, color: Colors.black54), // Set the border properties
                                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Set the padding
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20), // Set the border radius
                                        ),
                                      ),
                                      child: Text(
                                        'Details',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                              CustomText(text: "Delivered",
                              color: Colors.green,)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
