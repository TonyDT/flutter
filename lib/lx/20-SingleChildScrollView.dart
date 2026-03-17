
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
  ScrollController _controller = ScrollController();//滚动条的控制器

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("登录"),
            centerTitle: true,
          ),
          body: Stack(
            children: [SingleChildScrollView(
                controller: _controller,
                padding: EdgeInsets.all(20),
                physics: const BouncingScrollPhysics(),
                child:Column(
                  children: List.generate(100,(index){
                    return  Container(
                        margin: EdgeInsets.only(top: 10),
                        width:double.infinity,
                        height:100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: index == 99   // 假设是第100个（index从0开始）
                              ?  BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          )
                              : BorderRadius.circular(16),   // 其他 item 全圆角
                        ),
                        alignment: Alignment.center,
                        child: Text("我是第${index +1}个",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,)));
                  } ),
                )
            ),
              //放置堆叠组件
              Positioned(
                  right: 10,
                  top: 10,
                  child: GestureDetector(
                    onTap: (){
                      debugPrint("点我了");
                      // _controller.jumpTo(2000);
                      // _controller.jumpTo(_controller.position.maxScrollExtent);
                      _controller.animateTo(_controller.position.maxScrollExtent, duration: Duration(seconds: 1), curve: Curves.bounceIn);
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.red),
                      alignment: Alignment.center,
                      width: 80,
                      height: 80,
                      child: Text("去底部",style: TextStyle(color: Colors.white),),
                    ),
                  )),
              Positioned(
                  right: 10,
                  bottom: 10,
                  child: GestureDetector(
                    onTap: (){
                      debugPrint("点我了2");
                      // _controller.jumpTo(_controller.position.minScrollExtent);
                      _controller.animateTo(_controller.position.minScrollExtent, duration: Duration(seconds: 1), curve: Curves.easeIn);
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.red),
                      alignment: Alignment.center,
                      width: 80,
                      height: 80,
                      child: Text("去顶部",style: TextStyle(color: Colors.white),),
                    ),
                  )),


            ],
          )
      ),
    );
  }
}
