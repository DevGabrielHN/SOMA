import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../uteis/input.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _loading = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('resorces/fundo_login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Container(
              width: 300,
              height: 350,
              color: Colors.white70,
              child: Align(
                child: SizedBox(
                  width: 250,
                  height: 300,
                  child: Column(
                    children: [
                      Input(labelText: 'login.Input.Login'.tr,),
                      SizedBox(height: 20,),
                      Input(labelText: 'login.Input.Senha'.tr,obscureText: true),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if(_loading)
                            Container(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                            ),
                          SizedBox(width: 120 ,),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Theme.of(context).colorScheme.secondary,
                                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () async {

                                setState(() {
                                  _loading = true;
                                });

                                await Future.delayed(const Duration(seconds: 2), () => Navigator.of(context).pushNamed('/'));

                                setState(() {
                                  _loading = false;
                                });
                              }, child: Text('login.ElevatedButton.Acessar'.tr)
                          ),
                        ],
                      ),
                      Expanded(child: Image.asset('resorces/logo_soma.png'))
                    ],
                  ),
                ),
              ),
            )),
      ),
    );


  }
}
