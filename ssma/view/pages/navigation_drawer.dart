import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soma/ssma/view/pages/drawer_item.dart';
import 'package:soma/ssma/view/pages/usuario/usuario.dart';
import 'package:soma/ssma/view/uteis/cabecalho.dart';



class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Material(
          color: Theme.of(context).colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10, 20.0,0),
            child:  Column(
              children: [
                const SizedBox(height: 10,),
                const ItemUsuario(),
                const SizedBox(height: 35,),

                const SearchField(),

                const SizedBox(height: 10,),
                DivisorNav(name: 'navigation_drawer.DivisorNav.Principal'.tr),
                DrawerItem(
                  name: 'navigation_drawer.DrawerItem.Home'.tr,
                  icon: Icons.home,
                  onPressed: () => Navigator.of(context).pushNamed('/'),
                ),
                const SizedBox(height: 15,),
                DivisorNav(name: 'navigation_drawer.DivisorNav.Cadastro Saúde Ocupacional'.tr),
                DrawerItem(
                    name: 'navigation_drawer.DrawerItem.Órgão de classe'.tr,
                    icon: Icons.arrow_right_alt,
                    onPressed: () => Navigator.of(context).pushNamed('/orgaoDeClasse')),
                DrawerItem(
                    name: 'CID 10',
                    icon: Icons.arrow_right_alt,
                    onPressed: () => Navigator.of(context).pushNamed('/cid10')),
                DrawerItem(
                    name: 'navigation_drawer.DrawerItem.Exames'.tr,
                    icon: Icons.arrow_right_alt,
                    onPressed: () => Navigator.of(context).pushNamed('/exames')),
                DivisorNav(name: 'navigation_drawer.DivisorNav.Seguranca de Acesso'.tr),
                DrawerItem(
                  name: 'navigation_drawer.DrawerItem.Usuario'.tr,
                  icon: Icons.arrow_right_alt,
                  onPressed: () => Navigator.of(context).pushNamed('/usuario'),
                ),
                DrawerItem(
                  name: 'navigation_drawer.DrawerItem.Tipo'.tr,
                  icon: Icons.arrow_right_alt,
                  onPressed: () => Navigator.of(context).pushNamed('/type'),
                ),
                const SizedBox(height: 15,),
                DivisorNav(name: 'navigation_drawer.DivisorNav.Relatórios'.tr),
                const SizedBox(height: 100,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}






class ItemUsuario extends StatelessWidget {
  const ItemUsuario({Key? key}) : super(key: key);

    editModal(BuildContext context) {
      return showCupertinoModalPopup<void>(
        context: context,
        builder: (context) {
          return Center(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
              ),
              height: MediaQuery.of(context).size.height * 0.85,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Column(
                children: [
                  Center(child: Text('Edit'),)
                ],
              )
            ),
          );
        },
      );
    }




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/101647753?v=4'),),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 30,),
                    Tooltip(
                      message: 'navigation_drawer.ItemUsuario.Tooltip.editar'.tr,
                      child: IconButton(
                        splashColor: Theme.of(context).colorScheme.secondary,
                        color: Colors.white,
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          editModal(context);
                        },
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Tooltip(
                      message: 'navigation_drawer.ItemUsuario.Tooltip.configurações'.tr,
                      child: IconButton(
                        splashColor: Theme.of(context).colorScheme.secondary,
                        color: Colors.white,
                        icon: const Icon(Icons.settings),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/configuracao');
                        },
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Tooltip(
                      message: 'navigation_drawer.ItemUsuario.Tooltip.sair'.tr,
                      child: IconButton(
                        splashColor: Theme.of(context).colorScheme.secondary,
                        color: Colors.white,
                        onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Alerta'),
                            content: const Text('Você deseja sair?'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.of(context).pushNamed('/login'),
                                child: const Text('Sim'),
                              ),
                            ],
                          ),
                        ),
                        icon: const Icon(Icons.login),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Column(
                  children: [
                    const Text('Gabriel Henrique Nascimento',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 3,),
                    const Text('gabrielhnasc@outlook.com',style: const TextStyle(color: Colors.grey,fontSize: 12)),
                  ],
                ),
              ],
            ),
          ],
        ),

      ],
    );
  }
}


class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.white;
    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'navigation_drawer.SearchField.TextField.Buscar'.tr,
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );;
  }
}






class DivisorNav extends StatelessWidget {

  const DivisorNav({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(height: 50,),
        Text(name,style: const TextStyle(color: Colors.white70,fontSize: 12)),
      ],
    );
  }
}
