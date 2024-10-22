import 'package:flutter/material.dart';
import 'package:learndart/pages/notes_Home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); // Initialize Hive for Flutter
  await Hive.openBox('mybbox'); // Open the Hive box
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:learndart/pages/notes_Home.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// void main() async {
//   runApp(const MyApp());
//   WidgetsFlutterBinding.ensureInitialized();
//   await Hive.initFlutter(); // Initialize Hive for Flutter
//   var box = await Hive.openBox('mybbox');
//   if (kDebugMode) {
//     print(box);
//   } // Open the Hive box
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }



// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//         backgroundColor: Colors.blue,
//       ),
//       body: const Center(
//         child: Text('Welcome to the Home Page!'),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// //INFINIITE VIEW
// /// Main function
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.deepPurple,
//             leading: const Icon(
//               Icons.menu_sharp,
//               color: Colors.white,
//             ),
//             actions: [
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.ice_skating,
//                   color: Colors.white,
//                 ),
//               )
//             ],
//             title: const Text(
//               'APPBAR!',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           backgroundColor: const Color.fromARGB(255, 175, 140, 236),
//           body: ListView.builder(
//             itemCount: null, // No fixed item count, for infinite scrolling
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text('Item $index'),
//               );
//             },
//           )),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// //PAGE VIEW
// /// Main function
// void main() {
//   runApp(const MyApp());
// }

// List names = ['app', 'bass', 'capp', 'irfuie', 'jwwegdvmwhdvmd'];

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.deepPurple,
//             leading: const Icon(
//               Icons.menu_sharp,
//               color: Colors.white,
//             ),
//             actions: [
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.ice_skating,
//                   color: Colors.white,
//                 ),
//               )
//             ],
//             title: const Text(
//               'APPBAR!',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           backgroundColor: const Color.fromARGB(255, 175, 140, 236),
//           body: PageView.builder(
//             itemCount: names.length, // Total pages
//             itemBuilder: (context, index) {
//               return Center(
//                 child: Text('Page ${names[index]}',
//                     style: const TextStyle(
//                       fontSize: 24,
//                     )),
//               );
//             },
//           )),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// GRIDVIEW

// /// Main function
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.deepPurple,
//             leading: const Icon(
//               Icons.menu_sharp,
//               color: Colors.white,
//             ),
//             actions: [
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.ice_skating,
//                   color: Colors.white,
//                 ),
//               )
//             ],
//             title: const Text(
//               'APPBAR!',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           backgroundColor: const Color.fromARGB(255, 175, 140, 236),
//           body: GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3, // 2 items per row
//             ),
//             itemCount: 100, // Total items
//             itemBuilder: (context, index) {
//               return Card(
//                 child: Center(child: Text('Grid Item ${index * index}')),
//               );
//             },
//           )),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// //LISTVIEW

// /// Main function
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.deepPurple,
//             leading: const Icon(
//               Icons.menu_sharp,
//               color: Colors.white,
//             ),
//             actions: [
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.ice_skating,
//                   color: Colors.white,
//                 ),
//               )
//             ],
//             title: const Text(
//               'APPBAR!',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           backgroundColor: const Color.fromARGB(255, 175, 140, 236),
//           body: ListView.builder(
//             itemCount: 100, // Total items
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text('Item $index'),
//                 subtitle: Text('Subtitle ${index * index}'),
//               );
//             },
//           )),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// //import 'package:flutter/rendering.dart';

// /// Main function
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.deepPurple,
//           leading: const Icon(
//             Icons.menu_sharp,
//             color: Colors.white,
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.ice_skating,
//                 color: Colors.white,
//               ),
//             )
//           ],
//           title: const Text(
//             'APPBAR!',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         backgroundColor: const Color.fromARGB(255, 175, 140, 236),
//         body: ListView(
//           scrollDirection: Axis.horizontal,
//           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           // crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               width: 300,
//               decoration: const BoxDecoration(
//                 color: Colors.deepPurple,
//               ),
//             ),
//             Container(
//               height: 300,
//               width: 300,
//               decoration: const BoxDecoration(
//                 color: Color.fromARGB(255, 136, 85, 223),
//               ),
//               child: const Text(
//                 'THIS IS A COURSE!',
//                 style: TextStyle(fontSize: 38, color: Colors.white),
//               ),
//             ),
//             Container(
//               height: 300,
//               width: 300,
//               decoration: BoxDecoration(
//                 color: Colors.deepPurple,
//                 borderRadius: BorderRadius.circular(56),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// ///container
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.deepPurple,
//           leading: const Icon(
//             Icons.menu_sharp,
//             color: Colors.white,
//           ),
//           actions: [
//             IconButton(
//                 onPressed: () {
//                   print(8);
//                 },
//                 icon: Icon(
//                   Icons.ice_skating,
//                   color: Colors.white,
//                 ))
//           ],
//           title: const Center(
//             child: Text(
//               'APPBAR!',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//         backgroundColor: const Color.fromARGB(255, 175, 140, 236),
//         body: Center(
//           child: Container(
//             height: 300,
//             width: 300,
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//             decoration: BoxDecoration(
//               color: Colors.deepPurple,
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.5),
//                   blurRadius: 15,
//                   offset: const Offset(0, 10), // Shadow position
//                 ),
//               ],
//             ),
//             child: const Icon(
//               Icons.add_a_photo_sharp,
//               color: Colors.white,
//               size: 40,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

  ///SNACKBAR
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'ALARM',
//             style: TextStyle(fontSize: 20, shadows: [
//               Shadow(
//                 color: Colors.grey,
//                 offset: Offset(2, 2),
//                 blurRadius: 5,
//               )
//             ]),
//           ),
//           backgroundColor: Colors.cyan,
//         ),
//         body: const Center(child: Snackkbar()),
//       ),
//     );
//   }
// }

// class Snackkbar extends StatefulWidget {
//   const Snackkbar({super.key});

//   @override
//   State<Snackkbar> createState() => _SnackkbarState();
// }

// class _SnackkbarState extends State<Snackkbar> {
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         final sc = SnackBar(
//           content: const Text('This is snackbar!!'),
//           action: SnackBarAction(label: 'Undo', onPressed: () {}),
//           duration: const Duration(seconds: 1),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20.0), // Rounded corners
//           ),
//           behavior: SnackBarBehavior.floating, // Floating snackbar behavior
//           margin: const EdgeInsets.all(10), // Margin around the snackbar
//           padding: const EdgeInsets.symmetric(
//               horizontal: 16.0), // Padding inside snackbar
//           elevation: 6.0, // Elevation (shadow)
//           onVisible: () {
//             print('SnackBar is visible'); // Callback when snackbar is shown
//           },
//           dismissDirection: DismissDirection.horizontal, // Dismiss direction
//         );
//         ScaffoldMessenger.of(context).showSnackBar(sc);
//       },
//       child: const Text('Show SnackBar'),
//     );
//   }
// }}