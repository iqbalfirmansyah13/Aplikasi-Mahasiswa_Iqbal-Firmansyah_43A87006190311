import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(DashboardScreen());

class DashboardScreen extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  final Map<String, dynamic> FormData = {'email': '', 'password': ''};
  final focusPassword = FocusNode();
  DashboardScreen({super.key});
  Widget _header() {
    return Center(
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          // color: Color.fromRGBO(38, 38, 38, 0.4),
          // color: LinearGradient(colors: Colors.)
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 19, 131, 236),
                Color.fromARGB(255, 13, 36, 236)
              ]),
        ),
      ),
    );
  }

  

  Widget _buildForm() {
    return Form(
      key: _formkey,
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 16),

        child: SizedBox(
          child: Container(
            padding: EdgeInsets.only(top: 50),
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Hai, Iqbal Firmansyah' ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.black),),
                      

                    ),
                    Container(
                      child: Icon(Icons.notifications_none_outlined,size: 28,)
                      

                    ),
                  ],
                ),

                SizedBox(
                    height: 10,
                ),
                Row(
                  children: [
                    Text('bagaimana keadaanmu hari ini,',style: TextStyle(color: Colors.black38),),
                  ],
                ),

                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      
                      height: 85,
                      width: 168,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        

                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.1), //color of shadow
                            spreadRadius: 2, //spread radius
                            blurRadius: 3, // blur radius
                            offset: Offset(0, 3),
                            // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ], //<-- SEE HERE
                      ),
                      child: Container(
                        
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            // marginAll(20),
                            Row(
                              
                              children: [
                                Text('89%',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700, color: Color.fromARGB(255, 238, 60, 60)),),
                              ],
                            ),

                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text('Kehadiran' ,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500, color: Colors.black38),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    
                    Container(
                      
                      height: 85,
                      width: 168,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        

                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.1), //color of shadow
                            spreadRadius: 2, //spread radius
                            blurRadius: 3, // blur radius
                            offset: Offset(0, 3),
                            // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ], //<-- SEE HERE
                      ),
                      child: Container(
                        
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            // marginAll(20),
                            Row(
                              
                              children: [
                                Text('100%',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700, color: Color.fromARGB(235, 56, 209, 26)),),
                              ],
                            ),

                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text('Kelengkapan' ,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500, color: Colors.black38),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      
                      height: 85,
                      width: 168,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                       

                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.1), //color of shadow
                            spreadRadius: 2, //spread radius
                            blurRadius: 3, // blur radius
                            offset: Offset(0, 3),
                            // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ], //<-- SEE HERE
                      ),
                      child: Container(
                        
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            // marginAll(20),
                            Row(
                              
                              children: [
                                Text('18%',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700, color: Color.fromARGB(255, 7, 158, 228)),),
                              ],
                            ),

                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text('Kelengkapan Tugas' ,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500, color: Colors.black38),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    
                    Container(
                      
                      height: 85,
                      width: 168,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        

                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.1), //color of shadow
                            spreadRadius: 2, //spread radius
                            blurRadius: 3, // blur radius
                            offset: Offset(0, 3),
                            // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ], //<-- SEE HERE
                      ),
                      child: Container(
                        
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            // marginAll(20),
                            Row(
                              
                              children: [
                                Text('12',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700, color: Color.fromARGB(255, 71, 223, 129)),),
                              ],
                            ),

                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text('Total Keseluruhan' ,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500, color: Colors.black38),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Text('Jadwal', style: TextStyle(fontSize: 19,color: Colors.black54, fontWeight: FontWeight.w400),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('7',style: TextStyle(color: Colors.black38),),
                    ),
                    Container(
                      child: Text('8',style: TextStyle(color: Colors.black38)),
                    ),
                    Container(
                      child: Text('9',style: TextStyle(color: Colors.black38)),
                    ),
                    Container(
                      child: Text('10',style: TextStyle(color: Colors.black38)),
                    ),
                    Container(
                      child: Text('11',style: TextStyle(color: Colors.black38)),
                    ),
                    Container(
                      child: Text('12',style: TextStyle(color: Colors.black38)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      
                      height: 35,
                      width: 125,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 228, 188),
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade50,
                        ),

                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.1), //color of shadow
                            spreadRadius: 2, //spread radius
                            blurRadius: 3, // blur radius
                            offset: Offset(0, 3),
                            // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ], //<-- SEE HERE
                      ),
                      child: Container(
                        margin: EdgeInsets.all(7),
                        child: Column(
                          children: [
                            Text('Ekonomi',
                            style: TextStyle(color: Color.fromARGB(255, 250, 163, 1)),),
                          ],
                        ),
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      
                      height: 35,
                      width: 125,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 205, 220, 243),
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade50,
                        ),

                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.1), //color of shadow
                            spreadRadius: 2, //spread radius
                            blurRadius: 3, // blur radius
                            offset: Offset(0, 3),
                            // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ], //<-- SEE HERE
                      ),
                      child: Container(
                        margin: EdgeInsets.all(7),
                        child: Column(
                          children: [
                            Text('Pemograman',
                            style: TextStyle(color: Color.fromARGB(255, 31, 114, 240)),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      
                      height: 35,
                      width: 125,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 255, 249),
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade50,
                        ),

                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.1), //color of shadow
                            spreadRadius: 2, //spread radius
                            blurRadius: 3, // blur radius
                            offset: Offset(0, 3),
                            // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ], //<-- SEE HERE
                      ),
                      child: Container(
                        margin: EdgeInsets.all(7),
                        child: Column(
                          children: [
                            Text('English',
                            style: TextStyle(color: Color.fromARGB(255, 8, 243, 145)),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
               
                const SizedBox(
                  height: 13,
                ),
               
                SizedBox(
                  height: 10,
                ),
               
                
                const SizedBox(
                  height: 25,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'form Login',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  // child: _header(),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 0, left: 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: _buildForm(),
                ),
                Container(
                  // margin: EdgeInsets.only(bottom: 0, left: 0),
                  // decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.all(Radius.circular(50))),
                  // child: _logo(),
                  transform: Matrix4.translationValues(0.0, -670.0, 0.0),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    // margin: EdgeInsets.only(top: 70, left: 0),
                    // child: _logo(),
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
