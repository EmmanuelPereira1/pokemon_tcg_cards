import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/data/data_source/graphic_pokemon_data_source.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/data/repository/graphic_pokemon_repository.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/domain/use_cases/graphic_use_case.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/view/controller/controller_graphic.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/view/pages/view_graphic.dart';

class GraphicModule extends Module {
  @override
  List<Bind> get binds => [

    Bind<AbstractGraphicDataSource>((i) => GraphicDataSource()),
    Bind<AbstractGraphicRepository>((i) => GraphicRepository()),
    Bind<AbstractGraphicUseCase>((i) => GraphicUseCase()),
    Bind<ControllerGraphic>((i) => ControllerGraphic()),
  ];

  @override 
List<ModularRoute> get routes => [
  ChildRoute(Modular.initialRoute, child: (context, args) => ViewGraphic())
];
}