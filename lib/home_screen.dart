import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/result.dart';

 class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  

  @override
  State<HomeScreen> createState() => _nameState();
}

class _nameState extends State<HomeScreen> {
  int Weight_num=70;
  int age_num=15;
  int Hight_num=120;
  bool IsMale=true;
  double res=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff060b20),
      appBar:AppBar(
        backgroundColor: Color(0xff060b21),
        title:
         Text("BMI CALCULATOR",style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        IsMale=true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(15),
                        
                        color:(IsMale)? Color(0xffeb1b54):Color(0xff1d1d2f),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){
                          }, icon: Icon(Icons.male),iconSize: 50,color: Colors.white,),
                          SizedBox(height: 5,),
                          Text("Male",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        IsMale=false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(15),
                        color:(!IsMale)? Color(0xffeb1b54):Color(0xff1b1d2f),
                      ),
                      
                      child: Column(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.female),iconSize: 50,color: Colors.white,),
                          SizedBox(height: 5,),
                          Text("Female",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                        
                        
                      ),
                    ),
                  ),
                ),
              ],
              
            )),
            SizedBox(height: 10,),
            Expanded(
            child: Container( 
              width: double.infinity,            
              decoration: BoxDecoration(
                color: Color(0xff1d1d2f),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40,),
                  Text("Hight",style: TextStyle(color: Colors.white,fontSize: 15)),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline:TextBaseline.alphabetic,
                    children: [
                      Text(Hight_num.toString(),style: TextStyle(color: Colors.white,fontSize: 30)),
                      SizedBox(width: 5,),
                      Text("cm",style: TextStyle(color: Colors.white,fontSize: 13, ))
                    ],
                  ),
                  Slider(
                    min: 70,
                    max: 220,
                    activeColor: Color(0xffeb1a53),
                    inactiveColor:Color(0xff353547) ,
                    value: Hight_num.toDouble(), onChanged: (value){
                      setState(() {
                        Hight_num=value.toInt();
                      });
                  })
                ],
              ),
            )),
            SizedBox(height: 10,),
            Expanded(            
              child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(15),
                      color: Color(0xff1b1d2f),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 40,),
                        Text("Weight",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        Text(Weight_num.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 30),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton.filled(onPressed: (){
                              setState(() {
                                if(Weight_num>0){
                                  Weight_num--;
                                }
                              });
                            }, icon: Icon(Icons.remove),color:Colors.white ,style: IconButton.styleFrom(
                              backgroundColor: Color(0xff494d5c)
                            ),),
                            IconButton.filled(onPressed: (
                            ){
                              setState(() {
                                if(Weight_num>=0){
                                  Weight_num++;
                                }
                              }
                            );}, icon: Icon(Icons.add),color:Colors.white ,style: IconButton.styleFrom(
                              backgroundColor: Color(0xff494d5c)
                            ),)
                          ],
                        )

                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(15),
                      color: Color(0xff1b1d2f),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 40,),
                        Text("Age",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        Text(age_num.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 30),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton.filled(onPressed: (){
                              setState(() {
                                if(age_num>=0){
                                  age_num--;
                                }
                              }
                            );

                            }, icon: Icon(Icons.remove),color:Colors.white ,style: IconButton.styleFrom(
                              backgroundColor: Color(0xff494d5c)
                            ),),
                            IconButton.filled(onPressed: (){
                              setState(() {
                                if(age_num>=0){
                                  age_num++;
                                }
                              }
                            );
                            }, icon: Icon(Icons.add),color:Colors.white ,style: IconButton.styleFrom(
                              backgroundColor: Color(0xff494d5c)
                            ),)
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ],
              
            )
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                res=(Weight_num)/(Hight_num*Hight_num*0.0001);
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => result(result_bmi: res,),));

              }, child: Text("Calculate",style: TextStyle(color: Colors.white,fontSize: 20),),
              style:ElevatedButton.styleFrom(
                backgroundColor: Color(0xffea1b54)
              ),),
            ),
            SizedBox(height: 5,),
        ],),
      ),
    );
  }
}