import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/custom_text.dart';
import 'change_password.dart';

class appSetting extends StatefulWidget {
  const appSetting({super.key});

  @override
  State<appSetting> createState() => _appSettingState();
}

class _appSettingState extends State<appSetting> {
  bool val = true;
   bool val1 = false;
    bool val2 = false;
     bool val3 = false;
  
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              CustomText(text: "Settings",fontSize: 40,),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  style: TextStyle(height: 1.5),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: TextStyle(fontSize: 12),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Colors.grey.shade200)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.blueAccent),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  style: TextStyle(height: 1.5),
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: 'Data of Birth',
                    hintStyle: TextStyle(fontSize: 12),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Colors.grey.shade200)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.blueAccent),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Password",style: TextStyle(fontWeight: FontWeight.bold)),
                  new Spacer(),
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return  Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Change Password',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  child: TextField(
                                    style: TextStyle(height: 1.5),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: 'Old Password',
                                      hintStyle: TextStyle(fontSize: 12),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(width: 3, color: Colors.grey.shade200)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(width: 3, color: Colors.blueAccent),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: CustomText(
                                    alignment: Alignment.topRight,
                                    text: "Forget password",),),
                                SizedBox(height: 10,),
                                Container(
                                  child: TextField(
                                    style: TextStyle(height: 1.5),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: 'New Password',
                                      hintStyle: TextStyle(fontSize: 12),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(width: 3, color: Colors.grey.shade200)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(width: 3, color: Colors.blueAccent),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: TextField(
                                    style: TextStyle(height: 1.5),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      hintText: 'Repeat New Password',
                                      hintStyle: TextStyle(fontSize: 12),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(width: 3, color: Colors.grey.shade200)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(width: 3, color: Colors.blueAccent),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 25),
                                ElevatedButton(
                                    onPressed: () {
                                      // Add your onPressed function here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.red, // Set the background color to white
                                      onPrimary: Colors.black, // Set the text color to black
                                      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15), // Set the padding
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20), // Set the border radius
                                      ),
                                    ),
                                    child: CustomText(
                                      text: "Save changes",
                                      color: Colors.white,
                                    )
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text('Change'),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  style: TextStyle(height: 1.5),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 12),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Colors.grey.shade200)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.blueAccent),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Notifications",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("sales"),
                  new Spacer(),
                  Switch(
                    value: val,
                    onChanged: (newVal) {
                      setState(() {
                        val = newVal;
                      });
                    },
                    activeColor: Colors.green,
                    
                  ),
                ],
              ),
              Row( children: [
                  Text("new arrivals"),
                  new Spacer(),
                  Switch(
                    value: val1,
                    onChanged: (newval) {
                     
                    },
                    activeColor: Colors.green,
                    
                  ),
                ],),
              Row( children: [
                  Text("Delivery status changes"),
                  new Spacer(),
                  Switch(
                    value: val2,
                    onChanged: (newval) {
                      
                    },
                    activeColor: Colors.green,
                    
                  ),
                ],),
            ],
          ),
        ),
      ),
    );
  }
}
