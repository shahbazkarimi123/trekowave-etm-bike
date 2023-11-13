import 'package:flutter/material.dart';

class IdProofs extends StatefulWidget {
  const IdProofs({super.key});

  @override
  State<IdProofs> createState() => _IdProofsState();
}

class _IdProofsState extends State<IdProofs> {
  bool valueCheck2 = false;
  @override
  Widget build(BuildContext context) {
    int i = 2;
    List<String> item = [
      'Selfie *:',
      'Organisation ID Proof*:',
      'Driving Licence (Front):',
      'Driving Licence (Back):',
      'Voter ID/ Passport (Front)',
      'Voter ID/ Passport (Back)',
      'Aadhar Card (Front)*:',
      'Aadhar Card (Back)*:'
    ];

    return Scaffold(
      backgroundColor: Color(0xFFDAD8D8),
      body: SingleChildScrollView(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration:const BoxDecoration(
                boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 25.0,
                      offset: Offset(0.5, 0.75)
                    )
                  ],

                color: Colors.black,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50)),
              ),
              child: Image.asset('assets/images/etmbikes.png'),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              padding: const EdgeInsets.only(left: 15, right: 15),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2),
              child: Column(
                children: [
                  const SizedBox(height: 8,),
                  Align(
                      alignment: Alignment.bottomRight,
                      
                      child: Text(
                        'Step $i/3',
                        style: TextStyle(
                          color: Colors.yellow.shade800,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  const Text('ID Proofs',style: TextStyle(height: 0.1,color: Color(0xFFC81D1D),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 2,),),
                  GridView.builder(
                    itemCount: item.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height / 3.8),
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow:const <BoxShadow>[
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 8.0,
                                offset: Offset(0.0,0.75),
                                
                              )
                            ],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                              color: Colors.grey[300]),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  item[index],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 70,
                                  color: Color(0xFFC81D1D),
                                )
                              ]),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 15),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Checkbox(
                          value: valueCheck2,
                          activeColor:const Color(0xFFC81D1D),
                          onChanged: (valueCheck2) {
                            setState(() {
                              this.valueCheck2 = valueCheck2!;
                            });
                          }),
                      const Text(
                        'Accept the Terms and Conditions',
                        style: TextStyle(color: Color(0xFFC81D1D)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Material(
                        elevation: 10,
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 15),
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                color: Color(0xFFC81D1D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 10,
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'rentalRegistrationForm');
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 15),
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                color: Color(0xFFC81D1D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
