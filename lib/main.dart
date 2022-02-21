// import 'dart:ui';
// import 'dart:html';
// import 'dart:math';
import 'dart:convert';
import 'package:fl_work_file_2/details.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:figma/figma.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

//Flutter Dismissable
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var selected = "Choose";
//   var value =0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Dismissible(
//           key: ValueKey("abc"),
//           secondaryBackground: Container(
//             color: Colors.green,
//             child: Icon(Icons.delete,size: 40,),
//           ),
//           background: Container(
//             color: Colors.blue,
//             child: Icon(Icons.delete,size: 40,),
//           ),
//           child: ListTile(
//             title: Text("Easy Explanation"),
//             subtitle: Text("I love learning"),
//             trailing: Icon(Icons.ac_unit),
//           ),
//         ),
//       ),
//     );
//   }
// }
//Flutter CheckBox
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   bool _value = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(_value==false? "Unchecked": "Checked", style: TextStyle(fontSize: 50),),
//             Checkbox(value: _value, onChanged: (val){
//               setState(() {
//                 _value=val!;
//                 print(_value);
//               });
//             })
//               // setState(() {
//               //   _value=val;
//               //   print(_value);
//               // });
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//Animated crossfade flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   bool check =true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: AnimatedCrossFade(
//                 firstChild: Container(
//                   height: 200,
//                   color: Colors.deepOrange,
//                   child: Center(
//                     child: RaisedButton(onPressed: () {
//                       setState(() {
//                         check=false;
//                       });
//                     }),
//                   ),
//                 ),
//                 secondChild: Center(child: Text("Greate",style: TextStyle(fontSize: 59),)),
//                 crossFadeState: check?CrossFadeState.showFirst:CrossFadeState.showSecond,
//                 duration: Duration(seconds: 1)),
//           )
//         ],
//       ),
//     );
//   }
// }
// Switch in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   bool _value =false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: _value==false?Colors.red:Colors.purple,
//       body: Center(
//         child: Switch(value: _value, onChanged: (val){
//           setState(() {
//             _value=val;
//             print(_value);
//           });
//         }),
//       ),
//     );
//   }
// }
//Animated Container in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   bool _value = false;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         floatingActionButton: FloatingActionButton(onPressed: (){
//           setState(() {
//             _value=!_value;
//           });
//         }),
//         body: Center(
//           child: AnimatedContainer(
//             height: _value==false?150:350,
//             width: _value==false?150:300,
//               color: Colors.purple,
//               duration: Duration(seconds: 4)
//           ) ,
//         ),
//       ),
//     );
//   }
// }
//ExpansionTile widget in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   bool _value = false;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             ExpansionTile(title: Text("One"),
//               subtitle: Text("This is one"),
//               leading: Icon(Icons.access_time),
//               trailing: Icon(Icons.arrow_downward),
//               children: [
//                 Container(
//                   height: 200,
//                   color: Colors.purple,
//                 )
//               ],
//             ),
//             ExpansionTile(title: Text("Two"),
//               subtitle: Text("This is Two"),
//               leading: Icon(Icons.access_time),
//               trailing: Icon(Icons.arrow_downward),
//               children: [
//                 Container(
//                   height: 200,
//                   color: Colors.purple,
//                 )
//               ],
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//Tooltip widget in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   bool _value = false;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IconButton(onPressed: (){}, icon: Icon(Icons.dashboard),tooltip: "dashboard",),
//             Tooltip(
//               message: "Container",
//               child: Container(
//                 height: 250,
//                 color: Colors.deepOrange,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//BackdropFilter in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   bool _value = false;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 height: 300,
//                 width: 300,
//                 color: Colors.deepOrange,
//               ),
//               BackdropFilter(filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),child: Container(
//                 color: Colors.white.withOpacity(0.3),
//               ),)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//DateTime picker in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   bool _value = false;
//   DateTime? _dateTime;
//   TimeOfDay? _timeOfDay;
//   getDate() async {
//     DateTime? date = await showDatePicker(
//         context: context,
//         initialDate: DateTime(DateTime.now().year),
//         firstDate: DateTime(DateTime.now().year - 20),
//         lastDate: DateTime(DateTime.now().year + 2));
//     setState(() {
//       _dateTime = date;
//     });
//   }
//
//   getTime() async {
//     TimeOfDay? time =
//         await showTimePicker(context: context, initialTime: TimeOfDay.now());
//     setState(() {
//       _timeOfDay = time;
//     });
//   }
//
//   // @override
//   // void initState() {
//   //   _dateTime;
//   //   super.initState();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               _dateTime == null
//                   ? Text("Choose Date")
//                   : Text(
//                       "Date: ${_dateTime!.year},"
//                       "${_dateTime!.month},"
//                       "${_dateTime!.day}",
//                       style: TextStyle(fontSize: 30),
//                     ),
//               _timeOfDay == null
//                   ? Text("Choose Time")
//                   : Text(
//                       "Time: ${_timeOfDay!.hour}-${_timeOfDay!.minute}",
//                       style: TextStyle(fontSize: 30),
//                     ),
//               RaisedButton(
//                 onPressed: () {
//                   getDate();
//                 },
//                 child: Text("Date"),
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   getTime();
//                 },
//                 child: Text("Time"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//Flutter Transform widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Transform.rotate(
//             angle: pi/4,
//             child: Container(
//               height: 150,
//               width: 150,
//               color: Colors.pink,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// Fetching json data with http request in flutter
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var data;
//
//   Future getDate2() async {
//     var response =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
//     setState(() {
//       var decode = json.decode(response.body);
//       data = decode;
//       print(data);
//     });
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     this.getDate2();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: ListView.builder(
//             itemCount: data == null ? 0 : data.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(data[index]["name"]),
//                 subtitle: Text(data[index]["username"]),
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => DetailsPage(
//                                 data[index],
//                               )));
//                 },
//               );
//             }),
//       ),
//     );
//   }
// }

