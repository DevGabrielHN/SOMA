import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soma/ssma/view/pages/navigation_drawer.dart';

class Cabecalho extends StatefulWidget {

  const Cabecalho({Key? key, required this.page, required this.body, required this.drawer}) : super(key: key);

  final String page;
  final Container body;
  final bool drawer;

  @override
  State<Cabecalho> createState() => _CabecalhoState();
}

class _CabecalhoState extends State<Cabecalho> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final widthTela = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: widget.drawer?const NavigationDrawer():null,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widthTela > 375?
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('SOMA  |  ' + widget.page + ' ',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('v2022.10.14.1',style: TextStyle(color: Colors.grey,fontSize: 9),),
              ],
            )
            : Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('SOMA  |  ' + widget.page + ' ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                Text('v2022.10.14.1',style: TextStyle(color: Colors.grey,fontSize: 7),),
              ],
            ),
            Row(
              children: [
                widthTela > 420?
                SizedBox(
                  width: 30,
                  height: 15,
                  child: Image(
                    image: AssetImage('cabecalho.Image.resorces/brasil.jpg'.tr),
                  ),
                ) : Container(),
                widthTela > 400?
                Text('  '+ 'cabecalho.Row.pt_BR'.tr,style: TextStyle(fontSize: 12),)
                : Container(),

                PopupMenuButton(
                  tooltip: 'cabecalho.PopupMenuButton.Idioma'.tr,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Icon(Icons.language_outlined),
                  ),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("Portugues"),
                      value: 1,
                      onTap: () {
                        var locale = Locale('pt','BR');
                        Get.updateLocale(locale);
                      }
                    ),
                    PopupMenuItem(
                      child: Text("English"),
                      value: 2,
                      onTap: ()  {

                        var locale = Locale('en','US');
                        Get.updateLocale(locale);

                      }
                    ),
                    PopupMenuItem(
                        child: Text("Español"),
                        value: 3,
                        onTap: () {
                          var locale = Locale('es','ES');
                          Get.updateLocale(locale);
                        } ),
                  ]),
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: widget.body,
    );
  }
}
