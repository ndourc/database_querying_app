// import 'package:flutter/material.dart';
// import 'package:timesheet_manager_app/utilities/colours.dart';
// import 'package:timesheet_manager_app/screens/widgets/text_field_input.dart';


// class SignupScreen extends StatefulWidget {
//   const SignupScreen({Key? key}) : super(key: key);

//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _usernameController = TextEditingController();

//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _usernameController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 32),
//           width: double.infinity,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Text('Welcome to Timely!',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 50,
//                   fontFamily: 'Bradley Hand ITC',
//                   color: greenColor,
//                 ),
//               ),
//               const Text('Unlock your team performance',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 23,
//                 fontFamily: 'Bradley Hand ITC',
//                 color: greenColor,
//                 ),
//               ),
//               Flexible(flex: 1, child: Container()),
//               TextFieldInput(
//                 hintText: 'Enter your email...',
//                 textInputType: TextInputType.emailAddress,
//                   textEditingController: _emailController,
//               ),
//               const SizedBox(height: 32),
//               TextFieldInput(
//                 textEditingController: _usernameController,
//                 hintText: 'Username...',
//                 textInputType: TextInputType.text,
//                 ),
//               const SizedBox(height: 32),
//               TextFieldInput(
//                 hintText: 'Enter your password...',
//                 textInputType: TextInputType.emailAddress,
//                   textEditingController: _passwordController,
//                   isPass: true,
//               ),
//               const SizedBox(height: 24),
//               InkWell(
//                 onTap: () {},
//                 child: Container(
//                   width: double.infinity,
//                   alignment: Alignment.center,
//                   padding:  const EdgeInsets.symmetric(vertical: 12),
//                   decoration: const ShapeDecoration(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.elliptical(100, 100),
//                       ),
//                     ),
//                     color: greenColor
//                   ),
//                   child: const Text('Sign up',
//                   style: TextStyle(
//                     color: mobileBackgroundColor,
//                   ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 100),
//               Flexible(flex: 2, child: Container()),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 8,
//                     ),
//                     child: const Text(
//                       "Already have an account?",
//                       style: TextStyle(
//                         fontWeight: FontWeight.normal,
//                         color: greenishColor,
//                       ),  
//                     ),
//                   ),
//                     InkWell(
//                       onTap: () {} ,
//                       child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 8,
//                       ),
//                       child: const Text(' Login',
//                       style: TextStyle(
//                         fontWeight: FontWeight.normal,
//                         color: greenColor,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Flexible(flex: 7, child: Container()),
//             ],
//           ),
//         )
//       ),
//     );
//   }
// }