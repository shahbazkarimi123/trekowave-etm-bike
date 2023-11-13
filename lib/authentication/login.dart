import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDAD8D8),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 25.0,
                      offset: Offset(0.5, 0.75)
                    )
                  ],
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50))),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.15),
                        child: Image.asset(
                            'assets/images/etmbikes.png'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFC81D1D)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.55,
                    left: 30,
                    right: 30),
                child: Column(children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 12,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'User id',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(width: 1,color: Colors.transparent)
                            ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.04,
                    ),
                    child: Column(children: <Widget>[
                      Material(
                        elevation: 12,
                        borderRadius: BorderRadius.circular(10),
                        child: TextField(
                      
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              hintText: 'Password',
                              enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(width: 1,color: Colors.transparent)
                            ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Column(
                        children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: TextButton(

                                  onPressed: () {
                                    Navigator.pushNamed(context, 'basicDetails');
                                  },
                                  child: const Text(
                                    'New User? Create Account',
                                    style:  TextStyle(
                                        color: Color(0xFFC81D1D), fontSize: 14),
                                  ))),
                                  SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                          Material(
                            elevation: 12,
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                onTap: () {
                                  
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 80),
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Color(0xFFC81D1D),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        wordSpacing: 2),
                                  ),
                                ),
                              ))
                        ],
                      )
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children:<Widget>[
                      //   const Text('Sign In',
                      //   style: TextStyle(color: Color(0xff4c505b),fontSize: 27,fontWeight: FontWeight.w700),),
                      //   CircleAvatar(
                      //     radius: 30,
                      //     backgroundColor:const Color(0xff4c505b),
                      //     child: IconButton(onPressed: (){
                      //       Navigator.pushNamed(context,'homePage');
                      //     },
                      //       icon: const Icon(Icons.arrow_forward),
                      //     ),
                      //   )
                      // ],),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
                      //   children: <Widget>[
                      //     TextButton(onPressed: (){
                      //       Navigator.pushNamed(context, 'register');
                      //     }, child: const Text('Sign Up',style: TextStyle(
                      //       decoration: TextDecoration.underline,
                      //       fontSize: 27,
                      //       color: Color(0xff4c505b),
                      //     ),)),
                      //     SizedBox(height: 30,),
                      //     // TextButton(
                      //     //   onPressed: (){
                      //     //     Navigator.pushNamed(context,'welcomPage');
                      //     //   },
                      //     //   child: const Text('Forgot',style: TextStyle(
                      //     //     decoration:TextDecoration.underline,
                      //     //     fontSize:27,
                      //     //     color: Color(0xff4c505b),
                      //     //   ),),
                      //     // )
                      //   ],
                      // ),
                    ]),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
