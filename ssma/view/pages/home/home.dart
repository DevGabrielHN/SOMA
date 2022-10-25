import 'package:flutter/material.dart';
import 'package:soma/ssma/view/uteis/cabecalho.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Cabecalho(
        drawer: true,
        page: 'Home',
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: BouncingScrollSimulation.maxSpringTransferVelocity,
              image: AssetImage('resorces/odebrecht_logo_1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ),
      );
  }
}

