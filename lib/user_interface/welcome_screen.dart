
import 'package:etmbikes/authentication/login.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.white),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(80))
            ),
            child: Center(
              child: Image.asset('assets/images/EV2GO-LOG0-10-11-22-1.png',scale: 0.8,),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.25,
              decoration: const BoxDecoration(color: Color(0xFF674AEF)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.25,
              padding: const EdgeInsets.only(top: 40,bottom: 30),
              decoration: const BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70)
              )
              ),
              child: Column(
            children: <Widget>[
              const Text('Drive Safe',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Anytime Everyware',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17,color:Colors.black.withOpacity(0.8)),
                ),
              ),
              const SizedBox(height: 60,),
              Material(
                color:const Color(0xFF674AEF),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> const LoginPage()
                  ));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 80),
                  child: const Text("Login",
                    style: TextStyle(color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,wordSpacing: 2),
                  ),
                ),
              ))
            ],
          ),
            ),
          ),
          
        ]),
      ),
    );
  }
}