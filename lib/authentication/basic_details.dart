import 'package:flutter/material.dart';

class BasicDetails extends StatefulWidget {
  const BasicDetails({super.key});

  @override
  State<BasicDetails> createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {
  bool valueCheck = false;
  @override
  Widget build(BuildContext context) {
    int i = 1;
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
                    height: MediaQuery.of(context).size.height * .18,
                    child:
                        Image.asset('assets/images/etmbikes.png')),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.47,
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Step $i/3',
                          style: TextStyle(
                              color: Colors.yellow.shade800,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Basic Details',
                      style: TextStyle(
                        color: Color(0xFFC81D1D),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 15,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'User name',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(width: 1,color: Colors.transparent)
                            ),
                            border: OutlineInputBorder(
                              
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 30,
                      right: 30,
                    ),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: "Phone",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(width: 1,color: Colors.transparent)
                              ),
                    
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(width: 1,color: Colors.transparent)
                            ),

                          border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: valueCheck,
                            activeColor:const Color(0xFFC81D1D),
                            onChanged: (valueCheck) {
                              setState(() {
                                this.valueCheck = valueCheck!;
                              });
                            }),
                        const Text(
                          'Accept the Terms and Conditions',
                          style: TextStyle(color: Color(0xFFC81D1D)),
                        )
                      ],
                    ),
                  ),
                  Material(
                    elevation: 10,
                    color:Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'idProofs');
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                        child:const Text(
                          'Next',
                          style: TextStyle(
                              color: Color(0xFFC81D1D),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, 'login');
                    },
                    child: const Text(
                      'Already Have An Account? Sign In',
                      style: TextStyle(color: Color(0xFFC81D1D)),
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
