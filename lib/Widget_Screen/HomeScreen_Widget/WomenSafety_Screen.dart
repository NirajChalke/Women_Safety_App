import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';


class WomenSafety extends StatelessWidget {

  _callNumber(String number) async{
    await FlutterPhoneDirectCaller.callNumber(number);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,top:2),
      child: Card(
        elevation: 3,shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xfff5576c),
                  Color(0xfff093fb),
                ],
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black.withOpacity(0.8),
                      child: Image.asset('assets/images/women2.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:5,),
                      child: Text("Women Crisis Helpline",style:GoogleFonts.roboto(fontSize:18,
                          fontWeight:FontWeight.bold,color:Colors.black)),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:30),
                        child: Text('Active Emergency',
                            style:GoogleFonts.lato(fontSize:23,fontWeight:FontWeight.bold,color:Colors.white)
                        ),
                      ),

                      InkWell(
                        onTap:(){
                          _callNumber("1091");
                        },
                        child: Container(
                          height: 40, width:double.infinity,
                          decoration: BoxDecoration(
                            gradient:LinearGradient(colors:[
                              Color(0xff4facfe),
                              Color(0xff00f2fe),
                            ]),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              Icon(Icons.call,size:35,color:Colors.deepOrange,),
                              Text(' 1091',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}