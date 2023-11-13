import 'package:flutter/material.dart';

class RentalRegistrationForm extends StatefulWidget {
  const RentalRegistrationForm({super.key});

  @override
  State<RentalRegistrationForm> createState() => _RentalRegistrationFormState();
}

class _RentalRegistrationFormState extends State<RentalRegistrationForm> {
  int i = 3;
  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child: Stack(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                )),
          ),
          Container(
            padding: const EdgeInsets.only(left:30,right: 30),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      
                      'Step $i/3',
                      style: TextStyle(
                        color: Colors.yellow.shade800,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  const Text('Rental Registration Form',style: TextStyle(
                    color: Color(0xFFC81D1D),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 2,
                  ),),
                  
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 12,
                      child: TextField(
                        
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText:'Mobile Number 2',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1,color: Colors.transparent)
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            

                          )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top:15,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 12,
                      child: TextField(

                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'Address',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1,color: Colors.transparent)
                          ),


                          border: OutlineInputBorder(borderRadius: 
                          BorderRadius.circular(8))
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top:15,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 12,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'Guarantor 1 Name',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1,color: Colors.transparent)
                          ),
                          border: OutlineInputBorder(borderRadius: 
                          BorderRadius.circular(8))
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top:15,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 12,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'Guarantor 1 Mob No',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1,color: Colors.transparent)
                          ),
                          border: OutlineInputBorder(borderRadius: 
                          BorderRadius.circular(8))
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top:15,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 12,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'Guarantor 1 Address',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1,color: Colors.transparent)
                          ),
                          border: OutlineInputBorder(borderRadius: 
                          BorderRadius.circular(8))
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top:15,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 12,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'Guarantor Name 2',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1,color: Colors.transparent)
                          ),

                          border: OutlineInputBorder(borderRadius: 
                          BorderRadius.circular(8))
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top:15,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 12,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'Guarantor 2 Mob No',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1,color: Colors.transparent)
                          ),
                          border: OutlineInputBorder(borderRadius: 
                          BorderRadius.circular(8))
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top:15,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 12,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'Guarantor 2 Address',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1,color: Colors.transparent)
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2,color: Color(0xFF674AEF)),
                            borderRadius: 
                          BorderRadius.circular(8))
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          activeColor: const Color(0xFFC81D1D),
                          value: checkBox, onChanged: (checkBox){
                          setState(() {
                            this.checkBox = checkBox!;
                          });
                  
                        }),
                        const Text('Accept the Terms and Conditions',style: TextStyle(color:Color(0xFFC81D1D),))
                      ],
                    ),
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        elevation: 12,
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 60,vertical: 15,
                              
                            ),
                            child: const Text('Back',style: TextStyle(
                                  color: Color(0xFFC81D1D),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,),
                          ),

                        ),
                      ),),
                      Material(
                        elevation: 12,
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child:InkWell(onTap:(){
                          Navigator.pushNamed(context, 'homePage');
                        },
                        child:Container(
                            padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 15,),
                            child: const Text('Save',style: TextStyle(
                              color:Color(0xFFC81D1D),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),)
                          ,))
                      )
                    ],
                  ),
                  TextButton(onPressed: (){
                    Navigator.popAndPushNamed(context, 'login');
                  },
                    child: const Text('Already Have An Account? Sign In',style: TextStyle(color:Color(0xFFC81D1D)),),
                  ),
                  
      
                  
                ]),
          ),
          Container()
        ]),
      ),
    );
  }
}
