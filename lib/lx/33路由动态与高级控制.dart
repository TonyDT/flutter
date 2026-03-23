

import 'package:flutter/material.dart';

void main(List<String>args){
  runApp(MainPage());
}
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/goodsList",
      routes: {
        "/goodsList":(context)=> GoodsList()
      },
      onGenerateRoute: (settings){
        print(settings.name);
        if(settings.name == "/cartList"){
          bool isLogin = true;
          if(isLogin){
            return MaterialPageRoute(builder: (context) =>CartList());
          }else{
            return MaterialPageRoute(builder: (context)=>LoginPage());
          }
        }
      },
    );
  }
}
//商品列表
class GoodsList extends StatefulWidget {
  const GoodsList({super.key});

  @override
  State<GoodsList> createState() => _GoodsListState();
}

class _GoodsListState extends State<GoodsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品列表"),
      ),
      body: Center(
        child: TextButton(onPressed: (){
          Navigator.pushNamed(context, "/cartList");
        }, child: Text("加入购物车")),
      ),
    );
  }
}

//购物车列表
class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("购物车列表"),
      ),
      body: Center(
        child: TextButton(onPressed: (){}, child: Text("去支付")),
      ),
    );
  }
}
//登录页面
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("登录页面"),
      ),
      body: Center(
        child: TextButton(onPressed: (){}, child: Text("去登录")),
      ),
    );
  }
}
