// import "package:flutter/material.dart";

// void main(){
//   runApp(MaterialApp(home: HomePage()));
// }

// class HomePage extends StatefulWidget{

//   @override
//   State<HomePage> createState() => HomePageState();
// }

// class HomePageState extends State<HomePage>{
//   int _count = 0;

//   @override 
//   Widget build(BuildContext context){
//       return Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildFutureBuilder(),
//             SizedBox(height: 20,),
//             _buildStreamBuilder(),
//           ],
//         )
//       );
//   }

//   Widget _buildFutureBuilder(){
//     return Center(
//       child: FutureBuilder<int>(
//         future:_calculateSquare(10),
//         builder: (context, snapshot) {
//           if(snapshot.connectionState == ConnectionState.done){
//             return Text('Square = ${snapshot.data}');
//           }
//           return CircularProgressIndicator();
//         })
//       );
//     }

//   Future<int>_calculateSquare(int num) async{
//     await Future.delayed(Duration(seconds: 5));
//     return num*num;
//   }

//   Widget _buildStreamBuilder(){
//     return Center(
//       child: StreamBuilder<int>(
//         stream: _stopWatch(),
//         builder: (context, snapshot){
//           if (snapshot.connectionState == ConnectionState.active){
//             return Text('Stopwatch: ${snapshot.data}');
//           }

//           return CircularProgressIndicator();
//         }
//       )
//     );
//   }

//   Stream<int> _stopWatch() async*{
//     while (true){
//       await Future.delayed(Duration(seconds: 1));
//       yield _count++;
//     }
//   }
// } 