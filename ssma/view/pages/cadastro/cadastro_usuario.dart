import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:soma/ssma/view/uteis/cabecalho.dart';

import '../../uteis/divisor.dart';
import '../../uteis/input.dart';
class CadastroUsuario extends StatefulWidget {
  const CadastroUsuario({Key? key}) : super(key: key);

  @override
  State<CadastroUsuario> createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {

  bool administrador = false;
  bool autenticarUsuarioESenhaPelaRede = false;
  bool bloquearUsuario = false;
  bool trocarSenhaNoPrimeiroAcesso = false;

  @override
  Widget build(BuildContext context) {

    final widthTela = MediaQuery.of(context).size.width;

    return Cabecalho(
      drawer: false,
      page: 'cadastro_usuario.Cabecalho.Cadastro usuario'.tr,
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 740,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Divisor(
                    name: 'cadastro_usuario.Divisor.Dados Login'.tr,
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Input(
                          labelText: 'cadastro_usuario.Input.Usuario'.tr,
                        ),
                      ),
                      SizedBox(width: widthTela * 0.014,),
                      Expanded(
                        flex: 5,
                        child: Input(
                          labelText: 'cadastro_usuario.Input.ID Integrante'.tr,
                          mouseCursor: SystemMouseCursors.noDrop,
                          enabled: false,
                        ),
                      ),
                      SizedBox(width: widthTela * 0.015,),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.search),
                        splashColor: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Expanded(
                        child: Input(
                          labelText: 'cadastro_usuario.Input.E-mail'.tr,
                          enabled: false,
                          mouseCursor: SystemMouseCursors.noDrop,
                        ),
                      ),
                      SizedBox(width: widthTela * 0.015,),
                      Expanded(
                        child: Input(
                          labelText: 'cadastro_usuario.Input.Nome'.tr,
                          mouseCursor: SystemMouseCursors.noDrop,
                          enabled: false,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text('cadastro_usuario.Switch.Bloquear Usuario'.tr,style: TextStyle(fontWeight: FontWeight.bold)),
                          Switch(
                            activeColor: Theme.of(context).colorScheme.secondary,
                            value: bloquearUsuario,
                            onChanged: (checked){
                              setState(() {
                                bloquearUsuario = !bloquearUsuario;
                              });
                            },),
                        ],
                      ),
                    ],
                  ),
                  Divisor(
                    name: 'cadastro_usuario.Divisor.Senha Acesso'.tr,
                    color: Colors.black,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Switch(
                            activeColor: Theme.of(context).colorScheme.secondary,
                            value: autenticarUsuarioESenhaPelaRede,
                            onChanged: (checked){
                              setState(() {
                                autenticarUsuarioESenhaPelaRede = !autenticarUsuarioESenhaPelaRede;
                              });
                            },
                          ),
                          Text('cadastro_usuario.Switch.Autenticar usuario e senha pela rede'.tr
                              ,style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      if(autenticarUsuarioESenhaPelaRede)
                         widthTela > 600 ? Row(
                            children: [
                              Switch(
                                activeColor: Theme.of(context).colorScheme.secondary,
                                value: trocarSenhaNoPrimeiroAcesso,
                                onChanged: (checked){
                                  setState(() {
                                    trocarSenhaNoPrimeiroAcesso = !trocarSenhaNoPrimeiroAcesso;
                                  });
                                },
                              ),
                              Text('cadastro_usuario.Switch.Trocar senha no primeiro acesso'.tr,style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ) : Expanded(
                            child: Column(
                             children: [
                               Switch(
                                 activeColor: Theme.of(context).colorScheme.secondary,
                                 value: trocarSenhaNoPrimeiroAcesso,
                                 onChanged: (checked){
                                   setState(() {
                                     trocarSenhaNoPrimeiroAcesso = !trocarSenhaNoPrimeiroAcesso;
                                   });
                                 },
                               ),
                               Text('cadastro_usuario.Switch.Trocar senha no primeiro acesso'.tr,style: TextStyle(fontWeight: FontWeight.bold)),
                             ],
                         ),
                          )
                    ],
                  ),
                  autenticarUsuarioESenhaPelaRede?
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Input(
                                  labelText: 'cadastro_usuario.Input.Senha'.tr,
                                  obscureText: true,
                                ),
                              ),
                              SizedBox(width: widthTela * 0.015,),
                              Expanded(
                                child: Input(labelText: 'cadastro_usuario.Input.Data Expiracao'.tr,),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(children: [
                            Expanded(
                              child: Input(
                                labelText: 'cadastro_usuario.Input.Confirmar Senha'.tr,
                                obscureText: true,
                              ),
                            ),
                            SizedBox(width: widthTela * 0.015,),
                            Expanded(child: SizedBox()),
                          ],)
                        ],
                      )
                      :Container(),
                  SizedBox(
                    height: 15,
                  ),
                  Divisor(
                    name: 'cadastro_usuario.Divisor.Tipo de Acesso'.tr,
                    color: Colors.black,),
                  Row(children: [
                    Expanded(
                      child: Input(
                        labelText: 'cadastro_usuario.Input.Grupo de Permissão'.tr,
                      ),
                    ),
                    SizedBox(width: widthTela * 0.015,),
                    Expanded(
                      child: Input(
                        labelText: 'cadastro_usuario.Input.Grupo de Acesso'.tr,
                      ),
                    ),
                  ],),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Row(
                        children: [
                          Switch(
                            activeColor: Theme.of(context).colorScheme.secondary,
                            value: administrador,
                            onChanged: (checked){
                              setState(() {
                                administrador = !administrador;
                              });
                            },
                          ),
                          Text('cadastro_usuario.Switch.Administrador'.tr,
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: (){},
                        child: Text('cadastro_usuario.ElevatedButton.Cancelar'.tr),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(width: 15,),
                      ElevatedButton(
                        onPressed: (){},
                        child: Text('cadastro_usuario.ElevatedButton.Salvar'.tr),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        )
      ),);
  }
}
