import 'package:flutter/material.dart';
import '../../widget/custom_text.dart';

class OrderDetials extends StatefulWidget {
  const OrderDetials({Key? key}) : super(key: key);

  @override
  State<OrderDetials> createState() => _OrderDetialsState();
}

class OrderData {
  final String name;
  final String color;
  final String size;
  final int quantity;
  final int TotalAmount;
  final String imageUrl; // Add this property to store the image URL

  OrderData({
    required this.name,
    required this.color,
    required this.size,
    required this.quantity,
    required this.TotalAmount,
    required this.imageUrl,
  });
}

class _OrderDetialsState extends State<OrderDetials> {
  List<OrderData> orders = [
    OrderData(
      name: 'pullover',
      color: 'gray',
      size: 'L',
      quantity: 3,
      TotalAmount: 112,
      imageUrl: '',
    ),
    OrderData(
      name: 'pullover',
      color: 'gray',
      size: 'L',
      quantity: 3,
      TotalAmount: 112,
      imageUrl: '',
    ),
    OrderData(
      name: 'pullover',
      color: 'gray',
      size: 'L',
      quantity: 3,
      TotalAmount: 112,
      imageUrl: '',
    ),
    // Add more orders here if needed
  ];

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
        title: Text("Orders Details"),
        centerTitle: true,
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Order No1587422',
                ),
                CustomText(
                  text: '15-4-2019',
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: 'Tracking Number:',
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4),
                    CustomText(
                      text: '14558762',
                    ),
                  ],
                ),
                CustomText(
                  text: "Delivered",
                  color: Colors.green,
                )
              ],
            ),
            SizedBox(height: 20),
            CustomText(text: "3 items"),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: orders.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Container(
                      width: 100,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(orders[index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: CustomText(text: orders[index].name,),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "mango", color: Colors.grey,),
                        Row(
                          children: [
                            Row(
                              children: [
                                CustomText(text: 'Color: ', color: Colors.grey),
                                CustomText(text: orders[index].color),
                              ],
                            ),
                            SizedBox(width: 8,),
                            Row(
                              children: [
                                CustomText(text: 'Size:', color: Colors.grey),
                                CustomText(text: orders[index].size),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CustomText(text: 'units:', color: Colors.grey,),
                                CustomText(text: orders[index].quantity.toString()),
                              ],
                            ),
                            CustomText(text: '${orders[index].TotalAmount.toString()}\$',)
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 10), // Add space between ListView and "Order Information"
            CustomText(text: "Order information",fontSize: 20,),
            SizedBox(height: 10,),
            Row(children: [
              CustomText(text: "Shipping Address", color: Colors.grey,fontSize: 20,),
              SizedBox(width: 6,),
              Flexible(
                child: CustomText(text: "3 Newbridge court,chino hills ca 91709,united states",
                maxLine: 2,
                  overflow: TextOverflow.ellipsis,),
              )
            ],),
            SizedBox(height: 10,),
            Row(children: [
              CustomText(text: "Payment methods", color: Colors.grey,fontSize: 20,),
              SizedBox(width: 6,),
              Container(
                  height: 20,
                  width: 20,
                  child: Image.network("images/visa.png")),
              CustomText(text: "*** *** *** 3947",)
            ],),
            SizedBox(height: 10,),
            Row(children: [
              CustomText(text: "Delivery methods", color: Colors.grey,fontSize: 20,),
              SizedBox(width: 10,),
              CustomText(text: "fedex, 3 days, 15\$",)
            ],),
            SizedBox(height: 10,),
            Row(children: [
              CustomText(text: "Discount", color: Colors.grey,fontSize: 20,),
              SizedBox(width: 80,),
              CustomText(text: "10%. Personal promo code",)
            ],),
            SizedBox(height: 10,),
            Row(children: [
              CustomText(text: "Total Amount", color: Colors.grey,fontSize: 20,),
              SizedBox(width: 40,),
              CustomText(text: "133\$",)
            ],),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Set the padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Set the border radius
                    ),
                  ),
                  child: Text(
                    'Reorder',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your onPressed function here
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return OrderDetials();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Set the background color to white
                    onPrimary: Colors.black, // Set the text color to black
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15), // Set the padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Set the border radius
                    ),
                  ),
                  child: CustomText(
                    text: "Leave feedback",
                    color: Colors.white,
                  )
                ),
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
