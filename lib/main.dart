// import 'package:flutter/material.dart';
// // exercise 1
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 76, 75, 75),
//         body: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: [
//               Hobby(
//                 icon: Icons.travel_explore,
//                 title: 'Travellling',
//                 color: Colors.green,
//               ),
//               SizedBox(height: 20),
//               Hobby(
//                 icon: Icons.skateboarding,
//                 title: 'Skating',
//                 color: Colors.blue,
//               ),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// class Hobby extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final Color color;
//   const Hobby({
//     super.key,
//     required this.icon,
//     required this.title,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//       child: Row(
//         children: [
//           Icon(icon, size: 30, color: Colors.white),
//           SizedBox(width: 20),
//           Text(title, style: TextStyle(fontSize: 20, color: Colors.white)),
//         ],
//       ),
//     );
//   }
// }

// exercise 2 the button

// import 'package:flutter/material.dart';

// enum ButtonType { primary, secondary, disabled }

// enum IconPosition { left, right }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.pink,
//         body: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CustomButton(
//                 label: 'submit',
//                 iconData: Icons.fork_right,
//                 buttonType: ButtonType.primary,
//                 iconPosition: IconPosition.left,
//               ),
//               SizedBox(height: 20),
//               CustomButton(
//                 label: 'Time',
//                 iconData: Icons.time_to_leave,
//                 buttonType: ButtonType.secondary,
//                 iconPosition: IconPosition.right,
//               ),
//               SizedBox(height: 20),
//               CustomButton(
//                 label: 'Account',
//                 iconData: Icons.telegram,
//                 buttonType: ButtonType.disabled,
//                 iconPosition: IconPosition.right,
//               ),
//             ],
//           ),
//         ),
//       ),
//     )
//   );
// }

// class CustomButton extends StatelessWidget {
//   final String label;
//   final IconData iconData;
//   final IconPosition iconPosition;
//   final ButtonType buttonType;
//   const CustomButton({
//     super.key,
//     required this.label,
//     required this.iconData,
//     required this.buttonType,
//     required this.iconPosition,
//   });
//   Color _getColor() {
//     final colors = {
//       ButtonType.primary: Colors.blue,
//       ButtonType.secondary: Colors.green,
//       ButtonType.disabled: Colors.grey,
//     };
//     return colors[buttonType]!;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: _getColor(),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: iconPosition == IconPosition.left
//             ? [
//                 Icon(iconData, color: Colors.white),
//                 SizedBox(width: 10),
//                 Text(
//                   label,
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                 ),
//               ]
//             : [
//                 Text(
//                   label,
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                 ),
//                 SizedBox(width: 10),
//                 Icon(iconData, color: Colors.white),
//               ],
//       ),
//     );
//   }
// }

// exercise 3

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blue,
//         body: Padding(
//           padding: EdgeInsets.only(top: 60),
//           child: Column(
//             children: [
//               ProductCard(product: Product.dart),
//               SizedBox(height: 10),
//               ProductCard(product: Product.flutter),
//               SizedBox(height: 10),
//               ProductCard(product: Product.firebase),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// enum Product {
//   dart(
//     title: 'Dart',
//     description: 'The best object language',
//     image: 'assets/ex3/dart.png',
//   ),
//   flutter(
//     title: 'Flutter',
//     description: 'The best mobile widget library',
//     image: 'assets/ex3/flutter.png',
//   ),
//   firebase(
//     title: 'Firebase',
//     description: 'The best cloud database',
//     image: 'assets/ex3/firebase.png',
//   );

//   final String title;
//   final String description;
//   final String image;

//   const Product({
//     required this.title,
//     required this.description,
//     required this.image,
//   });
// }

// class ProductCard extends StatelessWidget {
//   final Product product;

//   const ProductCard({required this.product, super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Padding(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: Image.asset(product.image, width: 100, height: 100),
//             ),
//             SizedBox(height: 10),
//             Text(
//               product.title,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 5),
//             Text(
//               product.description,
//               style: TextStyle(fontSize: 14, color: Colors.black),
//               textAlign: TextAlign.left,
//             ),
//           ],
//         ),s
//       ),
//     );
//   }
// }

// exercise 4
import 'package:flutter/material.dart';

enum TypeWeather { sunny, cloudy, sunnyCloudy, veryCloudy }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Icon(Icons.menu, color: Colors.white)],
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Column(
              children: [
                WeatherCard(typeWeather: TypeWeather.cloudy),
                SizedBox(height: 15),
                WeatherCard(typeWeather: TypeWeather.sunnyCloudy),
                SizedBox(height: 15),
                WeatherCard(typeWeather: TypeWeather.sunny),
                SizedBox(height: 15),
                WeatherCard(typeWeather: TypeWeather.veryCloudy),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  final TypeWeather typeWeather;
  const WeatherCard({super.key, required this.typeWeather});

  Gradient get gradient {
    switch (typeWeather) {
      case TypeWeather.cloudy:
        return const LinearGradient(
          colors: [Colors.purpleAccent, Colors.purple],
        );
      case TypeWeather.sunnyCloudy:
        return const LinearGradient(colors: [Colors.greenAccent, Colors.green]);
      case TypeWeather.sunny:
        return const LinearGradient(colors: [Colors.redAccent, Colors.red]);
      case TypeWeather.veryCloudy:
        return const LinearGradient(
          colors: [Colors.orange, Colors.orangeAccent],
        );
    }
  }

  String get image {
    switch (typeWeather) {
      case TypeWeather.cloudy:
        return "assets/ex4/cloudy.png";
      case TypeWeather.sunnyCloudy:
        return "assets/ex4/sunnyCloudy.png";
      case TypeWeather.sunny:
        return "assets/ex4/sunny.png";
      case TypeWeather.veryCloudy:
        return "assets/ex4/veryCloudy.png";
    }
  }

  String get location {
    switch (typeWeather) {
      case TypeWeather.cloudy:
        return "Phnom Penh";
      case TypeWeather.sunnyCloudy:
        return "Paris";
      case TypeWeather.sunny:
        return "Rome";
      case TypeWeather.veryCloudy:
        return "Toulouse";
    }
  }

  String get minTemp {
    return "Min 10.0°C";
  }

  String get maxTemp {
    if (typeWeather == TypeWeather.cloudy) {
      return "Max 30.0°C";
    }
    return "Max 40.0°C";
  }

  String get temp {
    switch (typeWeather) {
      case TypeWeather.cloudy:
        return "12.2°C";
      case TypeWeather.sunnyCloudy:
        return "22.2°C";
      case TypeWeather.sunny:
        return "45.2°C";
      case TypeWeather.veryCloudy:
        return "45.2°C";
    }
  }

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.white,
      elevation: 10,
      shadowColor: Colors.black.withOpacity(0.7),
      borderRadius: BorderRadius.circular(25),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: CircleAvatar(backgroundImage: AssetImage(image)),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      minTemp,
                      style: TextStyle(color: Colors.grey[300], fontSize: 11),
                    ),
                    Text(
                      maxTemp,
                      style: TextStyle(color: Colors.grey[300], fontSize: 11),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: -60,
            top: -20,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                gradient: gradient,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 35,
            child: Text(
              temp,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
