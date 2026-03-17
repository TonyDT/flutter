
import 'package:ccdate/lx/3-%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6-StatelessWiget%E6%97%A0%E7%8A%B6%E6%80%81.dart';
import 'package:flutter/material.dart';
void main(List<String>args){
  runApp(MainPage());
}
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  TextEditingController _phoneController = TextEditingController();//账号控制器
  TextEditingController _codeController = TextEditingController();//密码控制器


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("登录"),
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child:Column(
              children: [
                TextField(
                  controller: _phoneController,
                  decoration:InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    hintText: "请输入账号",
                    fillColor: Colors.amber[50],
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25)
                    ),//没有边框

                  ),
                ),
                SizedBox(height: 10),

                TextField(
                  onChanged: (value){
                    print(value);
                  },
                  onSubmitted: (value){
                    print(value);
                  },
                  controller: _codeController,
                  obscureText: true,//不显示实际输入内容
                  decoration:InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    hintText: "请输入密码",
                    fillColor: Colors.amber[50],
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25)
                    ),//没有边框
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: TextButton(onPressed: (){
                    print("登录${_phoneController.text}");

                    print("密码${_codeController.text}");
                  }, child: Text("登录",style: TextStyle(color: Colors.white),))
                  ,
                )

              ],
            )
        ),
      ),
    );
  }
}
