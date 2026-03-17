
import 'package:flutter/material.dart';
void main(List<String>args){
  runApp(MainPage());
}
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
              title:Text("头部区域")
          ),
          body: Container(
            child: Center(
                child:GestureDetector(
                  // onTap: (){
                  //   print("单机了");
                  // },
                    onDoubleTap: (){
                      print("双击了");
                    },

                    child: Text("中部区域"))
            ),
          ),
          bottomNavigationBar: Container(
            height: 80,
            child: Center(
                child:Text("底部区域")
            ),
          ),
        )
    );
  }
}
