import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
   colorScheme: ColorScheme.fromSeed(seedColor:Colors.blue),
      ),
      home: MyHomePage(),
      
    );

  }

}
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
    
  }
  
}
class MyHomePageState extends State<MyHomePage>{
  var no1controller=TextEditingController();
  var no2controller=TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title:Text('statfull'), 

    ),
    body:Center(
     
   child:Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextField(
        keyboardType:TextInputType.number,
        controller:no1controller,
      ),
      TextField(
        controller:no2controller,
      ),
      Padding(padding:const EdgeInsets.all(8.0),
      child:Row(
       
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         
         
          ElevatedButton(
            style:ElevatedButton.styleFrom(
              backgroundColor:Colors.red,
            ),
          
            onPressed:(){
              var no1=int.parse(no1controller.text.toString());
              var no2=int.parse(no2controller.text.toString());
             
               setState((){
                 var sum=no1+no2;
              result="the sum of $no1 and $no2 is =$sum";

               });
             

            },
             child:Text('Add'),
          
             ),
          
          
             ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor:Colors.green
              ),
              onPressed:(){
                var no1=int.parse(no1controller.text.toString());
              var no2=int.parse(no2controller.text.toString());
               var sub=no1-no2;
             
               setState((){
                
              result="the sub of $no1 and $no2 is =$sub";
               
               
              },
               );
              },
              
              
              child:Text('subs')),
             ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor:Colors.orange
          
              ),
              onPressed: (){
                  var no1=int.parse(no1controller.text.toString());
              var no2=int.parse(no2controller.text.toString());
               var mul=no1*no2;
             
               setState((){
                
              result="the mul of $no1 and $no2 is =$mul";
               
               
              },
               );
              }, 
              child:Text('mul')),
             ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor:Colors.blueAccent
              ),
              onPressed: (){
                   var no1=int.parse(no1controller.text.toString());
              var no2=int.parse(no2controller.text.toString());
               var div=no1/no2;
             
               setState((){
                
              result="the div of $no1 and $no2 is =$div";
               
               
              },
               );
              },
               child:Text('Div')),
        
        ],
      ),
      ),
      Padding(
        padding:EdgeInsets.all(21)),
      Text("result:$result",style:TextStyle(fontSize:25))
    ],
   
  
   
   )
    
    
    ),
    
    );
  
  }

}

