// import 'package:flutter/material.dart';

// class ECom extends StatelessWidget {
//   const ECom({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: const Align(
//           child: Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
//             child: Text(
//               'Made 2 Automate ',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontFamily: 'Outfit',
//                 color: Color(0xFF0E2964),
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//         elevation: 2,
//       ),
//       body: const SizedBox(
//         height: double.infinity,
//         width: double.infinity,
//         child: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Column(
//             children: [
//               Row(),
//               Row(),
//               Row(),

//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class eComPage extends StatefulWidget {
//   const eComPage({super.key});

//   @override
//   State<eComPage> createState() {
//     return _eComPageState();
//   }
// }

// class _eComPageState extends State<eComPage> {
//   SearchBar searchBar;

//   AppBar buildAppBar(BuildContext context) {
//     return new AppBar(
//         title: new Text('My Home Page'),
//         actions: [searchBar.getSearchAction(context)]);
//   }

//   _MyHomePageState() {
//     searchBar = new SearchBar(
//         inBar: false,
//         setState: setState,
//         onSubmitted: print,
//         buildDefaultAppBar: buildAppBar);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(appBar: searchBar.build(context));
//   }
// }

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ECom extends StatelessWidget {
  // This widget is the root of your application.
  ECom({super.key});

  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
      ),
    )
    ..loadRequest(
      Uri.parse('https://made2automate.com/'),
    );

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SafeArea(
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    ));
  }
}

// import 'package:flutter/material.dart';

// class ECom extends StatelessWidget {
//   const ECom({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('AppBar Demo'),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.add_alert),
//             tooltip: 'Show Snackbar',
//             onPressed: () {},
//           ),
//           IconButton(
//               icon: const Icon(Icons.navigate_next),
//               tooltip: 'Go to the next page',
//               onPressed: () {}),
//           IconButton(
//               icon: const Icon(Icons.navigate_next),
//               tooltip: 'Go to the next page',
//               onPressed: () {}),
//         ],
//       ),
//       body: Column(
//         children: [
//           Row(
//             children: [
//               Image.asset(
//                 'aassets/images/download-removebg-preview.png',
//                 height: 20,
//                 width: 20,
//               ),
//               const SizedBox(
//                 width: 30,
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.phone),
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.shopping_bag_outlined),
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.menu),
//               ),
//             ],
//           ),
//           const Card(
//             elevation: 6,
//             child: Text('Controller', textAlign: TextAlign.center),
//           ),
//           Container(
//             margin: const EdgeInsets.all(8),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Column(
//                       children: [
//                         Image.asset(
//                           'assets/images/1-32.webp',
//                           height: 60,
//                           width: 60,
//                         ),
//                         const Expanded(
//                           child: Text(
//                             'Length Counter Meter with PNP/NPN Sensor Input I Make: Multispan LC-1046D',
//                             softWrap: false,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                         const Text('Rs. 1500'),
//                         ElevatedButton(
//                           onPressed: () {},
//                           child: const Text('ADD TO CART'),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Image.asset('assets/images/1-32.webp'),
//                         const Expanded(
//                           child: Text(
//                             'Water Level Controller with 3 Level Sensor I Model: 4421AD1 GIC',
//                             softWrap: false,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                         const Text('Rs. 1200'),
//                         const Text('ADD TO CART'),
//                       ],
//                     )
//                   ],
//                 ),
//                 const Row(
//                   children: [
//                     Column(
//                       children: [
//                         //photo
//                         //text
//                         //price
//                         //button
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         //photo
//                         //text
//                         //price
//                         //button
//                       ],
//                     )
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
