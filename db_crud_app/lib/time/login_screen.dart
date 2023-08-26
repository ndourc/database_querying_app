// import 'package:flutter/material.dart';
// import 'package:timesheet_manager_app/screens/screens/signup_screen.dart';
// import 'package:timesheet_manager_app/utilities/colours.dart';
// import 'package:timesheet_manager_app/screens/widgets/text_field_input.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 32),
//         width: double.infinity,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Flexible(flex: 1, child: Container()),
//             const Text(
//               'Welcome back!',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 50,
//                 fontFamily: 'Bradley Hand ITC',
//                 color: greenColor,
//               ),
//             ),
//             const Text(
//               'Boost your coorperative productivity',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 23,
//                 fontFamily: 'Bradley Hand ITC',
//                 color: greenColor,
//               ),
//             ),
//             const SizedBox(height: 22),
//             Stack(
//               children: [
//                 const CircleAvatar(
//                   radius: 64,
//                   backgroundColor: greenColor,
//                   child: Icon(
//                     Icons.person,
//                     size: 100,
//                     color: greenishColor,
//                   ),
//                 ),
//                 Positioned(
//                   bottom: -10,
//                   left: 80,
//                   child: IconButton(
//                     onPressed: () {},
//                     icon: const Icon(
//                       Icons.add_a_photo,
//                       color: greenishColor,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 32),
//             TextFieldInput(
//               hintText: 'Enter your email...',
//               textInputType: TextInputType.emailAddress,
//               textEditingController: _emailController,
//             ),
//             const SizedBox(height: 32),
//             TextFieldInput(
//               hintText: 'Enter your password...',
//               textInputType: TextInputType.emailAddress,
//               textEditingController: _passwordController,
//               isPass: true,
//             ),
//             const SizedBox(height: 24),
//             InkWell(
//               onTap: () {},
//               child: Container(
//                 width: double.infinity,
//                 alignment: Alignment.center,
//                 padding: const EdgeInsets.symmetric(vertical: 12),
//                 decoration: const ShapeDecoration(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(
//                         Radius.elliptical(100, 100),
//                       ),
//                     ),
//                     color: greenColor),
//                 child: const Text(
//                   'Login',
//                   style: TextStyle(
//                     color: mobileBackgroundColor,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 100),
//             Flexible(flex: 2, child: Container()),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 8,
//                   ),
//                   child: const Text(
//                     "Don't have an account?",
//                     style: TextStyle(
//                       fontWeight: FontWeight.normal,
//                       color: greenishColor,
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () => const SignupScreen(),
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 8,
//                     ),
//                     child: const Text(
//                       ' Register now',
//                       style: TextStyle(
//                         fontWeight: FontWeight.normal,
//                         color: greenColor,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Flexible(flex: 7, child: Container()),
//           ],
//         ),
//       )),
//     );
//   }
// }