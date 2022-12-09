import 'package:flutter/material.dart';
import 'package:flutter_demo/singup.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(home:MyApp()) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(child:Container(
            height: 800,
          width: 1500,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("lib/image/sign.jpg"),
          fit: BoxFit.cover
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          children: [const Text("Welcome to BTC Exchange", textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 50),),
           const SizedBox(
            height: 40,
          ),
          const Text("We are offerring that hajbhd djbfkj sdjjksfh a kwjeklam akjdfklaj akejklaj akjdfkjn akjdkljlkse ruuiehjroi",textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 25),),
          const SizedBox(
            height: 350,
          ),
          InkWell(onTap: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  SignupScreen()),
  );

          },
            child: Container(
            width: 500.0, height: 60.0,
            child: const Center(child: Text("SING UP", textAlign: TextAlign.center,style: TextStyle(fontSize: 35),)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white
            ),
                  ),
          ),
         const SizedBox(
            height: 20,
          ),
          Text("Already have an account ?",style: TextStyle(color: Colors.black,fontSize: 20),),
         
          TextButton(onPressed: (() {}), child: const Text("sing in",style: TextStyle(color: Colors.white,fontSize: 25),))
          ]
          ),
        
         
        ))
        

        );
        
      
    
    
  }
}

