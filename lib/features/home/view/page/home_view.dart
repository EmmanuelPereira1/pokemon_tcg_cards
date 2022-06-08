import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/home/view/controller/controller_home_page.dart';

class ViewHomePage extends StatelessWidget {
  final _controller = Modular.get<ControllerHomePage>();
  ViewHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ListView.builder(
            itemBuilder: ((context, i) {
              return Card(
                child: ListTile(
                  onTap: () {},
                  title: Observer(builder: (_) {
                    return Text(
                      _controller.name.toString(),
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    );
                  }),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
