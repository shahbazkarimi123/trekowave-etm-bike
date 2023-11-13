import 'package:etmbikes/authentication/basic_details.dart';
import 'package:etmbikes/authentication/id_proofs.dart';
import 'package:etmbikes/authentication/login.dart';
import 'package:etmbikes/authentication/rental_registration_form.dart';
import 'package:etmbikes/screen/home_screen.dart';
import 'package:etmbikes/user_interface/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login':(context)=>const LoginPage(),
      'basicDetails':(context)=> const BasicDetails(),
      'homePage':(context) => const HomePage(),
      'welcomPage':(context) => const WelcomePage(),
      'idProofs':(context)=>const IdProofs(),
      'rentalRegistrationForm':(context)=>const RentalRegistrationForm(),
    },
    
  ));
}