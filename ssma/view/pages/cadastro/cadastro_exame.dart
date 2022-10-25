import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soma/ssma/view/uteis/cabecalho.dart';

import '../../uteis/divisor.dart';
import '../../uteis/input.dart';
class CadastroExame extends StatelessWidget {
  const CadastroExame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Cabecalho(
        drawer: false,
        page: 'cadastro_exame.Cabecalho.Cadastro exame'.tr,
        body: Container(
            child: Center(
                child: SizedBox(
                  width: 740,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Divisor(
                          name: 'cadastro_exame.Divisor.Parametros'.tr,
                          color: Colors.black),
                      SizedBox(
                          child: Input(
                            labelText: 'UO',
                          ),
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Expanded(
                            child: Input(
                              labelText: 'cadastro_exame.Input.Relatórios'.tr,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Input(
                              labelText: 'cadastro_exame.Input.Tipo'.tr,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Expanded(
                            child: Input(
                              labelText: 'cadastro_exame.Input.Período de'.tr,
                            ),
                          ),
                          SizedBox(width: 19,),
                          Expanded(
                            child: Input(
                              labelText: 'cadastro_exame.Input.Período até'.tr,
                            ),
                          ),
                          SizedBox(width: 19,),
                          SizedBox( width: 234,
                            child: Input(
                              labelText: 'cadastro_exame.Input.Status'.tr,
                            ),),
                        ],
                      ),
                      SizedBox(height: 60,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: (){},
                            child: Text('cadastro_exame.ElevatedButton.Executar'.tr),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(width: 20,),
                          ElevatedButton(
                            onPressed: (){},
                            child: Text('cadastro_exame.ElevatedButton.Limpar'.tr),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black26,
                                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(width: 20,),ElevatedButton(
                            onPressed: (){},
                            child: Text('cadastro_exame.ElevatedButton.Execuções'.tr),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ),
        ),);
  }
}
