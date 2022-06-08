import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/features/home/view/controller/controller_home_page.dart';

import '../../../../core/resources/ColorsApp.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_drawer.dart';

class ViewHomePage extends StatefulWidget {
  ViewHomePage({Key? key}) : super(key: key);

  @override
  State<ViewHomePage> createState() => _ViewHomePageState();
}

class _ViewHomePageState extends State<ViewHomePage> {
  final _controller = Modular.get<ControllerHomePage>();

  @override
  void initState() {
    super.initState();
    _controller.listCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.appGreyBackground,
      drawer: CustomDrawer(),
      appBar: CustomAppBar(),
      body: Container(
        child: Stack(
          children: [
            ListView.builder(
              itemBuilder: ((context, i) {
                return Card(
                  child: ListTile(
                    onTap: () {},
                    title: Observer(builder: (_) {
                      return Text(
                        _controller.loading.data![i].name.toString(),
                        style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        textAlign: TextAlign.center,
                      );
                    }),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
