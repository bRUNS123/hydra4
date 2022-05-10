// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// import '../signup_screen.dart';

// class LoggedInPage extends StatelessWidget {
//   static const routeName = '/loggedin';
//   final GoogleSignInAccount user;

//   const LoggedInPage({Key? key, required this.user}) : super(key: key);

//   @override
//   Widget build(BuildContext context) => Scaffold(
//       appBar: AppBar(
//         title: const Text('Sesión Iniciada'),
//         centerTitle: true,
//         actions: [
//           TextButton(
//             child: const Text('Cerrar Sesión'),
//             onPressed: () async {
//               Navigator.of(context).pushReplacement(MaterialPageRoute(
//                 builder: (context) => const SignUpScreen(),
//               ));
//             },
//           )
//         ],
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         color: Colors.blueGrey.shade900,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Perfil',
//               style: TextStyle(
//                 fontSize: 24,
//               ),
//             ),
//             const SizedBox(height: 32),
//             CircleAvatar(
//               radius: 40,
//               backgroundImage: NetworkImage(user.photoUrl!),
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             Text(
//               'Nombre: ' + user.displayName!,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Email: ' + user.email,
//               style: TextStyle(color: Colors.white, fontSize: 24),
//             ),
//           ],
//         ),
//       ));
// }
