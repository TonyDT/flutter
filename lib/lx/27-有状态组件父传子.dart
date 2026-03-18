
import 'package:flutter/material.dart';
void main(List<String>args){
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            padding: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text("父组件",
                    style: TextStyle(color: Colors.blue,fontSize: 20)),
                Child(message: "老高",)

              ],

            )
        ),
      ),
    );
  }
}
//有状态组件的子组件父传子
class Child extends StatefulWidget {
  final String? message;
  const Child({super.key,required this.message});

  @override
  State<Child> createState() => _ChildState();
}

class _ChildState extends State<Child> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Text("子组件${widget.message}",style: TextStyle(
          color: Colors.red,
          fontSize: 20,))
    );
  }
}

//无状态组件父传子
// class Child extends StatelessWidget {
//   final String? message; //自定义属性
//   const Child({super.key,this.message});

//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child:Text("子组件$message",style: TextStyle(
//           color: Colors.red,
//           fontSize: 20,
//
//         ),),
//     );
//   }
// }



