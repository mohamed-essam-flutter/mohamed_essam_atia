import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';

class result extends  StatelessWidget {
  const result({super.key,required this.result_bmi});
  final double result_bmi;
//   Underweight = less than 18.5;
// Normal weight = 18.5-24.9;
// Overweight = 25-29.9;
// Obesity = 30-35;
// Severe obesity = 35 and over.
String getClass(){
  if(result_bmi<= 18.5){
    return "Underweight";
  }else if(result_bmi <= 24.9){
    return "Normal";
  }else if(result_bmi <=39.9){
    return "Overweight";
  }else{
    return "obese";
  }

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff060b21),
      appBar: AppBar(
        backgroundColor: Color(0xff060b21),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Text("Your result",style: TextStyle(
              color: Colors.white,
              fontSize:40,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1b1d2f)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 70,),
                    Text(getClass(),style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(height: 100,),
                    Text(result_bmi.toStringAsFixed(2),style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold)),
                    SizedBox(height: 50,),
                    Text("Your body might be normal",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                    Text("Good body 💪 ",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                ),
                
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
            Navigator.of(context).pop(MaterialPageRoute(builder: (context) => HomeScreen(),));

              }, child: Text("Recalculate",style: TextStyle(color: Colors.white,fontSize: 20),),
              style:ElevatedButton.styleFrom(
                backgroundColor: Color(0xffea1b54)
              ),),
            )

          ],
        ),
      ),
     
    );
  }
}